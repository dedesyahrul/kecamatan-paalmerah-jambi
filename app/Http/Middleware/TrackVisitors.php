<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\Visitor;
use Carbon\Carbon;

class TrackVisitors
{
    public function handle($request, Closure $next)
    {
        // Track visitor directly in middleware
        $today = Carbon::today()->toDateString();
        $ipAddress = $request->ip();

        // Cek apakah IP address ini sudah tercatat hari ini
        $visitor = Visitor::where('date', $today)
                         ->where('ip_address', $ipAddress)
                         ->first();

        if (!$visitor) {
            // Jika belum ada catatan, buat catatan baru
            Visitor::create([
                'date' => $today,
                'ip_address' => $ipAddress,
                'count' => 1
            ]);
        }

        return $next($request);
    }
}
