<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMarketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
	    if (!Schema::hasTable('rxa_markets')) {
	        Schema::create('rxa_markets', function (Blueprint $table) {
	            $table->increments('id');
	            $table->char('name', 45)->nullable();
	        });
	        	    
		   DB::table('rxa_markets')->insert([
			    ['name' => 'Great Lakes'],
			    ['name' => 'North Central'],
			    ['name' => 'North East'],
			    ['name' => 'Pacific'],
			    ['name' => 'South Central'],
			    ['name' => 'South East'],
			]);
	    }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('rxa_markets');
    }
}
