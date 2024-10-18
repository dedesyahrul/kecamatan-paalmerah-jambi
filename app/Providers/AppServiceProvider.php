<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Date;
use Carbon\Carbon;
use App\Models\Visitor; // Pastikan Visitor model diimpor
use App\Kelurahan; 
use App\KategoriBerita;
use App\Berita;
use App\DetailAplikasi;
use App\BannerStanding;
use App\TupoksiPkk;
use App\LayananDukcapil;
use App\LayananPaten;
use App\IdentitasWebsite;
use App\Weblink;
use App\SocialMediaLink;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Validasi honeypot
        Validator::extend('honeypot', function ($attribute, $value, $parameters, $validator) {
            return empty($value); // Kolom Honeypot harus kosong (tidak diisi)
        });

        // Setel lokal Carbon ke Bahasa Indonesia
        Carbon::setLocale('id');
        setlocale(LC_TIME, 'id_ID'); // Mengatur locale untuk formatLocalized
        Date::setLocale('id'); // Mengatur locale untuk Carbon

        // View Composer untuk mengirimkan kategori berita dan statistik pengunjung ke semua view
        View::composer('*', function ($view) {
            // Mengambil kategori berita
            $kategoriBeritas = KategoriBerita::orderBy('nama_kategori', 'asc')->get();
            $recentPosts = Berita::orderBy('created_at', 'desc')->take(5)->get(); // Ambil 5 postingan terbaru

            // Mengambil semua data kelurahan
            $kelurahans = Kelurahan::orderBy('nama', 'asc')->get(); // Mengambil semua kelurahan
            $tupoksiPkks = TupoksiPkk::orderBy('nama', 'asc')->get(); // Mengambil semua tupoksi pkk
            $layananDukcapils = LayananDukcapil::orderBy('nama', 'asc')->get(); // Mengambil semua layanan dukcapil
            $layananPatens = LayananPaten::orderBy('nama', 'asc')->get(); // Mengambil semua layanan paten
            $identitasWebsites = IdentitasWebsite::first(); // Mengambil data identitas website
            $weblinks = Weblink::first();
            $socialMediaLinks = SocialMediaLink::all();
            // Statistik Pengunjung
            $today = Carbon::today();
            $yesterday = Carbon::yesterday();
            $startOfMonth = Carbon::now()->startOfMonth();

            // Ambil data pengunjung dalam 24 jam terakhir untuk hari ini
            $todayVisitors = Visitor::where('date', $today->toDateString())
                ->where('created_at', '>=', $today->subDay()->toDateTimeString())
                ->distinct('ip_address')
                ->count('ip_address');

            // Ambil data pengunjung dalam 24 jam terakhir untuk kemarin
            $yesterdayVisitors = Visitor::where('date', $yesterday->toDateString())
                ->where('created_at', '>=', $yesterday->subDay()->toDateTimeString())
                ->distinct('ip_address')
                ->count('ip_address');

            // Ambil data pengunjung bulan ini
            $monthVisitors = Visitor::whereBetween('date', [$startOfMonth, Carbon::now()])->sum('count');

            // Ambil total pengunjung
            $totalVisitors = Visitor::sum('count');

            // Mengambil detail aplikasi
            $detailAplikasi = DetailAplikasi::first();

            // Mengambil banner standing
            $banner_standings = BannerStanding::all();

            // Bagikan data kategori berita, postingan terbaru, dan statistik pengunjung ke semua view
            $view->with('kategoriBeritas', $kategoriBeritas)
                 ->with('recentPosts', $recentPosts)
                 ->with('kelurahans', $kelurahans)
                 ->with('today', $todayVisitors)
                 ->with('yesterday', $yesterdayVisitors)
                 ->with('month', $monthVisitors)
                 ->with('total', $totalVisitors)
                 ->with('banner_standings', $banner_standings)
                 ->with('detailAplikasi', $detailAplikasi)
                 ->with('tupoksiPkks', $tupoksiPkks)
                 ->with('layananDukcapils', $layananDukcapils)
                 ->with('layananPatens', $layananPatens)
                 ->with('identitasWebsites', $identitasWebsites)
                 ->with('weblinks', $weblinks)
                 ->with('socialMediaLinks', $socialMediaLinks);
        });
    }
}
