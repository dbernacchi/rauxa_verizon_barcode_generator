<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class ProcessFiles implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

	public $client_name;
	public $vendor;
	public $market;
	public $action;
	public $group_id;
	public $barcode_id;
	public $total;
	public $split_num;

	public $tries = 3;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($client_name, $vendor, $market, $action, $group_id, $barcode_id, $total, $split_num)
    {
	    $this->client_name = $client_name;
        $this->vendor = $vendor;
        $this->market = $market;
        $this->action = $action;
        $this->group_id = $group_id;
        $this->barcode_id = $barcode_id;
        $this->total = $total;
        $this->split_num = $split_num;
         Log::error('In Constuct');
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {

	    ignore_user_abort(true);
		set_time_limit(0);
		ini_set('memory_limit','-1');

	   // Log::error('Test'.$this->vendor);

	    $list['client_name'] 	= $this->client_name;
	    $list['vendor'] 	= $this->vendor;
        $list['market'] 	= $this->market;;
        $list['action'] 	= $this->action;
        $list['group_id'] 	= $this->group_id;
        $list['barcode_id'] = $this->barcode_id;
        $list['total'] 		= $this->total;
        $list['split_num'] 	= $this->split_num;

        $vendor = $this->vendor;
		$vendorUPPER = strtoupper($vendor);

		$arealen = strlen(trim($list['market']));

		if($arealen > 2){

			$phrase = explode(' ', $list['market']);

			if(count($phrase) < 2){

				$area = strtoupper( substr($phrase[0], 0, 2) );

			}else{

				$temp1 = strtoupper( substr($phrase[0], 0, 1) );
				$temp2 = strtoupper( substr($phrase[1], 0, 1) );

				$area = $temp1.$temp2;

			}

		}else{

			$area = strtoupper($area);
		}

		switch($this->action){
			case 'Append' :

				$action = 'A';
				break;

			case 'Replace' :

				$action = 'S';
				break;

			default :

				$action = 'A';
		}


		$groupID = $this->group_id;
		$grouplen = strlen(trim($groupID));

		$barcodeID = $this->barcode_id;
		$barcodelen = strlen(trim($barcodeID));

		$total = $this->total;
		$totallen = strlen(trim($total));

	    $list['gid'] = $grouplen;
	    $list['bid'] = $barcodelen;

	    $split = (!empty($this->split_num) ? $this->split_num : $total+1);



	    // First look to see if there are already numbers that have been
	    // generated by the grouping of the GroupID and BarcodeID.
		$get_last_num_gen = DB::table('rxa_lists')
			->select('last_num')
			->where([
			    ['group_id', '=', $groupID],
			    ['barcode_id', '=', $barcodeID],
			])
			->orderBy('datetime', 'desc')
		    ->get();

		//Log::error('DB:'.$get_last_num_gen);

		// Set $start variable
		// If nothing exists in DB then start process at 0

		$start = (!empty($get_last_num_gen[0]) ? $get_last_num_gen[0]->last_num+1 : 1);

		//Log::error('Start:'.$start);

		$i = 1;
		$max_total = $total;
		$max_output = $total;

		$digits = $totallen;
	    //$flip = FALSE;


	    $output = collect([]);

	    while($i <= $max_output){

		    $str_temp = $start;

		    $temp = str_pad($str_temp, $digits, '0', STR_PAD_LEFT);

		    $output->push($vendor.'~'.$area.'~'.$action.'~'.$groupID.'~'.$barcodeID.$temp);
		    $output->all();

			$start++;

		    $i++;
	    }


	    // adjust for 0 based array key
	    $last_num_gen = $start-1;


		// Set Array Key's before it is shuffled to pull values for filename later.
	    $key_to_start = 0;
		$key_to_half = $split-1;
		$key_to_end = $max_total-1;



		// Set file names

		$filename1 = $vendor.'_'.date('Ymd_Hi');
		$filename3 = $groupID.'_'.$barcodeID.'_'.$total.'_'.$vendor.'_'.date('Ymd_Hi');

		if($split < ($total + 1)){
			$filename5 = $groupID.'_'.$barcodeID.'_'.substr($output[$key_to_start], '-'.$digits).'_'.substr($output[$key_to_half], '-'.$digits).'_'.$total.'_'.$vendor.'_'.date('Ymd_Hi');
			$filename6 = $groupID.'_'.$barcodeID.'_'.substr($output[$key_to_half+1], '-'.$digits).'_'.substr($output[$key_to_end], '-'.$digits).'_'.$total.'_'.$vendor.'_'.date('Ymd_Hi');
		}


		// Shuffle the array
		$shuffled = $output->shuffle();
		$shuffled->all();

		// Set code length variable
		$code_str_len = ($digits+$barcodelen);

		$codeTemp = '';
		$csvTemp = '';
		$splitTemp = '';
		$splitTemp2 = '';
		$splitfile = 1;

		foreach($shuffled as $line)
		{
			// Lines with linebreak
		    $codeTemp .= $line."\n";

		    // Lines with line break and comma sperated
		    $csvTemp .= $line.", \n";

		    if($splitfile < $split){

			    // Line with code length
			    $splitTemp .= substr($line, '-'.$code_str_len)."\n";

		    }else{
			    // Line with code l;ength
			    $splitTemp2 .= substr($line, '-'.$code_str_len)."\n";
		    }

		    $splitfile++;
		}

		$directory =date('Y').'/'.date('m').'/'.date('d').'/';


	    // Build files.
	    $codeFile1 = Storage::disk('local')->put('public/'.$directory.$filename1.'.UNL', $codeTemp);
	    $codeFile2 = Storage::disk('local')->put('public/'.$directory.$filename1.'.txt', $codeTemp);
	    $codeFile3 = Storage::disk('local')->put('public/'.$directory.$filename3.'.txt', $splitTemp);
	    $codeFile4 = Storage::disk('local')->put('public/'.$directory.$filename3.'.csv', $csvTemp);

	    if($split < ($total + 1)){
		    $codeFile5 = Storage::disk('local')->put('public/'.$directory.$filename5.'.txt', $splitTemp);
				$codeFile6 = Storage::disk('local')->put('public/'.$directory.$filename6.'.txt', $splitTemp2);
			}


		unset($list['_token']);

		// Set the DB

		$list['last_num'] = $last_num_gen;
		$list['file_init'] = $filename1;

		//Log::info($list);

		$newID = DB::table('rxa_lists')->insertGetId(
		    $list
		);


		if($split < ($total + 1)){

			DB::table('rxa_files')->insert([
			    ['idlist' => $newID, 'filename' => $directory.$filename1.'.UNL'],
			     ['idlist' => $newID, 'filename' => $directory.$filename1.'.txt'],
			     ['idlist' => $newID, 'filename' => $directory.$filename3.'.txt'],
			     ['idlist' => $newID, 'filename' => $directory.$filename3.'.csv'],
			     ['idlist' => $newID, 'filename' => $directory.$filename5.'.txt'],
			     ['idlist' => $newID, 'filename' => $directory.$filename6.'.txt']
			]);


		}else{

			DB::table('rxa_files')->insert([
			    ['idlist' => $newID, 'filename' => $directory.$filename1.'.UNL'],
			     ['idlist' => $newID, 'filename' => $directory.$filename1.'.txt'],
			     ['idlist' => $newID, 'filename' => $directory.$filename3.'.txt'],
			     ['idlist' => $newID, 'filename' => $directory.$filename3.'.csv'],
			]);

		}


    }
}
