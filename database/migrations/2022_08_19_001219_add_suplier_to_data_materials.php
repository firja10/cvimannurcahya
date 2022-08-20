<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSuplierToDataMaterials extends Migration
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

            $table->string('suplier')->nullable()->after('harga_beli');


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

            $table->dropColumn(['suplier']);
        });
    }
}

