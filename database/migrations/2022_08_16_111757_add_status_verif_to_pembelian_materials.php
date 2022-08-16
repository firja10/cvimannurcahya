<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusVerifToPembelianMaterials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pembelian_materials', function (Blueprint $table) {
            //

            $table->integer('status_verif')->after('suplier')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pembelian_materials', function (Blueprint $table) {
            //

            $table->dropColumn(['status_verif']);

        });
    }
}
