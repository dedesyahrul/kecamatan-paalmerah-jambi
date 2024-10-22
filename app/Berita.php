<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Berita extends Model
{
    protected $table = 'beritas';

    protected $fillable = [
        'judul',
        'slug',
        // ... tambahkan kolom lain yang diperlukan
        // Hapus 'token' dari sini jika Anda tidak ingin memungkinkan pengisian massal
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($berita) {
            $berita->token = Str::random(32); // Selalu buat token baru
            $berita->slug = Str::slug($berita->judul); // Selalu buat slug baru
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

    public function refreshToken()
    {
        $this->token = Str::random(32);
        $this->save();
        return $this->token;
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function setJudulAttribute($value)
    {
        $this->attributes['judul'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }
}
