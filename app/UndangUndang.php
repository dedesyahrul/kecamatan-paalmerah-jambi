<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class UndangUndang extends Model
{
    protected $table = 'undang_undangs';
    protected $fillable = [
        'judul', 'keterangan', 'tahun', 'file', 'didownload'
    ];

}