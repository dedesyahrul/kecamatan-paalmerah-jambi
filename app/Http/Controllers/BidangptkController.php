<?php

namespace App\Http\Controllers;
use App\Bidangptk;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;

class BidangptkController extends Controller
{
    public function showDetail()
    {
        $bidangptks  = Bidangptk::all();
        return view('ptk-mapel-detail',compact('bidangptks'));
    }
    
    public function downloadFile($fileName)
    {
        $uploadTime = Carbon::now();
        $folderName = $uploadTime->format('FY');
        $filePath = 'bidangptks/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }

    public function qrDownload($folderName, $fileName)
    {
        $filePath = 'bidangptks/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }

    // public function qrDownload($download_link)
    // {
    //     $filePath = 'storage/' . $download_link; // Sesuaikan dengan struktur penyimpanan Anda

    //     if (Storage::exists($filePath)) {
    //         return Storage::download($filePath);
    //     } else {
    //         return redirect()->back()->with('error', 'File not found.');
    //     }
    // }
}
