@extends('layouts.app')

@section('title',
    'Data Penduduk Kelurahan ' .
    $kelurahan->nama .
    ' | Official Website Kecamatan Paal Merah | Pemerintah Kota
    Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark">{{ $kelurahan->nama }}</h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Kelurahan</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ $kelurahan->nama }}</li>
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
                        <div class="card-body">
                            <h3 class="card-title">{{ $dataPenduduk->judul }}</h3>
                            <ul class="list-unstyled d-flex justify-content-between mt-4">
                                <li class="list-inline-item date text-muted"><i class="uil uil-calendar-alt text-dark"></i>
                                    {{ \Carbon\Carbon::parse($dataPenduduk->created_at)->translatedFormat('l, d F Y') }}
                                </li>
                            </ul>
                            <hr>
                            <div>
                                <img src="{{ asset('storage/' . $dataPenduduk->foto) }}"
                                    class="img-fluid rounded-md shadow mb-4" alt="">
                                <small>{{ $dataPenduduk->text_foto }}</small>
                                <div class="tinymce-content">
                                    {!! $dataPenduduk->isi !!}
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- BLog End -->

                <!-- START SIDEBAR -->
                @include('frontend.partials.sidebar-front')
                <!-- END SIDEBAR -->
            </div><!--end row-->
        </div><!--end container-->
    </section><!--end section-->


@endsection
