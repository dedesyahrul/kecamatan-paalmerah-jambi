@extends('layouts.app')

@section('title', 'Alur Pengaduan | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Alur Pengaduan </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Alur Pengaduan</li>
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
                <div class="col-lg-10">
                    @if ($alurPengaduans->isEmpty())
                        <p>Tidak ada data Alur Pengaduan.</p>
                    @else
                        @foreach ($alurPengaduans as $alurPengaduan)
                            <div class="row">
                                <div class="col-md-2 d-none d-md-block">
                                    <ul class="list-unstyled text-center sticky-bar social-icon mb-0">
                                        <li>
                                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}"
                                                class="rounded" target="_blank">
                                                <i data-feather="facebook" class="fea icon-sm fea-social"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://wa.me/?text={{ urlencode($alurPengaduan->judul . ' ' . url()->current()) }}"
                                                class="rounded" target="_blank">
                                                <i data-feather="message-circle" class="fea icon-sm fea-social"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-10">
                                    <h4 class="title mb-2">{{ $alurPengaduan->judul }}</h4>
                                    <p class="text-muted">{{ $alurPengaduan->keterangan }}</p>
                                    <ul class="list-unstyled d-flex justify-content-between mt-4">
                                        <li class="list-inline-item date text-muted"><i
                                                class="uil uil-calendar-alt text-dark"></i>
                                            {{ \Carbon\Carbon::parse($alurPengaduan->created_at)->translatedFormat('l, d F Y') }}
                                        </li>
                                    </ul>
                                    <div class="tinymce-content">
                                        {!! $alurPengaduan->isi !!}
                                    </div>


                                    <img src="{{ asset('storage/' . $alurPengaduan->foto) }}"
                                        class="img-fluid rounded-md shadow mb-4" alt="">
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection