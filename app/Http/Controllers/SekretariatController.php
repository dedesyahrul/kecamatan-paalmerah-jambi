<?php

namespace App\Http\Controllers;
use App\Bidangsekre;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

use Illuminate\Http\Request;

class SekretariatController extends Controller
{
    public function showDetail()
    {
        $bidangsekre = Bidangsekre::all();
        return view('sekretariat-mapel-detail',compact('bidangsekre'));
    }

    public function downloadFile($fileName)
    {
        $uploadTime = Carbon::now();
        $folderName = $uploadTime->format('FY');
        $filePath = 'bidangsekres/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }

   public function qrDownload($folderName, $fileName)
    {
        $filePath = 'bidangsekres/' . $folderName . '/' . $fileName;

        if (Storage::exists($filePath)) {
            return Storage::download($filePath);
        } else {
            return redirect()->back()->with('error', 'File not found.');
        }
    }

}
