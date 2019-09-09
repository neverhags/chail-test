<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableHotels extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_hotels', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('name');
            $table->text('imageUrl');
            $table->text('description');
            $table->text('address');
            $table->text('telephone');
            $table->integer('starts');
            $table->boolean('restaurant');
            $table->boolean('pool');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_hotels');
    }
}
