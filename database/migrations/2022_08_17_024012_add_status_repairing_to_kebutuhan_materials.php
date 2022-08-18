<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusRepairingToKebutuhanMaterials extends Migration
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

            $table->integer('status_repairing')->nullable();

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
        
            $table->dropColumn(['status_repairing']);



        });
    }
}
