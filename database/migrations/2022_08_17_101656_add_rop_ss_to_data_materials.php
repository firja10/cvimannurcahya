<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRopSsToDataMaterials extends Migration
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

            $table->integer('d_ss')->nullable();

            $table->integer('L')->nullable();

            $table->integer('Z')->nullable();

            $table->integer('SS')->nullable();

            $table->integer('d_rop')->nullable();

            $table->integer('ROP')->nullable();


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

            
        });
    }
}
