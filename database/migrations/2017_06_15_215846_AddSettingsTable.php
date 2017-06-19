<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class AddSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
	    if (!Schema::hasTable('rxa_settings')) {
		    
		    Schema::create('rxa_settings', function (Blueprint $table) {
	            $table->increments('id');
	            $table->string('type')->nullable();
	            $table->string('val')->nullable();
	            $table->timestamp('datetime')->useCurrent();
	        });
	        
	        //Hexed Dedfult passcode "rauxa#1"
	        	        
	        DB::table('rxa_settings')->insert([
			    ['type' => 'passcode', 
			    'val' => '$2y$10$bleA659S8VIhk.0ODWiq8.xmS53hU0/wHfvJnQP2VXYEitEcztnOi'],
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
        Schema::drop('rxa_settings');
    }
}
