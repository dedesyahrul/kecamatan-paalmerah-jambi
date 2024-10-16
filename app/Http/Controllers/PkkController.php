<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProfilPkk;
use App\SejarahPkk;
use App\VisiMisiPkk;
use App\PaudPkk;
use App\KegiatanPkk;
use App\PrestasiPkk;
use App\DataPokjanal;
use App\StrukturPokjanal;
use App\TupoksiPkk;
use App\PokjaTupoksiPkk;

class PkkController extends Controller
{
    public function indexProfilPkk()
    {
        $profilPkk = ProfilPkk::all();
        return view('frontend.pkk.profil-pkk', compact('profilPkk'));
    }

    public function indexSejarahPkk()
    {
        $sejarahPkk = SejarahPkk::all();
        return view('frontend.pkk.sejarah-pkk', compact('sejarahPkk'));
    }

    public function indexVisimisiPkk()
    {
        $visimisiPkk = VisiMisiPkk::all();
        return view('frontend.pkk.visimisi-pkk', compact('visimisiPkk'));
    }

    public function indexPaudPkk()
    {
        $paudPkk = PaudPkk::all();
        return view('frontend.pkk.paud-pkk', compact('paudPkk'));
    }

    public function indexKegiatanPkk()
    {
        $kegiatanPkk = KegiatanPkk::all();
        return view('frontend.pkk.kegiatan-pkk', compact('kegiatanPkk'));
    }

    public function indexPrestasiPkk()
    {
        $prestasiPkk = PrestasiPkk::all();
        return view('frontend.pkk.prestasi-pkk', compact('prestasiPkk'));
    }

    public function indexDataPokjanal()
    {
        $dataPokjanal = DataPokjanal::all();
        return view('frontend.pkk.data-pokjanal', compact('dataPokjanal'));
    }

    public function indexStrukturPokjanal()
    {
        $strukturPokjanal = StrukturPokjanal::all();
        return view('frontend.pkk.struktur-pokjanal', compact('strukturPokjanal'));
    }


    public function indexPokja($slug)
    {
        // Cari TupoksiPkk berdasarkan slug
        $tupoksiPkk = TupoksiPkk::where('slug', $slug)->firstOrFail();

    // Ambil daftar pokjas berdasarkan tupoksi_pkk_id dari TupoksiPkk yang ditemukan
    $pokjas = PokjaTupoksiPkk::where('tupoksi_pkk_id', $tupoksiPkk->id)->get();

        return view('frontend.pkk.pokja', compact('tupoksiPkk', 'pokjas'));
    }

}
