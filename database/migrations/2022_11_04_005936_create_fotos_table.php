<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFotosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fotos', function (Blueprint $table) {
            $table->id();
            $table ->string('nombre',100)->unique();
            $table ->text('descripcion');
            $table ->string('urlfoto',100);
            $table ->foreignId('lugar_id')->constrained();
            $table->timestamps();
            //$table->integer('lugar_id')->references('id')->on('bicicletas')->onDelete('cascade');
            //$table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fotos');
    }
}
