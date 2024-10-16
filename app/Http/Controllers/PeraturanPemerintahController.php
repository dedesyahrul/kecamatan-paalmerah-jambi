<?php

namespace App\Http\Controllers;
use App\PeraturanPemerintah;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class PeraturanPemerintahController extends Controller
{

    public function index()
    {
        $peraturan_pemerintahs = PeraturanPemerintah::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $detailAplikasi = DetailAplikasi::first();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        return view('frontend.peraturan-pemerintah.peraturan-pemerintah',
        ['peraturan_pemerintahs' => $peraturan_pemerintahs,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
            'detailAplikasi' => $detailAplikasi
    ]);
    }
    public function showDetail($id)
    {
        $peraturan_pemerintahs = PeraturanPemerintah::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $detailAplikasi = DetailAplikasi::first();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        return view('frontend.peraturan-pemerintah.detail-peraturan-pemerintah',
        ['peraturan_pemerintah' => $peraturan_pemerintahs,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi
    ]);
    }
    public function downloadFile($id, $fileName)
    {
        $peraturan_pemerintahs = PeraturanPemerintah::findOrFail($id);
        $file = collect(json_decode($peraturan_pemerintahs->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $peraturan_pemerintahs->didownload += 1;
            $peraturan_pemerintahs->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }

}