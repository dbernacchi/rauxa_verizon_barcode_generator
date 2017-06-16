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
        Schema::create('rxa_lists', function (Blueprint $table) {
            $table->primary('id');
            $table->char('client_name', 50);
            $table->char('market', 50);
            $table->char('vendor', 50);
            $table->char('action', 25);
            $table->char('group_id', 20);
            $table->char('barcode_id', 20);
            $table->char('split_num', 12);
            $table->char('total', 12);
            $table->char('gid', 20);
            $table->char('bid', 20);
            $table->integer('last_num');
            $table->dateTime('datetime');
        });
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
