<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pauddikmas;

class PauddikmasController extends Controller
{
    public function showDetail()
    {
        $pauddikmas = Pauddikmas::all();
        return view('paud-mapel-detail',compact('pauddikmas'));
    }
}
