<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Pegawai extends Model
{
    protected $fillable = [
        'nama',
        'foto_pegawai',
        'jabatan_id',
        'pangkat',
        'tempat',
        'tanggal_lahir',
        'jk',
        'pendidikan',
        'tahunlulus',
        'keterangan',
    ];

    public function jabatan()
    {
        return $this->belongsTo(Jabatan::class);
    }
}
