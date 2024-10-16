<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bukutamu extends Model
{
    // use HasFactory;
    protected $fillable = ['nama', 'alamat', 'nohp', 'keperluan', 'foto'];
    protected $primaryKey = 'id';

}
