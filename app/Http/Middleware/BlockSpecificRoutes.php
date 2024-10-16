<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class BlockSpecificRoutes
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Daftar route yang ingin diblokir
        $blockedRoutes = [
            'sekretariat-mapel-detail',
            'download/qr',
            'ptk-mapel-detail',
            'smp-mapel-detail',
            'download/smp/qr',
            'undang-undang',
            'peraturan-daerah',
            'peraturan-pemerintah',
            'peraturan-kemenkominfo',
            'peraturan-kemendagri',
            'keputusan-bupati',
            'peraturan-bupati',
            'intruksi-presiden',
            'surat-edaran',
            'detail-pegawaidanstaff',
            'tugaswewe',
            'basisdata',
            'agenda',
            'bukutamu',
            'infokom',
            'egov',
            'sekre',
            'informasi/sakip',
            'informasi/renstra',
        ];

        // Cek apakah route sekarang termasuk dalam route yang diblokir
        foreach ($blockedRoutes as $route) {
            if ($request->is($route . '*')) {
                // Redirect ke halaman beranda jika route diblokir
                return redirect('/'); 
            }
        }

        return $next($request);
    }
}
