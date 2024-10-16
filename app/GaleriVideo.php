<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GaleriVideo extends Model
{
    protected $table = 'galeri_videos';
    protected $fillable = [
        'judul',
        'youtube_link',
        'keterangan',
    ];
}