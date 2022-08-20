<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTanggalToDataMaterials extends Migration
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

            $table->date('tanggal_masuk')->nullable()->after('suplier');
            $table->date('tanggal_update')->nullable()->after('tanggal_masuk');

            
            
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

            $table->dropColumn(['tanggal_masuk']);
            $table->dropColumn(['tanggal_update']);


        });
    }
}
