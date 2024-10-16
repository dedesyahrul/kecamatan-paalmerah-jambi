<?php

namespace App\Http\Controllers;

use App\Agenda;
use App\Pengumuman;
use App\Berita;
Use App\BannerStanding;
use App\Renstra;
use App\Sakip;
use App\Weblink;
use App\GaleriFoto;
use App\DetailAplikasi;
use App\FileDownloadDocument;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Log;

class InformasiController extends Controller
{
    public function indexPengumuman()
    {
        $pengumuman = Pengumuman::orderBy('created_at', 'desc')->paginate(5);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.index-pengumuman', compact('pengumuman',
         'banner_standings',
          'beritas'
          ,'fotos','detailAplikasi'));
    }

    public function showPengumuman($id)
    {
        $pengumuman = Pengumuman::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.detail-pengumuman', compact('pengumuman',
         'banner_standings',
          'beritas',
          'fotos','detailAplikasi'));
    }

    public function indexAgenda()
    {
        $agenda = Agenda::orderBy('tanggal', 'desc')->paginate(6);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.index-agenda', compact('agenda',
         'banner_standings',
          'beritas',
          'fotos','detailAplikasi'));
    }

    public function showAgenda($id)
    {
        $agenda = Agenda::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.detail-agenda', compact('agenda',
         'banner_standings',
          'beritas',
          'fotos','detailAplikasi'));
    }

    public function indexWeblink()
    {
        $weblink = Weblink::orderBy('created_at', 'desc')->paginate(6);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.weblink', compact('weblink',
         'banner_standings',
          'beritas',
          'fotos','detailAplikasi'));
    }

    public function indexSakip()
    {
        $sakips = Sakip::orderBy('created_at', 'desc')->get();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.sakip', compact('sakips',
         'banner_standings',
          'beritas','fotos','detailAplikasi'));
    }

    public function indexRenstra()
    {
        $renstras = Renstra::orderBy('created_at', 'desc')->get();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.informasi.renstra', compact('renstras',
         'banner_standings',
          'beritas','fotos','detailAplikasi'));
    }

    public function downloadFile(Request $request)
    {
        $query = FileDownloadDocument::query();
        
        // Pencarian
        if ($request->has('search')) {
            $searchTerm = $request->search;
            $query->where(function($q) use ($searchTerm) {
                $q->where('judul_file', 'LIKE', "%{$searchTerm}%")
                  ->orWhere('keterangan_file', 'LIKE', "%{$searchTerm}%");
            });
        }
        
        // Paginasi
        $perPage = $request->input('show', 10); // Default 10 per halaman
        $fileDownloadDocuments = $query->orderBy('created_at', 'desc')->paginate($perPage);
        
        foreach ($fileDownloadDocuments as $file) {
            $fileInfo = json_decode($file->file_document, true);
            if (isset($fileInfo[0]['download_link'])) {
                $file->download_link = $fileInfo[0]['download_link'];
            } else {
                $file->download_link = null;
                Log::warning("Download link tidak ditemukan untuk file: " . $file->id);
            }
        }
        
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        
        return view('frontend.informasi.download-file', compact('fileDownloadDocuments', 'banner_standings', 'beritas', 'fotos', 'detailAplikasi'));
    }

    public function downloadFileAjax(Request $request)
    {
        $query = FileDownloadDocument::query();
        
        // Pencarian
        if ($request->has('search')) {
            $searchTerm = $request->search;
            $query->where(function($q) use ($searchTerm) {
                $q->where('judul_file', 'LIKE', "%{$searchTerm}%")
                  ->orWhere('keterangan_file', 'LIKE', "%{$searchTerm}%");
            });
        }
        
        // Paginasi
        $perPage = $request->input('show', 10); // Default 10 per halaman
        $fileDownloadDocuments = $query->orderBy('created_at', 'desc')->paginate($perPage);
        
        foreach ($fileDownloadDocuments as $file) {
            $fileInfo = json_decode($file->file_document, true);
            if (isset($fileInfo[0]['download_link'])) {
                $file->download_link = $fileInfo[0]['download_link'];
            } else {
                $file->download_link = null;
                Log::warning("Download link tidak ditemukan untuk file: " . $file->id);
            }
        }
        
        return view('frontend.partials.file-table', compact('fileDownloadDocuments'))->render();
    }
}
