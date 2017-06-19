<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddActionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
	    if (!Schema::hasTable('rxa_actions')) {
		    
	        Schema::create('rxa_actions', function (Blueprint $table) {
	            $table->increments('id');
	            $table->char('name', 45)->nullable();
	        });
	        
	        DB::table('rxa_actions')->insert([
			    ['name' => 'Append'],
			    ['name' => 'Replace'],
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
        Schema::drop('rxa_actions');
    }
}
