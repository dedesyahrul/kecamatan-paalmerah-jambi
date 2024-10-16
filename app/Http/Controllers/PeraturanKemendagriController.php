<?php

namespace App\Http\Controllers;
use App\Peraturankementeriandalamnegeri;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class PeraturanKemendagriController extends Controller
{
    public function index()
    {
        $peraturan_kemendagris = Peraturankementeriandalamnegeri::orderBy('created_at', 'desc')->paginate(10);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.peraturan-kemendagri.peraturan-kemendagri',
        ['peraturan_kemendagris' => $peraturan_kemendagris,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi
    ]);
    }
    public function showDetail($id)
    {
        $peraturan_kemendagris = Peraturankementeriandalamnegeri::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.peraturan-kemendagri.detail-peraturan-kemendagri',
         ['peraturan_kemendagri' => $peraturan_kemendagris,
        'banner_standings' => $banner_standings,'fotos' => $fotos,
        'detailAplikasi' => $detailAplikasi
        ]);
    }
    public function downloadFile($id, $fileName)
    {
        $peraturan_kemendagris = Peraturankementeriandalamnegeri::findOrFail($id);
        $file = collect(json_decode($peraturan_kemendagris->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $peraturan_kemendagris->didownload += 1;
            $peraturan_kemendagris->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }

}