<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLinkToKategoriMaterials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kategori_materials', function (Blueprint $table) {
            //

            $table->string('link_kategori')->nullable()->after('nama_kategori');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('kategori_materials', function (Blueprint $table) {
            //
            $table->dropColumn(['link_kategori']);
        });
    }
}
