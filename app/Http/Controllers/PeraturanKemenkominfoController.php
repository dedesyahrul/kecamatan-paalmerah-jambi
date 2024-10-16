<?php

namespace App\Http\Controllers;
use App\Peraturankementeriankominfo;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class PeraturanKemenkominfoController extends Controller
{
    public function index()
    {
        $peraturan_kemenkominfos = Peraturankementeriankominfo::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.peraturan-kemenkominfo.peraturan-kemenkominfo',
        ['peraturan_kemenkominfos' => $peraturan_kemenkominfos,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi
    ]);
    }
    public function showDetail($id)
    {
        $peraturan_kemenkominfos = Peraturankementeriankominfo::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.peraturan-kemenkominfo.detail-peraturan-kemenkominfo',
        ['peraturan_kemenkominfo' => $peraturan_kemenkominfos,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi]);
    }
    public function downloadFile($id, $fileName)
    {
        $peraturan_kemenkominfos = Peraturankementeriankominfo::findOrFail($id);
        $file = collect(json_decode($peraturan_kemenkominfos->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $peraturan_kemenkominfos->didownload += 1;
            $peraturan_kemenkominfos->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }

}