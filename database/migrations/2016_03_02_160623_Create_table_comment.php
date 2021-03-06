<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableComment extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comment', function (Blueprint $table) {
            //
            $table->increments('id');
            $table->text('comment');
            $table->integer('post_id')->unsigned();
            $table->tinyinteger('onDelete');
            $table->timestamps();

            $table->engine = 'InnoDB';

            $table->foreign('post_id')
                  ->references('id')->on('post')
                  ->onUpdate('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('comment');
    }
}
