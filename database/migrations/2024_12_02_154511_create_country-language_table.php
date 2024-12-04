<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('country-language', function (Blueprint $table) {
            $table->id();
            $table->unsignedBiginteger('country_id')->unsigned();
            $table->unsignedBiginteger('language_id')->unsigned();
            $table->float('pourcentage');

            $table->foreign('country_id')->references('id')
                 ->on('countries')->onDelete('cascade');
            $table->foreign('language_id')->references('id')
                ->on('language')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('country-language');
    }
};
