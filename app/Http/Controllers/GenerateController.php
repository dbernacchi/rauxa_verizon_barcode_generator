<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class GenerateController extends Controller
{
    public function index(Request $request){
	    
	    
	    
/*
	    if(empty($barcode = $request->input('barcode_id'))){
		    
		    $jsonResponse = (object)[
					'errcode' => true, 
					'msg' => 'Your barcode ID cannot be left empty.'
				];
		    
	    }else{
		    
		    $barcode_exists = DB::select('select * from rxa_lists where barcode_id = "'.$barcode.'"');
		    
		    if(!empty($barcode_exists)){
			    
			    $jsonResponse = (object)[
					'errcode' => true, 
					'msg' => 'Your barcode ID has already been used. Please adjust the barcode ID.'
				];
		    }
	    }
*/

		$list = $request->all();
		
	    if(!empty($list)){
	   	    
		    
		    
		    $vendor = $list['vendor'];
			$vendorUPPER = strtoupper($vendor);
			
			$area = explode(':', $list['market']);
			$area = trim($area[1]);
	
			$action = ($list['action'] === 'Append' ? 'A' : 'S');
			
			$groupID = $list['group_id'];
			$grouplen = strlen(trim($groupID));
			
			$barcodeID = $list['barcode_id'];
			$barcodelen = strlen(trim($barcodeID));
			
			$total = $list['total'];
			$totallen = strlen(trim($total));
		    
		    $list['gid'] = $grouplen;
		    $list['bid'] = $barcodelen;
		    
	/*
		    print_r($barcodeID);
		    exit;
	*/
		    
		    $get_last_num_gen = DB::table('rxa_lists')
		    				->select('last_num')
		    				->where([
							    ['group_id', '=', $groupID],
							    ['barcode_id', '=', $barcodeID],
							])
		    				->orderBy('datetime', 'desc')
		    				->get();
		    
		    $start = (!empty($get_last_num_gen[0]->last_num) ? $get_last_num_gen[0]->last_num+1 : 1);
						
		    set_time_limit(0);
		    
		    //ob_start();
	
		    $ttTestStart = microtime(true);
	
			$i = 1;
			$max_total = $total;
			$max_output = $total;
			
			$digits = $totallen;
		    $flip = FALSE;
		   
		    
		    $output = collect([]);
		    
		    while($i <= $max_output){
			   
			    $str_temp = $start;
			    		    		    
			    $temp = str_pad($str_temp, $digits, '0', STR_PAD_LEFT);
			    
			    $output->push($vendor.'~'.$area.'~'.$action.'~'.$groupID.'~'.$barcodeID.$temp);
			    $output->all();
	
				$start++;
	
			    $i++;
		    }
	    
	    
	    
	     //print_r($output);
	    
		    $last_num_gen = $start-1;
		      
		    $shuffled = $output->shuffle();
	
			$shuffled->all();
			
			
			 
			$code_str_len = ($digits+$barcodelen);
			$key_to_start = 0;
			$key_to_half = abs($max_total/2);
			$key_to_end = abs($max_total-2);
			
			$filename1 = $vendor.'_'.date('Ymd_Hi');
			$filename3 = $groupID.'_'.$barcodeID.'_'.$total.'_'.$vendor.'_'.date('Ymd_Hi');
			$filename5 = $groupID.'_'.$barcodeID.'_'.substr($shuffled[$key_to_start], '-'.$digits).'_'.substr($shuffled[$key_to_half], '-'.$digits).'_'.$total.'_'.$vendor.'_'.date('Ymd_Hi');	
		    $filename6 = $groupID.'_'.$barcodeID.'_'.substr($shuffled[$key_to_half], '-'.$digits).'_'.substr($shuffled[$key_to_end], '-'.$digits).'_'.$total.'_'.$vendor.'_'.date('Ymd_Hi');	
			
			$codeTemp = '';
			$csvTemp = '';
			$splitTemp = '';
			foreach($shuffled as $line)
			{
			    $codeTemp .= $line."\n";
			    $csvTemp .= $line.",";
			    $splitTemp .= substr($line, '-'.$code_str_len);
			}
		    
		    $codeFile1 = Storage::disk('local')->put($filename1.'.UNL', $codeTemp);
		    $codeFile2 = Storage::disk('local')->put($filename1.'.txt', $codeTemp);
		    $codeFile3 = Storage::disk('local')->put($filename3.'.txt', $splitTemp);
		    $codeFile4 = Storage::disk('local')->put($filename3.'.csv', $codeTemp);
		    $codeFile5 = Storage::disk('local')->put($filename5.'.txt', $splitTemp);
		    $codeFile5 = Storage::disk('local')->put($filename6.'.txt', $splitTemp);
	    
			
			unset($list['_token']);
			
			$list['last_num'] = $last_num_gen;
			
			$newID = DB::table('rxa_lists')->insertGetId(
			    $list
			);
			
			DB::table('rxa_files')->insert([
			    ['idlist' => $newID, 'filename' => $filename1.'.UNL'],
			     ['idlist' => $newID, 'filename' => $filename1.'.txt'],
			     ['idlist' => $newID, 'filename' => $filename3.'.txt'],
			     ['idlist' => $newID, 'filename' => $filename3.'.csv'],
			     ['idlist' => $newID, 'filename' => $filename5.'.txt'],
			     ['idlist' => $newID, 'filename' => $filename6.'.txt']
			]);
			
			$newfile_list = DB::table('rxa_files')
		    				->select('filename')
		    				->where('idlist', $newID)
		    				->get();
			
			$jsonResponse = (object)[
				'errcode' => false, 
				'data' => $newfile_list
			];
			
			//return redirect('lists');
			
		}else{
			
			$jsonResponse = (object)[
				'errcode' => true, 
				'msg' => 'You must add items to your list.'
			];
		}
	    
	    
		
	    	   
	    //print_r($shuffled);

	   	//exit;
	    
		if($request->ajax()) {
			return response()->json($jsonResponse);		
		}
	}
	
	public function check_code_size($gid, $bid, $total){
		
		
		$grouplen = strlen(trim($gid));
		$barcodelen = strlen(trim($bid));
		$totallen = strlen(trim($total));
		
		$combo1 = $grouplen+$barcodelen+$totallen;
		
		$get_last = DB::table('rxa_lists')
    				->select('last_num')
    				->where([
					    ['group_id', '=', $gid],
					    ['barcode_id', '=', $bid],
					])
    				->orderBy('datetime', 'desc')
    				->get();
	
		if(!empty($get_last[0]->last_num)){
			
			$start = $get_last[0]->last_num+1;
			$startlen = strlen(trim($start));
			
			$newtotal = $start+$total;
			$newtotallen = strlen(trim($newtotal));
			
			if($combo1 > 20){
			
				$jsonResponse = (object)[
					'errcode' => true, 
					'msg' => 'Generating '.$total.' codes will cause your character count to exceed the 20 character limit. Please adjust your <Group ID> or <Barcode ID> accordingly'
				];
				
			}else{
				
				$jsonResponse = (object)[
					'errcode' => false, 
				];
	
			}
			
		}else{
			
			if($grouplen+$barcodelen+$totallen > 20){
			
				$jsonResponse = (object)[
					'errcode' => true, 
					'msg' => 'The character count of your <Group ID>, <Barcode ID> and <Total Codes> must not exceed 20 characters.'
				];
				
			}else{
				
				$jsonResponse = (object)[
					'errcode' => false, 
				];
	
			}
			
		}
		
		
		return response()->json($jsonResponse);		
		
		
		
	}
	
	
}
