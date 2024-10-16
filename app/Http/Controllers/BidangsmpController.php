<?php

namespace App\Http\Controllers;
use App\Bidangsmp;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;

class BidangsmpController extends Controller
{
    public function showDetail()
    {
        $bidangsmps = Bidangsmp::all();
        return view('smp-mapel-detail',compact('bidangsmps'));
    }
    public function downloadFile($fileName)
    {
        $uploadTime = Carbon::now();
        $folderName = $uploadTime->format('FY');
        $filePath = 'bidangsmps/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }

    public function qrDownload($folderName, $fileName)
    {
        $filePath = 'bidangsmps/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }
}
