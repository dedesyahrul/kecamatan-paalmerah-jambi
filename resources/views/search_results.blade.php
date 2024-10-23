@extends('layouts.app')

@section('title', 'Pencarian | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Pencarian </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Pencarian</li>
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
    <section class="section py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <h1 class="mb-4">Hasil Pencarian untuk: "{{ $query }}"</h1>

                    @if ($beritas->isEmpty())
                        <div class="text-center mt-5">
                            <img src="{{ asset('assets/images/undraw_not_found_re_bh2e.svg') }}"
                                alt="Tidak ada hasil ditemukan" class="img-fluid mb-4" style="max-width: 300px;">
                            <h3 class="text-muted">Tidak ada hasil ditemukan.</h3>
                            <p class="text-muted">Coba kata kunci lain atau periksa ejaan Anda.</p>
                        </div>
                    @else
                        <p class="text-muted mb-4">Ditemukan {{ $beritas->total() }} hasil</p>

                        @foreach ($beritas as $berita)
                            <div class="card border-0 shadow-sm mb-4">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="{{ asset('storage/' . $berita->foto) }}"
                                            class="img-fluid rounded-start h-100 object-fit-cover"
                                            alt="{{ $berita->judul }}">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title mb-2">
                                                <a href="{{ route('berita.show', ['slug' => $berita->slug, 'token' => $berita->token]) }}"
                                                    class="text-dark text-decoration-none">
                                                    {{ Str::limit($berita->judul, 60) }}
                                                </a>

                                            </h5>
                                            <p class="card-text text-muted small mb-2">
                                                <i class="fas fa-calendar-alt me-2"></i>
                                                {{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('d F Y') }}
                                            </p>
                                            <p class="card-text">{{ Str::limit(strip_tags($berita->isi_berita), 100) }}</p>
                                            <a href="{{ route('berita.show', ['slug' => $berita->slug, 'token' => $berita->token]) }}"
                                                class="btn btn-sm btn-outline-primary">
                                                Baca Selengkapnya
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        @if ($beritas->hasPages())
                            <nav aria-label="Page navigation" class="mt-4">
                                <ul class="pagination justify-content-center">
                                    {{-- Previous Page Link --}}
                                    @if ($beritas->onFirstPage())
                                        <li class="page-item disabled">
                                            <span class="page-link">&laquo;</span>
                                        </li>
                                    @else
                                        <li class="page-item">
                                            <a class="page-link" href="{{ $beritas->previousPageUrl() }}"
                                                rel="prev">&laquo;</a>
                                        </li>
                                    @endif

                                    {{-- Pagination Elements --}}
                                    @foreach ($beritas->getUrlRange(1, $beritas->lastPage()) as $page => $url)
                                        @if ($page == $beritas->currentPage())
                                            <li class="page-item active">
                                                <span class="page-link">{{ $page }}</span>
                                            </li>
                                        @else
                                            <li class="page-item">
                                                <a class="page-link" href="{{ $url }}">{{ $page }}</a>
                                            </li>
                                        @endif
                                    @endforeach

                                    {{-- Next Page Link --}}
                                    @if ($beritas->hasMorePages())
                                        <li class="page-item">
                                            <a class="page-link" href="{{ $beritas->nextPageUrl() }}"
                                                rel="next">&raquo;</a>
                                        </li>
                                    @else
                                        <li class="page-item disabled">
                                            <span class="page-link">&raquo;</span>
                                        </li>
                                    @endif
                                </ul>
                            </nav>
                        @endif


                    @endif
                </div>

                @include('frontend.partials.sidebar-front')
            </div>
        </div>
    </section>

    <style>
        .pagination {
            gap: 5px;
        }

        .page-item {
            margin: 0 2px;
        }

        .page-link {
            border: none;
            color: #333;
            background-color: #f8f9fa;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .page-item.active .page-link,
        .page-link:hover {
            background-color: #007bff;
            color: #fff;
        }

        .page-item.disabled .page-link {
            color: #6c757d;
            pointer-events: none;
            background-color: #f8f9fa;
        }
    </style>

    <style>
        .card {
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .object-fit-cover {
            object-fit: cover;
        }
    </style>
@endsection
