<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
	    if (!Schema::hasTable('rxa_lists')) {
		    
	        Schema::create('rxa_lists', function (Blueprint $table) {
	            $table->increments('id');
	            $table->char('client_name', 50)->nullable();
	            $table->char('market', 50)->nullable();
	            $table->char('vendor', 50)->nullable();
	            $table->char('action', 25)->nullable();
	            $table->char('group_id', 20)->nullable();
	            $table->char('barcode_id', 20)->nullable();
	            $table->char('split_num', 12)->nullable();
	            $table->char('total', 12)->nullable();
	            $table->char('gid', 20)->nullable();
	            $table->char('bid', 20)->nullable();
	            $table->integer('last_num')->default(0);
	            $table->char('file_init', 100)->nullable();
	            $table->timestamp('datetime')->useCurrent();
	        });
		}
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('rxa_lists');
    }
}
