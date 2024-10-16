<?php

namespace App\Http\Controllers;

use App\PeraturanDaerah;
use App\BannerStanding;
use App\DetailAplikasi;
use App\GaleriFoto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PeraturanDaerahController extends Controller
{
    public function index()
    {
        $peraturan_daerahs = PeraturanDaerah::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $detailAplikasi = DetailAplikasi::first();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        return view('frontend.peraturan-daerah.peraturan-daerah',[
            'peraturan_daerahs' => $peraturan_daerahs,
            'banner_standings' => $banner_standings,
            'detailAplikasi' => $detailAplikasi,
            'fotos' => $fotos,
        ]);
    }
    public function showDetail($id)
    {
        $peraturan_daerahs = PeraturanDaerah::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $detailAplikasi = DetailAplikasi::first();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        return view('frontend.peraturan-daerah.detail-peraturan-daerah', [
            'peraturan_daerah' => $peraturan_daerahs,
            'banner_standings' => $banner_standings,
            'detailAplikasi' => $detailAplikasi,
            'fotos' => $fotos,
        ]);
    }
    public function downloadFile($id, $fileName)
    {
        $peraturan_daerah = PeraturanDaerah::findOrFail($id);
        $file = collect(json_decode($peraturan_daerah->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $peraturan_daerah->didownload += 1;
            $peraturan_daerah->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }
}