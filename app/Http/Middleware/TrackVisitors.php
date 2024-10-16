<?php

namespace App\Http\Middleware;

use Closure;
use App\Http\Controllers\VisitorController;
use Illuminate\Http\Request;

class TrackVisitors
{
    public function handle($request, Closure $next)
    {
        // Jalankan fungsi incrementVisitor dari VisitorController
        app(VisitorController::class)->incrementVisitor($request);

        return $next($request);
    }
}
