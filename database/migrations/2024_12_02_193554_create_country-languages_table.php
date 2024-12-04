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
        Schema::create('country-languages', function (Blueprint $table) {
            $table->id();

            $table->id();
            $table->unsignedBiginteger('country_id')->unsigned();
            $table->unsignedBiginteger('language_id')->unsigned();
            $table->float('pourcentage');

            $table->foreign('country_id')->references('id')
                 ->on('countries')->onDelete('cascade');
            $table->foreign('languages_id')->references('id')
                ->on('languages')->onDelete('cascade');

            $table->timestamps();

            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('country-languages');
    }
};
