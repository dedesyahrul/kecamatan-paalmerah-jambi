<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DetailAplikasi;

class FooterController extends Controller
{
    public function getFooterData()
    {
        $detailAplikasi = DetailAplikasi::first();
        return view('footer', compact('detailAplikasi'));
    }
}