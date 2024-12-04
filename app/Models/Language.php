<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Language extends Model
{
    
    use HasFactory;

    public function pays(): BelongsToMany
    {
        return $this->belongsToMany(Country::class)->withPivot( 'pourcentage');
    }
}


