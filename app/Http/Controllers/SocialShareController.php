<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SocialShareController extends Controller
{
    public function shareToFacebook()
    {
        $url = urlencode(url()->current());
        return redirect()->away("https://www.facebook.com/sharer/sharer.php?u={$url}");
    }

    public function shareToTwitter()
    {
        $url = urlencode(url()->current());
        $text = urlencode("Check out this page!");
        return redirect()->away("https://twitter.com/intent/tweet?url={$url}&text={$text}");
    }
    public function shareToWhatsApp(Request $request)
    {
        $text = urlencode($request->query('text'));
        return redirect()->away("whatsapp://send?text={$text}");
    }
}
