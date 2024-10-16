<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Http\Request;

class EncryptId
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle($request, Closure $next)
    {
        // Mendekripsi ID jika tersedia dalam route parameters
        if ($request->route('id')) {
            $decryptedId = Crypt::decrypt($request->route('id'));
            $request->route()->setParameter('id', $decryptedId);
        }

        return $next($request);
    }
}
