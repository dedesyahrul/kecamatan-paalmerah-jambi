<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use App\SuratEdaran;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;

use Illuminate\Http\Request;

class SuratEdaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $surat_edarans = SuratEdaran::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.surat-edaran.surat-edaran',
        ['surat_edarans' => $surat_edarans,'banner_standings' => $banner_standings,
        'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi
    ]);
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
    public function showDetail($id)
    {
        $surat_edarans = SuratEdaran::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.surat-edaran.detail-surat-edaran',
         ['surat_edaran' => $surat_edarans,
         'banner_standings' => $banner_standings,
         'fotos' => $fotos,
         'detailAplikasi' => $detailAplikasi
        ]);
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
    public function downloadFile($id, $fileName)
    {
        $surat_edarans = SuratEdaran::findOrFail($id);
        $file = collect(json_decode($surat_edarans->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $surat_edarans->didownload += 1;
            $surat_edarans->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }
}