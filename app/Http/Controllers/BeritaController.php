<?php

namespace App\Http\Controllers;
use App\Berita;
use App\BannerStanding;
use App\KategoriBerita;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Http\Request;

class BeritaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($kategori_id)
    {
        // $beritas = Berita::where('kategori_id', $kategori_id)->paginate(6);
        $beritas = Berita::where('kategori_id', $kategori_id)
                ->orderBy('created_at', 'desc')
                ->paginate(6);

        $detailAplikasi = DetailAplikasi::first();

        return view('frontend.berita.berita',
         compact('beritas','detailAplikasi'));
    }
    public function allBerita()
    {
        $beritas = Berita::paginate(6);
        // $beritas = Berita::orderBy('created_at', 'desc')->paginate(6);
        $detailAplikasi = DetailAplikasi::first();

        return view('frontend.berita.all-berita',
         compact('beritas','detailAplikasi'));
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
    public function show($id)
    {
        $berita = Berita::find($id);
        $beritas = Berita::all(); // Mengambil semua berita untuk slider
        $banner_standings = BannerStanding::all();
        $detailAplikasi = DetailAplikasi::first();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $berita->tambahDibaca();
        return view('frontend.berita.berita-detail',
         compact('berita', 'beritas',
         'banner_standings','fotos','detailAplikasi'));
    }
    // public function show($id)
    // {
    //     $berita = Berita::findOrFail($id);
    //     $perPage = 2;
    //     $beritas = Berita::paginate($perPage);
    //     return view('frontend.berita.berita-detail', compact('berita','beritas'));
    // }

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