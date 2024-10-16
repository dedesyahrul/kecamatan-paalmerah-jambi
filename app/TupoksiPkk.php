<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class TupoksiPkk extends Model
{
    use HasFactory;

    protected $fillable = ['slug', 'nama']; // Kolom yang bisa diisi
    
    // Method untuk mencari kelurahan berdasarkan slug
    public static function findBySlug($slug)
    {
        return self::where('slug', $slug)->firstOrFail();
    }
    
}
