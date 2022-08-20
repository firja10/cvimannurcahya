<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTanggalToRepairings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('repairings', function (Blueprint $table) {
            //

            $table->date('tanggal_masuk')->nullable()->after('jumlah');
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
        Schema::table('repairings', function (Blueprint $table) {


            $table->dropColumn(['tanggal_masuk']);
            $table->dropColumn(['tanggal_update']);

            //
        });
    }
}
