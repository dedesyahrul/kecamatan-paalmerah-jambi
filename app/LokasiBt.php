<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LokasiBt extends Model
{
    protected $fillable = [
        'judul',
        'tahun',
        'file_upload',
        'keterangan',
    ];
}
