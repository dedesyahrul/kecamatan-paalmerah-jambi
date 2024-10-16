@extends('layouts.app')

@section('title', 'Seksi Pemerintahan Umum | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Seksi Pemerintahan Umum </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Seksi Pemerintahan Umum
                                    </li>
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
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <h4 class="title mb-4">SEKSI DAN BAGIAN KECAMATAN PAAL MERAH, KOTA JAMBI</h4>
                        <p class="text-muted para-desc mx-auto mb-0">Kecamatan Paal Merah, Kota Jambi terdiri dari beberapa
                            seksi dan bagian yang berperan dalam mendukung pemerintahan dan pelayanan publik.</p>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="row">
                <div class="col-md-4 mt-4 pt-2">
                    <!-- Menu Navigasi -->
                    <ul class="nav nav-pills nav-justified flex-column bg-white rounded shadow p-3 mb-4 sticky-bar"
                        id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link rounded active" id="tugas-pemerintahan-tab" data-bs-toggle="pill"
                                href="#tugas-pemerintahan" role="tab" aria-controls="tugas-pemerintahan"
                                aria-selected="true">
                                <div class="text-start d-flex align-items-center justify-content-between py-1 px-2">
                                    <h6 class="mb-0"><i class="uil uil-postcard me-2 h5"></i> Tugas Pokok & Fungsi</h6>
                                    <i class="uil uil-angle-right-b"></i>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item mt-2">
                            <a class="nav-link rounded" id="seksi-penduduk-tab" data-bs-toggle="pill" href="#seksi-penduduk"
                                role="tab" aria-controls="seksi-penduduk" aria-selected="false">
                                <div class="text-start d-flex align-items-center justify-content-between py-1 px-2">
                                    <h6 class="mb-0"><i class="uil uil-users-alt me-2 h5"></i> Data Penduduk</h6>
                                    <i class="uil uil-angle-right-b"></i>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item mt-2">
                            <a class="nav-link rounded" id="seksi-tetap-tab" data-bs-toggle="pill" href="#seksi-tetap"
                                role="tab" aria-controls="seksi-tetap" aria-selected="false">
                                <div class="text-start d-flex align-items-center justify-content-between py-1 px-2">
                                    <h6 class="mb-0"><i class="uil uil-home me-2 h5"></i> Data Pemilih Tetap</h6>
                                    <i class="uil uil-angle-right-b"></i>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item mt-2">
                            <a class="nav-link rounded" id="seksi-pbb-tab" data-bs-toggle="pill" href="#seksi-pbb"
                                role="tab" aria-controls="seksi-pbb" aria-selected="false">
                                <div class="text-start d-flex align-items-center justify-content-between py-1 px-2">
                                    <h6 class="mb-0"><i class="uil uil-building me-2 h5"></i> Realisasi PBB</h6>
                                    <i class="uil uil-angle-right-b"></i>
                                </div>
                            </a>
                        </li>
                    </ul>
                    @include('frontend.partials.sidebar-seksi')
                </div><!--end col-->

                <div class="col-md-8 col-12 mt-4 pt-2">
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active bg-white p-4 rounded shadow" id="tugas-pemerintahan"
                            role="tabpanel" aria-labelledby="tugas-pemerintahan-tab">
                            @foreach ($tugasPokokPemerintahan as $tugas)
                                <h4 class="mb-4">{{ $tugas->judul }}</h4>
                                <p class="text-muted">{{ $tugas->keterangan }}</p>
                                <ul class="list-unstyled d-flex justify-content-between mt-4">
                                    <li class="list-inline-item date text-muted">
                                        <i class="uil uil-calendar-alt text-dark"></i>
                                        {{ \Carbon\Carbon::parse($tugas->created_at)->translatedFormat('l, d F Y') }}
                                    </li>
                                </ul>
                                <div class="tinymce-content">
                                    {!! $tugas->isi !!}
                                </div>
                                @if ($tugas->foto)
                                    <div class="mt-4">
                                        <img src="{{ asset('storage/' . $tugas->foto) }}" class="img-fluid"
                                            alt="{{ $tugas->judul }}">
                                    </div>
                                @endif
                            @endforeach
                        </div><!--end tab pane-->

                        <div class="tab-pane fade bg-white p-4 rounded shadow" id="seksi-penduduk" role="tabpanel"
                            aria-labelledby="seksi-penduduk-tab">
                            @foreach ($seksiPenduduk as $penduduk)
                                <h4 class="mb-4">{{ $penduduk->judul }}</h4>
                                <p class="text-muted">{{ $penduduk->keterangan }}</p>
                                <ul class="list-unstyled d-flex justify-content-between mt-4">
                                    <li class="list-inline-item date text-muted">
                                        <i class="uil uil-calendar-alt text-dark"></i>
                                        {{ \Carbon\Carbon::parse($penduduk->created_at)->translatedFormat('l, d F Y') }}
                                    </li>
                                </ul>
                                <div class="tinymce-content">
                                    {!! $penduduk->isi !!}
                                </div>
                                @if ($penduduk->foto)
                                    <div class="mt-4">
                                        <img src="{{ asset('storage/' . $penduduk->foto) }}" class="img-fluid"
                                            alt="{{ $penduduk->judul }}">
                                    </div>
                                @endif
                            @endforeach
                        </div><!--end tab pane-->

                        <div class="tab-pane fade bg-white p-4 rounded shadow" id="seksi-tetap" role="tabpanel"
                            aria-labelledby="seksi-tetap-tab">
                            @foreach ($seksiTetap as $tetap)
                                <h4 class="mb-4">{{ $tetap->judul }}</h4>
                                <p class="text-muted">{{ $tetap->keterangan }}</p>
                                <ul class="list-unstyled d-flex justify-content-between mt-4">
                                    <li class="list-inline-item date text-muted">
                                        <i class="uil uil-calendar-alt text-dark"></i>
                                        {{ \Carbon\Carbon::parse($tetap->created_at)->translatedFormat('l, d F Y') }}
                                    </li>
                                </ul>
                                <div class="tinymce-content">
                                    {!! $tetap->isi !!}
                                </div>
                                @if ($tetap->foto)
                                    <div class="mt-4">
                                        <img src="{{ asset('storage/' . $tetap->foto) }}" class="img-fluid"
                                            alt="{{ $tetap->judul }}">
                                    </div>
                                @endif
                            @endforeach
                        </div><!--end tab pane-->

                        <div class="tab-pane fade bg-white p-4 rounded shadow" id="seksi-pbb" role="tabpanel"
                            aria-labelledby="seksi-pbb-tab">
                            @foreach ($seksiPbb as $pbb)
                                <h4 class="mb-4">{{ $pbb->judul }}</h4>
                                <p class="text-muted">{{ $pbb->keterangan }}</p>
                                <ul class="list-unstyled d-flex justify-content-between mt-4">
                                    <li class="list-inline-item date text-muted">
                                        <i class="uil uil-calendar-alt text-dark"></i>
                                        {{ \Carbon\Carbon::parse($pbb->created_at)->translatedFormat('l, d F Y') }}
                                    </li>
                                </ul>
                                <div class="tinymce-content">
                                    {!! $pbb->isi !!}
                                </div>
                                @if ($pbb->foto)
                                    <div class="mt-4">
                                        <img src="{{ asset('storage/' . $pbb->foto) }}" class="img-fluid"
                                            alt="{{ $pbb->judul }}">
                                    </div>
                                @endif
                            @endforeach
                        </div><!--end tab pane-->
                    </div><!--end tab content-->
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
    </section><!--end section-->

@endsection
