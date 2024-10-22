<?php

namespace App\Http\Controllers;
use App\Kelurahan;
use App\ProfilKelurahan;
use App\DataPendudukKelurahan;
use App\StrukturKelurahan;
use App\DataGuruPamiKelurahan;
use App\PkhKelurahan;
use App\InovasiKelurahan;
use App\DataKampungBantarKelurahan;
use App\DataMiskinEkstrimKelurahan;
use App\DataFasilitasPendidikanKelurahan;
use App\DataSaranaKelurahan;
use App\DataTitikBanjirKelurahan;
use App\DataPenerimaGasKelurahan;
use App\DataTpsKelurahan;
use App\DataObjekWisataKelurahan;
use App\PoskamlingKelurahan;
use App\DataLansiaKelurahan;
use App\DataStuntingKelurahan;
use App\DataRt;
use App\DataPengangguran;



use Illuminate\Http\Request;

class KelurahanController extends Controller
{
    public function profil($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil profil_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $profil = ProfilKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        // Kirim data kelurahan dan profil ke view
        return view('frontend.kelurahan.profil', compact('kelurahan', 'profil'));
    }

    public function dataPenduduk($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_penduduk_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataPenduduk = DataPendudukKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        // Kirim data kelurahan dan data_penduduk_kelurahan ke view
        return view('frontend.kelurahan.data-penduduk', compact('kelurahan', 'dataPenduduk'));
    }

    public function strukturKelurahan($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil struktur_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $struktur = StrukturKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.struktur', compact('kelurahan', 'struktur'));
    }

    public function dataGuruPami($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_guru_pami_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataGuruPami = DataGuruPamiKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-guru-pami', compact('kelurahan', 'dataGuruPami'));
    }

    public function pkh($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_pkh_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataPkh = PkhKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.pkh', compact('kelurahan', 'dataPkh'));
    }

    public function inovasi($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil inovasi_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $inovasi = InovasiKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.inovasi', compact('kelurahan', 'inovasi'));
    }

    public function dataKampungBantar($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_kampung_bantar_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataKampungBantar = DataKampungBantarKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-kampung-bantar', compact('kelurahan', 'dataKampungBantar'));
    }

    public function dataMiskinEkstrim($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_miskin_ekstrim_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataMiskinEkstrim = DataMiskinEkstrimKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-miskin-ekstrim', compact('kelurahan', 'dataMiskinEkstrim'));
    }

    public function dataFasilitasPendidikan($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_fasilitas_pendidikan_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataFasilitasPendidikan = DataFasilitasPendidikanKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-fasilitas-pendidikan', compact('kelurahan', 'dataFasilitasPendidikan'));
    }

    public function sarana($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil sarana_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $sarana = DataSaranaKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-sarana', compact('kelurahan', 'sarana'));
    }

    public function dataTitikBanjir($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_titik_banjir_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataTitikBanjir = DataTitikBanjirKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-titik-banjir', compact('kelurahan', 'dataTitikBanjir'));
    }

    public function dataPenerimaGas($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_penerima_gas_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataPenerimaGas = DataPenerimaGasKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-penerima-gas', compact('kelurahan', 'dataPenerimaGas'));
    }

    public function dataTps($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_tps_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataTps = DataTpsKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-tps', compact('kelurahan', 'dataTps'));
    }

    public function dataObjekWisata($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_objek_wisata_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataObjekWisata = DataObjekWisataKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-objek-wisata', compact('kelurahan', 'dataObjekWisata'));
    }

    public function poskamling($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_poskamling_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $poskamling = PoskamlingKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.poskamling', compact('kelurahan', 'poskamling'));
    }

    public function dataLansia($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_lansia_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataLansia = DataLansiaKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-lansia', compact('kelurahan', 'dataLansia'));
    }

    public function dataStunting($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_stunting_kelurahan berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataStunting = DataStuntingKelurahan::where('kelurahan_id', $kelurahan->id)->firstOrFail();

        return view('frontend.kelurahan.data-stunting', compact('kelurahan', 'dataStunting'));
    }

    public function dataPengangguran($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_pengangguran berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataPengangguran = DataPengangguran::where('kelurahan_id', $kelurahan->id)->firstOrFail();
        return view('frontend.kelurahan.data-pengangguran', compact('kelurahan', 'dataPengangguran'));
    }

    public function dataRt($slug)
    {
        // Cari kelurahan berdasarkan slug
        $kelurahan = Kelurahan::where('slug', $slug)->firstOrFail();

        // Ambil data_rt berdasarkan kelurahan_id dari kelurahan yang ditemukan
        $dataRt = DataRt::where('kelurahan_id', $kelurahan->id)->firstOrFail();
        return view('frontend.kelurahan.data-rt', compact('kelurahan', 'dataRt'));
    }
}

