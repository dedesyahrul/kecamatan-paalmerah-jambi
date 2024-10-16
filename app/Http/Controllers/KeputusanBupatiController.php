<?php

namespace App\Http\Controllers;
use App\Keputusanbupati;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class KeputusanBupatiController extends Controller
{
    public function index()
    {
        $keputusan_bupatis = Keputusanbupati::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.keputusan-bupati.keputusan-bupati', ['keputusan_bupatis' => $keputusan_bupatis
        ,'banner_standings' => $banner_standings, 'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi]);
    }
    public function showDetail($id)
    {
        $keputusan_bupatis = Keputusanbupati::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.keputusan-bupati.detail-keputusan-bupati', ['keputusan_bupati' => $keputusan_bupatis
        ,'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi]);
    }
    public function downloadFile($id, $fileName)
    {
        $keputusan_bupatis = Keputusanbupati::findOrFail($id);
        $file = collect(json_decode($keputusan_bupatis->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $keputusan_bupatis->didownload += 1;
            $keputusan_bupatis->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }

}