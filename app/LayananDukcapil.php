<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LayananDukcapil extends Model
{
    use HasFactory;

    protected $fillable = ['slug', 'nama'];
    
    public static function findBySlug($slug)
    {
        return self::where('slug', $slug)->firstOrFail();
    }
    
}
