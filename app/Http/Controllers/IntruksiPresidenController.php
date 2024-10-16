<?php

namespace App\Http\Controllers;
use App\IntruksiPresiden;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class IntruksiPresidenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $intruksi_presidens = IntruksiPresiden::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.intruksi-presiden.intruksi-presiden',
        ['intruksi_presidens' => $intruksi_presidens,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi]);
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
        $intruksi_presidens = IntruksiPresiden::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.intruksi-presiden.detail-intruksi-presiden',
        ['intruksi_presiden' => $intruksi_presidens,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi]);
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
        $intruksi_presidens = IntruksiPresiden::findOrFail($id);
        $file = collect(json_decode($intruksi_presidens->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $intruksi_presidens->didownload += 1;
            $intruksi_presidens->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }
}