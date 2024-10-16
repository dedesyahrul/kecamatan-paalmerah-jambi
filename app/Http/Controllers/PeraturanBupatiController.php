<?php

namespace App\Http\Controllers;
use App\Peraturanbupati;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class PeraturanBupatiController extends Controller
{
    public function index()
    {
        $peraturan_bupatis = Peraturanbupati::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.peraturan-bupati.peraturan-bupati',
        ['peraturan_bupatis' => $peraturan_bupatis,
    'banner_standings' => $banner_standings, 'fotos' => $fotos,
    'detailAplikasi' => $detailAplikasi]);
    }
    public function showDetail($id)
    {
        $peraturan_bupatis = Peraturanbupati::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.peraturan-bupati.detail-peraturan-bupati',
        ['peraturan_bupati' => $peraturan_bupatis,
        'banner_standings' => $banner_standings, 'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi]);
    }
    public function downloadFile($id, $fileName)
    {
        $peraturan_bupati = PeraturanBupati::findOrFail($id);
        $file = collect(json_decode($peraturan_bupati->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $peraturan_bupati->didownload += 1;
            $peraturan_bupati->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }

}