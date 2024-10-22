<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Berita extends Model
{
    protected $table = 'beritas';

    protected $fillable = [
        // ... daftar kolom yang bisa diisi secara massal
        'token',
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($berita) {
            $berita->token = Str::random(32);
        });
    }

    public function kategori()
    {
        return $this->belongsTo(KategoriBerita::class, 'kategori_id');
    }

    public function tambahDibaca()
    {
        $this->dibaca++;
        $this->save();
    }

    public function getTokenAttribute($value)
    {
        if (!$value) {
            $this->token = Str::random(32);
            $this->save();
        }
        return $this->attributes['token'];
    }

    public function refreshToken()
    {
        $this->token = Str::random(32);
        $this->save();
        return $this->token;
    }
}
