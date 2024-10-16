<?php

namespace App\Http\Controllers;
use App\GaleriFoto;
use App\GaleriVideo;
use App\Slider;
use App\Berita;
use App\BannerStanding;
use App\Banner;
use App\DetailAplikasi;
use App\Agenda;

use Illuminate\Http\Request;

class GaleriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function indexFoto()
    {
        // Ambil semua data dari tabel galeri_fotos dengan membatasi 6 data per halaman
        $fotos = GaleriFoto::select('id', 'judul', 'foto', 'keterangan', 'created_at', 'updated_at')
                            ->orderBy('created_at', 'desc')
                            ->paginate(6);
        $detailAplikasi = DetailAplikasi::first();
        // Kirim data ke view 'frontend.galeri.galeri-foto'
        return view('frontend.galeri.galeri-foto', compact('fotos','detailAplikasi'));
    }


    public function indexVideo()
    {
        $videos = GaleriVideo::paginate(6);
        $sliders = Slider::all();
        $beritas = Berita::orderBy('created_at', 'desc')->paginate(3);
        $banner_standings = BannerStanding::all();
        $banners = Banner::orderBy('created_at', 'desc')->get();
        $fotos = GaleriFoto::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.galeri.galeri-video', compact('videos','sliders','beritas','banner_standings','banners','fotos','detailAplikasi'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function showDetailFoto($id)
    {
        $foto = GaleriFoto::findOrFail($id);
        $detailAplikasi = DetailAplikasi::first();
        // $agenda = Agenda::orderBy('created_at', 'desc')->get();
        $agenda = Agenda::orderBy('tanggal', 'desc')->paginate(3);
        // Ubah string foto menjadi array
        $foto->foto = json_decode($foto->foto, true);
        // Periksa apakah $foto->foto adalah array
        if (!is_array($foto->foto)) {
            // Jika bukan array, beri pesan kesalahan atau kembalikan response yang sesuai
            return "Tidak ada foto yang ditemukan atau format foto tidak valid.";
        }
        return view('frontend.galeri.galeri-foto-detail',
         compact('foto','detailAplikasi','agenda'));
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}