@extends('layouts.app')

@section('title', 'Galeri Video | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Galeri Video </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Galeri Video</li>
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
            <h3 class="title mb-4">Galeri Video Kegiatan</h3>
            <div class="row">
                <div class="col-lg-8 col-md-6">
                    <div class="row">
                        @foreach ($videos as $video)
                            <div class="col-lg-6 col-md-12 mb-4 pb-2">
                                <div class="card blog rounded border-0 shadow">
                                    <div class="position-relative">
                                        <iframe width="100%" height="240"
                                            src="{{ str_replace('watch?v=', 'embed/', $video->youtube_link) }}"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen class="card-img-top rounded-top"></iframe>
                                    </div>
                                    <div class="card-body content">
                                        <h5><a href="javascript:void(0)"
                                                class="card-title title text-dark">{{ $video->judul }}</a></h5>
                                        <p>{{ $video->keterangan }}</p>
                                        <div class="post-meta d-flex justify-content-between mt-3">
                                            <ul class="list-unstyled mb-0">
                                                <small><i class="uil uil-calendar-alt"></i>
                                                    {{ $video->created_at->format('d M Y') }}</small>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        <!-- PAGINATION START -->
                        <div class="col-12">
                            <ul class="pagination justify-content-center mb-0">
                                {{ $videos->links('pagination::bootstrap-4') }}
                            </ul>
                        </div>
                        <!-- PAGINATION END -->
                    </div>
                </div>

                <!-- START SIDEBAR -->
                @include('frontend.partials.sidebar-front')
                <!-- END SIDEBAR -->
            </div><!--end row-->
        </div><!--end container-->
    </section><!--end section-->
@endsection
