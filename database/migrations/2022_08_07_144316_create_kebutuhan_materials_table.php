<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKebutuhanMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kebutuhan_materials', function (Blueprint $table) {
            // $table->id();

            $table->bigIncrements('id');
            $table->string('komponen')->nullable();
            $table->string('nama')->nullable();
            $table->string('jenis')->nullable();
            $table->string('satuan')->nullable();
            $table->integer('jumlah')->nullable();

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
        Schema::dropIfExists('kebutuhan_materials');
    }
}
