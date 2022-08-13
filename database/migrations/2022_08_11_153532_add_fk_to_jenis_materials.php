<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFkToJenisMaterials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('jenis_materials', function (Blueprint $table) {
            //

            $table->unsignedBigInteger('id_kategori')->nullable()->after('nama_kategori');
            $table->foreign('id_kategori')->references('id')->on('kategori_materials')->onUpdate('cascade')->onDelete('cascade');

            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('jenis_materials', function (Blueprint $table) {
            //

            $table->dropForeign('id_kategori');
            $table->dropColumn(['id_kategori']);

        });
    }
}
