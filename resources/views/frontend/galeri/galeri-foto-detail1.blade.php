@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Galeri Foto Kegiatan </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/galeri/foto') }}">Galeri Foto</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div> <!--end col-->
        </div><!--end row-->
    </div> <!--end container-->
</section><!--end section-->
<!-- Hero End -->

<!-- Shape Start -->
<div class="position-relative">
    <div class="shape overflow-hidden text-white">
        <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
        </svg>
    </div>
</div>
<!--Shape End-->

<!-- Berita Start -->
<section class="section">
    <div class="container mt-100 mt-60" id="portfolio">
        <div class="row">
            <div class="col-12">
                <div class="section-title mb-4 pb-2">
                    <h4 class="title mb-2">{{ $foto->judul }}</h4>
                    <small>
                        {{ \Carbon\Carbon::parse($foto->created_at)->translatedFormat('l, d F Y') }}</small>
                    <p>{{ $foto->keterangan }}</p>
                </div>
            </div><!--end col-->
        </div><!--end row-->

        <div class="row">
            @foreach ($foto->foto as $image)
                <div class="col-lg-4 col-md-6 mt-4 pt-2">
                    <div
                        class="card border-0 work-container work-modern position-relative d-block overflow-hidden rounded">
                        <div class="portfolio-box-img position-relative overflow-hidden">
                            <img class="item-container img-fluid mx-auto" src="{{ asset('storage/' . $image) }}"
                                alt="{{ $foto->judul }}" />

                            <div class="overlay-work bg-dark"></div>
                            <div class="content">
                                <h5 class="mb-0"><a href="{{ asset('storage/' . $image) }}"
                                        class="text-white title">Foto</a></h5>
                                <h6 class="text-light tag mb-0">Branding</h6>
                            </div>
                            <div class="icons text-center">
                                <a href="{{ asset('storage/' . $image) }}"
                                    class="text-primary work-icon bg-white d-inline-block rounded-pill lightbox"><i
                                        data-feather="camera" class="fea icon-sm image-icon"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div><!--end row-->
    </div><!--end container-->

    <div class="container mt-100 mt-60">
        <div class="row">
            <div class="col-12">
                <div class="section-title mb-4 pb-2">
                    <h4 class="title mb-4">Daftar Agenda</h4>
                    <p class="text-muted para-desc mb-0">Berikut <span class="text-primary fw-bold">Agenda</span>
                        kegiatan yang di ikuti Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur,
                        terjadwal.</p>
                </div>
            </div><!--end col-->
        </div><!--end row-->

        <div class="row">
            @foreach ($agenda as $agd)
                <div class="col-md-4 mt-4 pt-2">
                    <div class="card work-process border-0 rounded shadow">
                        <div class="card-body">
                            <h4 class="title">{{ $agd->agenda }}</h4>
                            <p class="text-muted para">{{ $agd->tempat }}</p>
                            <a href="{{ route('agenda.show', Crypt::encrypt($agd->id)) }}" class="text-primary">Detail
                                <i class="uil uil-angle-right-b"></i></a>
                            <ul class="list-unstyled d-flex justify-content-between mb-0 mt-2">
                                <li class="step h1 mb-0 fw-bold">
                                    {{ \Carbon\Carbon::parse($agd->tanggal)->format('dMY') }}</li>
                                <li class="step-icon"><i class="uil uil-angle-double-right h1 mb-0"></i></li>
                            </ul>
                        </div>
                    </div>
                </div><!--end col-->
            @endforeach
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->

@include('footer')
