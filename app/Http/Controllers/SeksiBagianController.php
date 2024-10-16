<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TugasPokokKeungan;
use App\TugasPokokKepegawaian;
use App\DataKepegawaian;
use App\SeksiTugasPokokPelayanan;
use App\SeksiPaten;
use App\SeksiTugasPokokPemerintahan;
use App\SeksiPenduduk;
use App\SeksiTetap;
use App\SeksiPbb;
use App\SeksiTugasPokokCuy;
use App\SeksiHukum;
use App\SeksiTugasPokokPemberdayaan;
use App\SeksiTugasPokokSosial;
use App\SeksiIbadah;

class SeksiBagianController extends Controller
{
    public function tugasKeuangan()
    {
        $tugasPokokKeungan = TugasPokokKeungan::all();
        return view('frontend.seksi-bagian.tugas-keungan', compact('tugasPokokKeungan'));
    }

    public function tugasKepegawaian()
    {
        $tugasPokokKepegawaian = TugasPokokKepegawaian::all();
        $dataKepegawaian = DataKepegawaian::all();
        return view('frontend.seksi-bagian.data-kepegawaian', compact('tugasPokokKepegawaian', 'dataKepegawaian'));
    }

    public function seksiPelayananUmum()
    {
        $tugasPokokPelayanan = SeksiTugasPokokPelayanan::all();
        $seksiPaten = SeksiPaten::all();
        return view('frontend.seksi-bagian.seksi-pelayanan-umum', compact('tugasPokokPelayanan', 'seksiPaten'));
    }

    public function seksiPemerintahanUmum()
    {
        $tugasPokokPemerintahan = SeksiTugasPokokPemerintahan::all();
        $seksiPenduduk = SeksiPenduduk::all();
        $seksiTetap = SeksiTetap::all();
        $seksiPbb = SeksiPbb::all();
        return view('frontend.seksi-bagian.seksi-pemerintahan-umum', compact('tugasPokokPemerintahan', 'seksiPenduduk', 'seksiTetap', 'seksiPbb'));
    }

    public function seksiKetentraman()
    {
        $tugasPokokCuy = SeksiTugasPokokCuy::all();
        $seksiHukum = SeksiHukum::all();
        return view('frontend.seksi-bagian.seksi-ketentraman', compact('tugasPokokCuy', 'seksiHukum'));
    }

    public function seksiPemberdayaan()
    {
        $tugasPokokPemberdayaan = SeksiTugasPokokPemberdayaan::all();
        return view('frontend.seksi-bagian.seksi-pemberdayaan', compact('tugasPokokPemberdayaan'));
    }

    public function seksiKesejahteraanSosial()
    {
        $tugasPokokSosial = SeksiTugasPokokSosial::all();
        $seksiIbadah = SeksiIbadah::all();
        return view('frontend.seksi-bagian.seksi-kesejahtreraan-sosial', compact('tugasPokokSosial', 'seksiIbadah'));
    }


}
