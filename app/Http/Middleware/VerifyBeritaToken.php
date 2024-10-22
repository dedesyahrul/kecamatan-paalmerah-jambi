<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Berita;
use Illuminate\Support\Str;

class VerifyBeritaToken
{
    public function handle(Request $request, Closure $next)
    {
        $berita = Berita::findOrFail($request->route('id'));
        if ($request->route('token') !== $berita->token) {
            abort(403, 'Token tidak valid.');
        }
        
        // Generate token baru setelah verifikasi berhasil
        $berita->token = Str::random(32);
        $berita->save();
        
        return $next($request);
    }
}
