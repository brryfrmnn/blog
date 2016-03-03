<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePost extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post', function (Blueprint $table) {
            //
            $table->increments('id');
            $table->string('title');
            $table->text('content');
            $table->integer('user_id')->unsigned();
            $table->tinyinteger('onDelete');
            $table->timestamps();

            $table->engine = 'InnoDB';
            $table->index('title');
            $table->foreign('user_id')
                  ->references('id')->on('users')
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
        Schema::drop('post');
    }
}
