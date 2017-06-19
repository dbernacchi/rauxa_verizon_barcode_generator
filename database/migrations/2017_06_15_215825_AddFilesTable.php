<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
	    if (!Schema::hasTable('rxa_files')) {
	        Schema::create('rxa_files', function (Blueprint $table) {
	            $table->increments('id');
	            $table->char('filename', 150)->nullable();
	            $table->integer('idlist');
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
        Schema::drop('rxa_files');
    }
}
