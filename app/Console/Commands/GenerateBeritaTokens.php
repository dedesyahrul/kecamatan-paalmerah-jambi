<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Berita;
use Illuminate\Support\Str;

class GenerateBeritaTokens extends Command
{
    protected $signature = 'berita:generate-tokens';
    protected $description = 'Generate tokens for beritas without tokens';

    public function handle()
    {
        Berita::whereNull('token')->chunk(100, function ($beritas) {
            foreach ($beritas as $berita) {
                $berita->token = Str::random(32);
                $berita->save();
            }
        });

        $this->info('Tokens generated successfully.');
    }
}