<?php

namespace App\Http\Controllers;
use App\Slider;
use App\Berita;
use App\BannerStanding;
use App\Banner;
use App\Bidangsekre;
use App\BidangEgov;
use App\BidangInfokom;
use App\GaleriFoto;
use App\DetailAplikasi;
use App\Agenda;
use App\AplikasiTerkait;
use App\Pengumuman;
use App\KataSambutan;
use App\KategoriBerita;

use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;

use Illuminate\Http\Request;


class HomeController extends Controller
{
    public function index(Request $request)
    {
        // If POST request, redirect to GET
        if ($request->isMethod('post')) {
            return redirect()->route('index');
        }

        // Normal GET request handling
        $sliders = Slider::all();
        $beritas = Berita::orderByRaw('COALESCE(created_at, updated_at) DESC')->paginate(5);
        $banner_standings = BannerStanding::all();
        $banners = Banner::orderByRaw('COALESCE(created_at, updated_at) DESC')->get();
        $sekre = Bidangsekre::all();
        $b_egov = BidangEgov::all();
        $infokom = BidangInfokom::all();
        $fotos = GaleriFoto::orderByRaw('COALESCE(created_at, updated_at) DESC')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        $agendas = Agenda::orderBy('tanggal', 'desc')->get();
        $aplikasi_terkait = AplikasiTerkait::all();
        $kataSambutans = KataSambutan::all();
        $kategoriBeritas = KategoriBerita::pluck('nama_kategori', 'id')->all();

        return view('index', compact(
            'sliders',
            'beritas',
            'banner_standings',
            'banners',
            'sekre',
            'b_egov',
            'infokom',
            'fotos',
            'detailAplikasi',
            'agendas',
            'aplikasi_terkait',
            'kataSambutans',
            'kategoriBeritas'
        ));
    }

    public function showSekre($id)
    {
        $sekre = BidangSekre::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.landing-page.detail-sekretariat', compact('sekre',
        'banner_standings',
        'beritas','fotos','detailAplikasi'));
    }

    public function showEgov($id)
    {
        $b_egov = BidangEgov::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.landing-page.detail-egov', compact('b_egov',
        'banner_standings',
        'beritas','fotos','detailAplikasi'));
    }

    public function showInfokom($id)
    {
        $infokom = BidangInfokom::findOrFail($id);
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.landing-page.detail-infokom', compact('infokom',
        'banner_standings',
        'beritas','fotos','detailAplikasi'));
    }

    public function search(Request $request)
    {
        $query = $request->input('s');

        $beritas = Berita::where('judul', 'LIKE', "%{$query}%")
                        ->orWhere('isi_berita', 'LIKE', "%{$query}%")
                        ->orderBy('created_at', 'desc')
                        ->paginate(3);

        // Variabel lain yang diperlukan oleh view
        $sliders = Slider::all();
        $banner_standings = BannerStanding::all();
        $banners = Banner::orderBy('created_at', 'desc')->get();
        $sekre = Bidangsekre::all();
        $b_egov = BidangEgov::all();
        $infokom = BidangInfokom::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        $aplikasi_terkait = AplikasiTerkait::all();

        return view('search_results', compact(
            'beritas', 'query', 'sliders', 'banner_standings',
            'banners', 'sekre', 'b_egov', 'infokom', 'fotos',
            'detailAplikasi', 'aplikasi_terkait'
        ));
    }

    public function send(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'comments' => 'required',
        ]);

        $details = [
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'subjek' => $request->subjek,
            'comments' => $request->comments,
        ];

        try {
            Mail::to('kecamatanpaalmerah123@gmail.com')->send(new ContactMail($details));
            return back()->with('message', 'Pesan Anda berhasil dikirim!');
        } catch (\Exception $e) {
            \Log::error('Error saat mengirim email: ' . $e->getMessage());
            return back()->with('error', 'Gagal mengirim pesan, silakan coba lagi nanti.');
        }
    }



}
