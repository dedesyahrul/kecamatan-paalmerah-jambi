<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Bidangsmp extends Model
{
    protected $table = 'bidangsmps';
    // public function fileDownload()
    // {
    //     return $this->belongsTo(FileDownload::class, 'filedownload_id');
    // }
    // public function fileDownloads()
    // {
    //     return $this->belongsToMany(FileDownload::class, 'bidangsmp_filedownload', 'bidangsmp_id', 'filedownload_id');
    // }
}