<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GaleriFoto extends Model
{
    protected $table = 'galeri_fotos';

    protected $fillable = ['judul', 'foto', 'keterangan'];

    // Accessor untuk menguraikan kolom foto
    // public function getFotoAttribute($value)
    // {
    //     return json_decode($value, true);
    // }
}