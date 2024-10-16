@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Detail Pengumuman </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="/informasi/pengumuman">Pengumuman</a></li>
                                <li class="breadcrumb-item"><a>{{ $pengumuman->judul }}</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shape Start -->
<div class="position-relative">
    <div class="shape overflow-hidden text-white">
        <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
        </svg>
    </div>
</div>
<!--Shape End-->

<section class="section">
    <div class="container">
        <div class="row">
            <!-- BLog Start -->
            <div class="col-lg-8 col-md-6">
                <div class="card blog blog-detail border-0 shadow rounded">
                    <div class="card-body">
                        <h3 class="card-title">Detail Pengumuman</h3>
                        <div>
                            <h5 class="card-title">{{ $pengumuman->judul }}</h5>
                            <small>{{ \Carbon\Carbon::parse($pengumuman->created_at)->format('d M Y H:i') }}</small>
                            <p class="card-text">{!! $pengumuman->isi_pengumuman !!}</p>
                            @php
                                $files = json_decode($pengumuman->file_pendukung);
                            @endphp

                            @if (!is_null($files))
                                @foreach ($files as $file)
                                    @if (!empty($file->download_link))
                                        <a href="{{ asset('storage/' . $file->download_link) }}" class="btn btn-primary"
                                            download>Download</a>
                                    @endif
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>


                <div class="card shadow rounded border-0 mt-4">
                    <div class="card-body">
                        <div id="fb-root"></div>
                        <script async defer crossorigin="anonymous"
                            src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v20.0&appId=770891248364623" nonce="n7ehjR4b">
                        </script>
                        <!-- Tempatkan elemen komentar Facebook -->
                        <div class="fb-comments" data-href="{{ url()->current() }}" data-numposts="5" data-width="">
                        </div>
                    </div>

                </div>

                @include('frontend.partials.slide-berita')
            </div>
            <!-- BLog End -->

            <!-- START SIDEBAR -->
            @include('frontend.partials.sidebar')
            <!-- END SIDEBAR -->
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->

@include('footer')
