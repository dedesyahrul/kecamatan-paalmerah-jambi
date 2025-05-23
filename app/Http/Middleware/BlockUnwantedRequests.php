<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class BlockUnwantedRequests
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // List of blocked user agents
        $blockedUserAgents = [
            'Expanse',
            'Palo Alto',
            'scaninfo@paloaltonetworks',
            'zgrab',
            'semrush',
            'ahrefs',
            'censys'
        ];

        // Check user agent
        $userAgent = $request->header('User-Agent');
        foreach ($blockedUserAgents as $blockedAgent) {
            if (stripos($userAgent, $blockedAgent) !== false) {
                return response()->json(['error' => 'Access Denied'], 403);
            }
        }

        // Handle POST requests to root
        if ($request->isMethod('post') && $request->path() === '/') {
            return redirect()->to('/');
        }

        return $next($request);
    }
}
