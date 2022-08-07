<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDataMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_materials', function (Blueprint $table) {
            // $table->id();
            $table->bigIncrements('id');
            $table->string('kode')->nullable();
            $table->string('nama')->nullable();
            $table->string('kategori')->nullable();
            $table->string('jenis')->nullable();
            $table->integer('stock')->nullable();
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
        Schema::dropIfExists('data_materials');
    }
}
