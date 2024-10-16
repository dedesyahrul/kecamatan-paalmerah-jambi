<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KategoriBerita extends Model
{
    protected $table = 'kategori_beritas';
    public function beritas()
    {
        return $this->hasMany(Berita::class, 'kategori_id');
    }
}
