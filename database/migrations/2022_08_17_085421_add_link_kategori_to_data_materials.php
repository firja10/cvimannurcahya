<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLinkKategoriToDataMaterials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('data_materials', function (Blueprint $table) {
            //

            $table->string('link_kategori')->nullable()->after('kategori');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('data_materials', function (Blueprint $table) {
            //


            $table->dropColumn(['link_kategori']);



        });
    }
}
