<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kritik extends Model
{
    // use HasFactory;
    protected $table = 'kritiks';
    protected $fillable = [
        'tanggal', 'nama', 'alamat', 'kritik_saran', 'pendapat_pelayanan'
    ];

}
