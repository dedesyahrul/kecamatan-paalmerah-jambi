<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Filedownload extends Model
{
    // public function bidangsmps()
    // {
    //     return $this->belongsToMany(Bidangsmp::class, 'bidangsmp_bidangsds_filedownload')
    //         ->withTimestamps();
    // }
    public function bidangsmps()
    {
        return $this->belongsToMany(Bidangsmp::class, 'bidangsmp_filedownload', 'filedownload_id', 'bidangsmp_id');
    }

    // public function bidangsds()
    // {
    //     return $this->belongsToMany(Bidangsds::class, 'bidangsmp_bidangsds_filedownload')
    //         ->withTimestamps();
    // }
}