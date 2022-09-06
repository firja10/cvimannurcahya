<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStokRepairingToKebutuhanMaterials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kebutuhan_materials', function (Blueprint $table) {
            //
            $table->integer('stok_repairing')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('kebutuhan_materials', function (Blueprint $table) {
            //

            $table->dropColumn(['stok_repairing']);

        });
    }
}
