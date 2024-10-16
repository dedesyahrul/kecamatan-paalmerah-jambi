<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactMail extends Mailable
{
    use Queueable, SerializesModels;

    public $details;

    public function __construct($details)
    {
        $this->details = $details;
    }

    public function build()
    {
        return $this->from('timtech.kominfo@gmail.com')  // Pastikan alamat pengirim valid
                    ->subject($this->details['subjek'])  // Gunakan subjek dari input pengguna
                    ->view('emails.contact')
                    ->with('details', $this->details);
    }
}
