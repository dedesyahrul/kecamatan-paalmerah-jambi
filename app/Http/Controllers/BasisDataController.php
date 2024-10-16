<?php

namespace App\Http\Controllers;
use App\EmailOpd;
use App\LokasiBt;
use App\DataRadioSwasta;
use App\DataWarnet;
use App\DataBlankSpot;
use App\BannerStanding;
use App\Berita;
use App\DataTvKabel;
use App\GaleriFoto;
use App\DetailAplikasi;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class BasisDataController extends Controller
{
    public function indexEmailopd()
    {
        $email = EmailOpd::all();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.basis-data.email-opd', compact('email','banner_standings','beritas','fotos','detailAplikasi'));
    }
    public function indexBTS()
    {
        $btss = LokasiBt::orderBy('created_at', 'desc')->get();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.basis-data.bts', compact('btss','banner_standings','beritas','fotos','detailAplikasi'));
    }
    public function indexRadio()
    {
        $radio = DataRadioSwasta::all();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.basis-data.radio', compact('radio','banner_standings','beritas','fotos','detailAplikasi'));
    }
    public function indexWarnet()
    {
        $warnet = DataWarnet::all();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.basis-data.warnet', compact('warnet','banner_standings','beritas','fotos','detailAplikasi'));
    }
    public function indexBlankspot()
    {
        $datablankspot = DataBlankSpot::all();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.basis-data.blankspot', compact('datablankspot','banner_standings','beritas','fotos','detailAplikasi'));
    }
    public function indexTVKabel()
    {
        $datatvkabel = DataTvKabel::all();
        $banner_standings = BannerStanding::all();
        $beritas = Berita::all();
        $fotos = GaleriFoto::orderBy('created_at', 'desc')->take(3)->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.basis-data.tvkabel', compact('datatvkabel','banner_standings','beritas','fotos','detailAplikasi'));
    }
}