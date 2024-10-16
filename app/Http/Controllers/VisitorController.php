<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Visitor;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class VisitorController extends Controller
{
    public function index()
    {
        $today = Carbon::today()->toDateString();
        $yesterday = Carbon::yesterday()->toDateString();
        $startOfMonth = Carbon::now()->startOfMonth()->toDateString();

        // Ambil data pengunjung hari ini
        $todayVisitors = Visitor::where('date', $today)->count();
        
        // Ambil data pengunjung kemarin
        $yesterdayVisitors = Visitor::where('date', $yesterday)->count();

        // Ambil data pengunjung bulan ini
        $monthVisitors = Visitor::whereBetween('date', [$startOfMonth, $today])->count();

        // Ambil total pengunjung
        $totalVisitors = Visitor::count();

        return view('visitor_statistics', [
            'today' => $todayVisitors,
            'yesterday' => $yesterdayVisitors,
            'month' => $monthVisitors,
            'total' => $totalVisitors
        ]);
    }

    // Menambah jumlah pengunjung hari ini
    public function incrementVisitor(Request $request)
    {
        $today = Carbon::today()->toDateString();
        $ipAddress = $request->ip();

        // Cek apakah IP address ini sudah tercatat hari ini
        $visitor = Visitor::where('date', $today)->where('ip_address', $ipAddress)->first();

        if (!$visitor) {
            // Jika belum, buat catatan pengunjung baru
            Visitor::create([
                'date' => $today,
                'ip_address' => $ipAddress,
                'count' => 1
            ]);
        }
    }
}
