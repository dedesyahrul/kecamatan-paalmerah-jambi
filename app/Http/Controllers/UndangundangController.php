<?php

namespace App\Http\Controllers;
use App\UndangUndang;
use App\BannerStanding;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

use Illuminate\Http\Request;

class UndangundangController extends Controller
{
    public function index()
    {
        $undang_undangs = UndangUndang::orderBy('created_at', 'desc')->paginate(5);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.undang-undang.undang-undang', [
            'undang_undangs' => $undang_undangs,
            'banner_standings' => $banner_standings,
            'fotos' => $fotos,
            'detailAplikasi' => $detailAplikasi
        ]);
    }
    public function showDetail($id)
    {
        $undang_undang = UndangUndang::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.undang-undang.detail-undang-undang', [
            'undang_undang' => $undang_undang,
            'banner_standings' => $banner_standings,
            'fotos' => $fotos,
            'detailAplikasi' => $detailAplikasi
        ]);
    }
    public function downloadFile($id, $fileName)
    {
        $undang_undang = UndangUndang::findOrFail($id);
        $file = collect(json_decode($undang_undang->file, true))->firstWhere('download_link', $fileName);

        if ($file && Storage::exists('public/' . $file['download_link'])) {
            // Increase the download count
            $undang_undang->didownload += 1;
            $undang_undang->save();

            return Storage::download('public/' . $file['download_link'], $file['original_name']);
        } else {
            abort(404, 'File not found.');
        }
    }

 }