<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBinhluanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('binhluan', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('id_nguoidung')->unsigned()->index();
            $table->foreign('id_nguoidung')->references('id_nguoidung')->on('nguoidung')->onDelete('cascade');
            $table->bigInteger('id_sp')->unsigned()->index();
            $table->foreign('id_sp')->references('id_sp')->on('sanpham')->onDelete('cascade');
            $table->text('noidung');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('binhluan');
    }
}
