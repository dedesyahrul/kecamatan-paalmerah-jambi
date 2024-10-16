<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LayananDukcapil;
use App\DukcapilLayanan;
use App\PatenLayanan;
use App\LayananPaten;
use App\StandarPelayanan;
use App\AlurPelayanan;
use App\AlurPengaduan;

class LayananController extends Controller
{
    public function indexDukcapil($slug)
    {
        // Cari TupoksiPkk berdasarkan slug
        $layananDukcapil = LayananDukcapil::where('slug', $slug)->firstOrFail();

        
        $dukcapils = DukcapilLayanan::where('layanan_dukcapil_id', $layananDukcapil->id)->get();

        return view('frontend.layanan.dukcapil', compact('layananDukcapil', 'dukcapils'));
    }

    public function indexPaten($slug)
    {
        $layananPaten = LayananPaten::where('slug', $slug)->firstOrFail();

        $patens = PatenLayanan::where('layanan_paten_id', $layananPaten->id)->get();

        return view('frontend.layanan.paten', compact('layananPaten', 'patens'));
    }

    public function indexStandarPelayanan()
    {
        $standarPelayanans = StandarPelayanan::all();
        return view('frontend.layanan.standar-pelayanan', compact('standarPelayanans'));
    }

    public function indexAlurPelayanan()
    {
        $alurPelayanans = AlurPelayanan::all();
        return view('frontend.layanan.alur-pelayanan', compact('alurPelayanans'));
    }

    public function indexAlurPengaduan()
    {
        $alurPengaduans = AlurPengaduan::all();
        return view('frontend.layanan.alur-pengaduan', compact('alurPengaduans'));
    }
}
