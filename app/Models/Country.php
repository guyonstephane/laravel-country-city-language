<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Country extends Model
{
    use HasFactory;

    public $timestamps = false;

    public function cities()

    {

        return $this->hasMany(City::class);

    }

    public function langues(): BelongsToMany
    {
        return $this->belongsToMany(Language::class)->withPivot( 'pourcentage');
    }
}
