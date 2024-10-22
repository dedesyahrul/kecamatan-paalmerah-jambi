@extends('layouts.app')

@section('title', 'Berita | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Berita </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Berita</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div> <!--end container-->
    </section><!--end section-->
    <div class="position-relative">
        <div class="shape overflow-hidden text-white">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
@endsection
@section('content')

    <section class="section">
        <div class="container">
            <div class="row">
                <!-- BLog Start -->
                <div class="col-lg-8 col-md-6">
                    <div class="card blog blog-detail border-0 shadow rounded">
                        <!-- Gambar thumbnail -->
                        <img src="{{ asset('storage/' . $berita->foto) }}" alt="{{ $berita->text_foto }}"
                            class="img-fluid rounded-top">
                        <!-- Open Graph (OG) Tags -->
                    @section('og-tags')
                        <meta property="og:title" content="{{ $berita->judul }}" />
                        <meta property="og:description" content="{{ $berita->deskripsi }}" />
                        <meta property="og:image" content="{{ asset('storage/' . $berita->foto) }}" />
                        <meta property="og:url" content="{{ url()->current() }}" />
                        <meta property="og:type" content="article" />
                    @endsection

                    {{-- <img src="{{ asset('storage/' . $berita->foto) }}" alt="{{ $berita->text_foto }}"
                        class="img-fluid rounded-top"> --}}
                    <p class="text-muted">{{ $berita->text_foto }}</p>
                    <div class="card-body content">
                        <h2>{{ $berita->judul }}</h2>
                        <h6>{!! $berita->subjudul !!}</h6>
                        <h4>{!! $berita->headline !!}</h4>
                        <p>
                            {{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('l, d F Y | H:i:s') }} WIB
                            |
                            Dibaca: {{ $berita->dibaca }} Kali
                        </p>
                        <!-- Bagian untuk berbagi ke media sosial -->
                        <div class="social-share mb-3">
                            <h6>Share:</h6>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}"
                                        class="btn btn-primary btn-sm" target="_blank">
                                        <i class="fab fa-facebook-f"></i> Facebook
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="https://wa.me/?text={{ urlencode($berita->judul . ' ' . url()->current()) }}"
                                        class="btn btn-success btn-sm" target="_blank">
                                        <i class="fab fa-whatsapp"></i> WhatsApp
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="content mt-3">
                            {!! $berita->isi_berita !!}
                        </div>
                        <p><strong>Penulis:</strong> {{ $berita->penulis ? $berita->penulis : 'Admin' }}</p>
                        <p><strong>Editor:</strong> {{ $berita->editor ? $berita->editor : 'Admin' }}</p>
                        <p><strong>Sumber:</strong> {{ $berita->sumber }}</p>

                        @if ($berita->youtube)
                            <iframe width="480" height="270"
                                src="https://www.youtube.com/embed/{{ $berita->youtube }}" frameborder="0"
                                allowfullscreen></iframe>
                        @endif
                    </div>
                </div>

                <div class="card shadow rounded border-0 mt-4">
                    <div class="card-body">
                        <div id="fb-root"></div>
                        <script async defer crossorigin="anonymous"
                            src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v20.0&appId=770891248364623" nonce="n7ehjR4b">
                        </script>
                        <!-- Tempatkan elemen komentar Facebook -->
                        <?php
                        // Ambil id kategori dari URL
                        $kategori_id = request()->segment(2);
                        ?>

                        <div class="fb-comments" data-href="{{ url('/kategori/' . $kategori_id) }}" data-numposts="5"
                            data-width=""></div>

                    </div>
                </div>



            </div>
            <!-- BLog End -->

            <!-- START SIDEBAR -->
            @include('frontend.partials.sidebar-front')
            <!-- END SIDEBAR -->
        </div><!--end row-->
</section><!--end section-->

@endsection
