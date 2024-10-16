@include('header')

<body>
    {{-- <section class="home-slider position-relative">
        <div id="carouselExampleInterval" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach ($sliders as $key => $slider)
                    <div class="carousel-item active {{ $key == 0 ? 'active' : '' }}" data-bs-interval="3000">
                        <div class="bg-home d-flex align-items-center"
                            style="background-image:url('{{ Voyager::image($slider->slider) }}')">
                            <div class="bg-overlay"></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-12 text-center">
                                        <div class="title-heading text-white mt-4">
                                            <h1 class="display-4 title-dark fw-bold mb-3">{{ $slider->judul }}
                                            </h1>
                                            <p class="para-desc para-dark mx-auto text-light">{{ $slider->deskripsi }}
                                            </p>

                                            <div class="mt-4">
                                                @if ($key == 0)
                                                    <a href="https://disdik.tanjabtimkab.go.id/"
                                                        class="btn btn-primary">Official Website</a>
                                                @endif
                                            </div>
                                        </div>
                                    </div><!--end col-->
                                </div><!--end row-->
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </section> --}}
    <!-- Hero Start -->
    <section class="home-slider position-relative">
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    @foreach ($sliders as $key => $slider)
                        <div class="carousel-item {{ $key == 0 ? 'active' : '' }}" data-bs-interval="5000">
                            <a href="{{ $slider->tautan }}">
                                <div class="bg-home d-flex align-items-center"
                                    style="background: url('{{ Voyager::image($slider->slider) }}') center center; background-size: cover;">
                                    <!-- Konten lainnya -->
                                    <div class="container">
                                        <div class="row mt-5 justify-content-center">
                                            <div class="col-lg-6">
                                                <h2 class="text-white title-dark mb-2">{{ $slider->judul }}</h2>
                                                <p class="para-desc mx-auto text-white-50 mb-0">{{ $slider->deskripsi }}
                                                </p>
                                                <div class="mt-4">
                                                    @if ($key == 0)
                                                        <a href="{{ route('katasambutan') }}"
                                                            class="btn btn-primary">Sambutan Kepala Dinas</a>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <!-- Your image slider or additional content here -->
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end slide-->
                        </div>
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </a>
            </div>
    </section><!--end section-->
    <!-- Hero End -->

    {{-- <section class="section" style="background: url('{{ asset('assets/images/real/build.png') }}') bottom no-repeat;"> --}}
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="features-absolute">
                        <div class="row">
                            <div class="col-md-4 mb-4">
                                <div
                                    class="card card-custom-opacity border-0 text-center features feature-clean course-feature p-4 overflow-hidden shadow">
                                    <div class="icons text-primary text-center mx-auto">
                                        <i class="uil uil-bag d-block rounded h3 mb-0"></i>
                                    </div>
                                    <div class="card-body p-0 mt-4">
                                        @foreach ($sekre as $item)
                                            <a class="title h5 text-dark">{{ $item->judulnya }}</a>
                                            <p class="text-muted mt-2">
                                                {{ \Illuminate\Support\Str::limit(strip_tags($item->isi), 100) }}</p>
                                            <a href="{{ route('sekre.show', Crypt::encrypt($item->id)) }}"
                                                class="text-primary read-more">Selengkapnya <i
                                                    class="uil uil-angle-right-b align-middle"></i></a>
                                            <i class="uil uil-bag text-primary full-img"></i>
                                        @endforeach
                                    </div>
                                </div>
                            </div><!--end col-->

                            <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                                <div
                                    class="card card-custom-opacity border-0 text-center features feature-clean course-feature p-4 overflow-hidden shadow">
                                    <div class="icons text-primary text-center mx-auto">
                                        <i class="uil uil-server d-block rounded h3 mb-0"></i>
                                    </div>
                                    <div class="card-body p-0 mt-4">
                                        @foreach ($b_egov as $egov)
                                            <a class="title h5 text-dark">{{ $egov->judulnya }}</a>
                                            <p class="text-muted mt-2">
                                                {{ \Illuminate\Support\Str::limit(strip_tags($egov->isi), 100) }}</p>
                                            <a href="{{ route('egov.show', Crypt::encrypt($egov->id)) }}"
                                                class="text-primary read-more">Selengkapnya <i
                                                    class="uil uil-angle-right-b align-middle"></i></a>
                                            <i class="uil uil-server text-primary full-img"></i>
                                        @endforeach
                                    </div>
                                </div>
                            </div><!--end col-->

                            <div class="col-md-4 mt-4 pt-2 mt-sm-0 pt-sm-0">
                                <div
                                    class="card card-custom-opacity border-0 text-center features feature-clean course-feature p-4 overflow-hidden shadow">
                                    <div class="icons text-primary text-center mx-auto">
                                        <i class="uil uil-video d-block rounded h3 mb-0"></i>
                                    </div>
                                    <div class="card-body p-0 mt-4">
                                        @foreach ($infokom as $infok)
                                            <a class="title h5 text-dark">{{ $infok->judulnya }}</a>
                                            <p class="text-muted mt-2">
                                                {{ \Illuminate\Support\Str::limit(strip_tags($infok->isi), 100) }}</p>
                                            <a href="{{ route('infokom.show', Crypt::encrypt($infok->id)) }}"
                                                class="text-primary read-more">Selengkapnya <i
                                                    class="uil uil-angle-right-b align-middle"></i></a>
                                            <i class="uil uil-video text-primary full-img"></i>
                                        @endforeach
                                    </div>
                                </div>
                            </div><!--end col-->
                        </div><!--end row-->
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
        <div class="container">
            <div class="row align-items-center mt-4 mb-4 pb-2">
                <div class="col-md-8">
                    <div class="section-title text-center text-md-start">
                        <h4 class="mb-4">Berita terbaru</h4>
                    </div>
                </div>

                <div class="col-md-4 mb-4 mt-sm-0">
                    <div class="text-center text-md-end">
                        <a href="{{ url('/all-berita') }}" class="btn btn-soft-primary">Selengkapnya <i
                                data-feather="arrow-right" class="fea icon-sm"></i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Berita Start -->
                <div class="col-lg-8 col-md-6">
                    <div class="row">
                        @foreach ($beritas as $index => $berita)
                            @if ($index == 0)
                                @include('frontend.berita.berita-terbaru', ['berita' => $berita])
                            @else
                                @include('frontend.berita.berita-lainnya', ['berita' => $berita])
                            @endif
                        @endforeach
                    </div>
                    {{-- banner --}}
                    <div class="row mt-4">
                        <div class="inibanner">
                            @foreach ($banners as $spanduk)
                                <div class="banner-item">
                                    @if ($spanduk->tautan)
                                        <a href="{{ $spanduk->tautan }}" target="_blank">
                                            <img class="widget mb-4 pb-2 img-fluid"
                                                src="{{ asset('storage/' . $spanduk->bannernya) }}"
                                                alt="{{ $spanduk->judul }}">
                                        </a>
                                    @else
                                        <img class="widget mb-4 pb-2 img-fluid"
                                            src="{{ asset('storage/' . $spanduk->bannernya) }}"
                                            alt="{{ $spanduk->judul }}">
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    </div>
                    {{-- banner --}}
                </div>
                <!-- Berita End -->

                <!-- START SIDEBAR -->
                @include('frontend.partials.sidebar')
                <!-- END SIDEBAR -->
            </div><!--end row-->


        </div><!--end container-->

        <div class="container mt-100 mt-60">
            <div class="row align-items-center mb-4 pb-2">
                <div class="col-md-8">
                    <div class="section-title text-center text-md-start">
                        <h4 class="mb-4">Galeri Foto Kegiatan</h4>
                        <p class="text-muted mb-0 para-desc">Nikmati momen-momen berharga dalam galeri foto
                            kegiatan kami, yang merefleksikan semangat dan dedikasi kami dalam setiap langkah.</p>
                    </div>
                </div><!--end col-->

                <div class="col-md-4 mt-4 mt-sm-0">
                    <div class="text-center text-md-end">
                        <a href="{{ route('indexFoto') }}" class="btn btn-soft-primary">Lihat Lebih Banyak <i
                                data-feather="arrow-right" class="fea icon-sm"></i></a>

                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="row">
                @foreach ($fotos as $foto)
                    <div class="col-lg-4 col-md-6 mt-4 pt-2">
                        <div class="card blog rounded border-0 shadow overflow-hidden">
                            <div class="position-relative">
                                @php
                                    // Mendapatkan URL foto pertama dari string foto
                                    $foto_pertama = json_decode($foto->foto)[0];
                                @endphp
                                <div class="img-crop">
                                    <img src="{{ asset('storage/' . $foto_pertama) }}" class="card-img-top"
                                        alt="{{ $foto->judul }}">
                                </div>

                                <div class="overlay rounded-top bg-dark"></div>
                            </div>
                            <div class="card-body content">
                                <h5><a href="{{ route('galeri.detail', ['id' => $foto->id]) }}"
                                        class="card-title title text-dark">{{ Str::limit($foto->judul, 45, '...') }}</a>
                                </h5>
                                <div class="post-meta d-flex justify-content-between mt-3">
                                    <ul class="list-unstyled mb-0">
                                    </ul>
                                    <a href="{{ route('galeri.detail', ['id' => $foto->id]) }}"
                                        class="text-muted readmore">Selengkapnya <i
                                            class="uil uil-angle-right-b align-middle"></i></a>
                                </div>
                            </div>
                            <div class="author">
                                <small class="text-light user d-block"><i class="uil uil-user"></i>
                                    {{ $foto->judul }}</small>
                                <small class="text-light date"><i class="uil uil-calendar-alt"></i>
                                    {{ \Carbon\Carbon::parse($foto->created_at)->translatedFormat('l, d F Y') }}</small>
                            </div>
                        </div>
                    </div><!--end col-->
                @endforeach
            </div><!--end row-->
        </div><!--end container-->

        <div class="container mt-100 mt-60">
            <div class="row">
                <div class="col-lg-8 col-md-6 p-0 ps-md-3 pe-md-3">
                    <div class="card map map-height-two rounded map-gray border-0">
                        <iframe src="{{ $detailAplikasi->google_maps_url }}" style="border:0" class="rounded"
                            allowfullscreen></iframe>
                    </div>
                </div><!--end col-->

                <div class="col-lg-4 col-md-6 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <div class="card rounded shadow border-0">
                        <div class="card-body py-4">
                            <h5 class="card-title">Agenda Kegiatan</h5>
                            <ul class="list-group">
                                @foreach ($agendas->take(3) as $agenda)
                                    <li class="list-group-item">
                                        <div class="row align-items-center">
                                            <div class="col-md-4">
                                                <div class="text-center">
                                                    <div class="bg-info text-white p-12 rounded">
                                                        <h5 class="card-title">
                                                            {{ \Carbon\Carbon::parse($agenda->tanggal)->format('d') }}
                                                        </h5>
                                                        <small>{{ \Carbon\Carbon::parse($agenda->tanggal)->format('M Y') }}</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <p class="card-title">{{ Str::limit($agenda->agenda, 30) }}</p>
                                                <small class="text-muted">{{ $agenda->waktu }}</small>
                                                <p class="mb-1">{{ $agenda->perihal }}</p>
                                                <a href="{{ route('agenda.show', Crypt::encrypt($agenda->id)) }}"
                                                    class="btn btn-sm btn-primary">Detail</a>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
    </section>
    <section class="py-4 bg-light">
        <div class="container">
            <div class="owl-carousel owl-theme">
                @foreach ($aplikasi_terkait as $apk)
                    <div class="row justify-content-center">
                        <div>
                            <a href="{{ $apk->link_aplikasi }}" target="_blank">
                                <img src="{{ asset('storage/' . $apk->logo_aplikasi) }}"
                                    style="width: auto; height: 50px;" class="avatar"
                                    alt="{{ $apk->nama_aplikasi }}">
                            </a>
                        </div>
                    </div><!--end item-->
                @endforeach
            </div><!--end owl-carousel-->
        </div><!--end container-->
    </section><!--end section-->

    @include('footer', ['detailAplikasi' => $detailAplikasi])
</body>

</html>
