<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotifikasisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notifikasis', function (Blueprint $table) {
            // $table->id();

            $table->bigIncrements('id');

            $table->string('nama_notifikasi')->nullable();

            $table->longText('deskripsi')->nullable();

            $table->string('pengirim')->nullable();

            $table->date('tanggal_kirim')->nullable();

            $table->string('jenis_notifikasi')->nullable();


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
        Schema::dropIfExists('notifikasis');
    }
}
