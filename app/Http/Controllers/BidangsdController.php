<?php

namespace App\Http\Controllers;
use App\Bidangsd;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;

class BidangsdController extends Controller
{
    public function showDetail()
    {
        $bidangsds = Bidangsd::all();
        return view('sd-mapel-detail',compact('bidangsds'));
    }
    // public function downloadFile($fileName)
    // {
    //     $uploadTime = Carbon::now();
    //     $folderName = $uploadTime->format('FY');
    //     $filePath = 'bidangsds/' . $folderName . '/' . $fileName;

    //     if (Storage::exists($filePath)) {
    //         return Storage::download($filePath);
    //     } else {
    //         return redirect()->back()->with('error', 'File not found.');
    //     }
    // }

    public function qrDownload($folderName, $fileName)
    {
        $filePath = 'bidangsds/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }

}