@extends('layouts.app')

@section('title', 'Pengumuman | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Pengumuman </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Pengumuman</li>
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
                    <div class="card shadow rounded border-0 mt-4">
                        <div class="card-body bg-light">
                            <h2 class="mb-4 text-primary">
                                <i class="fas fa-bullhorn me-2"></i>Daftar Pengumuman
                            </h2>
                            <div class="pengumuman-list">
                                @forelse ($pengumuman as $index => $pengu)
                                    @php
                                        $colors = ['primary', 'success', 'info', 'warning', 'danger'];
                                        $color = $colors[$index % count($colors)];
                                        $icons = [
                                            'fa-bell',
                                            'fa-info-circle',
                                            'fa-exclamation-circle',
                                            'fa-star',
                                            'fa-flag',
                                        ];
                                        $icon = $icons[$index % count($icons)];
                                    @endphp
                                    <div class="card mb-3 border-0 shadow-sm hover-shadow animation-fade-in">
                                        <div class="card-body">
                                            {{-- <div class="ribbon ribbon-top-right"><span
                                                    class="bg-{{ $color }}">Baru</span></div> --}}
                                            <div class="d-flex justify-content-between align-items-center mb-2">
                                                <h5 class="card-title mb-0 text-{{ $color }}">
                                                    <i class="fas {{ $icon }} me-2"></i>{{ $pengu->judul }}
                                                </h5>
                                                <span class="badge bg-{{ $color }} rounded-pill">
                                                    <i class="far fa-calendar-alt me-1"></i>
                                                    {{ \Carbon\Carbon::parse($pengu->created_at)->format('d M Y') }}
                                                </span>
                                            </div>
                                            <p class="card-text text-muted mb-3">
                                                {{ Str::limit(strip_tags($pengu->isi_pengumuman), 150) }}
                                            </p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <small class="text-{{ $color }}">
                                                    <i class="far fa-clock me-1"></i>
                                                    {{ \Carbon\Carbon::parse($pengu->created_at)->format('H:i') }}
                                                </small>
                                                <button type="button"
                                                    class="btn btn-outline-{{ $color }} btn-sm rounded-pill animate-hover"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#pengumumanModal{{ $pengu->id }}">
                                                    Baca Selengkapnya <i class="fas fa-arrow-right ms-1"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <div class="alert alert-info">
                                        <i class="fas fa-info-circle me-2"></i>Belum ada pengumuman saat ini.
                                    </div>
                                @endforelse
                            </div>
                            @if ($pengumuman->hasPages())
                                <nav aria-label="Halaman Pengumuman" class="mt-4">
                                    <ul class="pagination pagination-modern justify-content-center flex-wrap">
                                        {{-- Previous Page Link --}}
                                        @if ($pengumuman->onFirstPage())
                                            <li class="page-item disabled">
                                                <span class="page-link" aria-hidden="true">&laquo;</span>
                                            </li>
                                        @else
                                            <li class="page-item">
                                                <a class="page-link" href="{{ $pengumuman->previousPageUrl() }}"
                                                    rel="prev" aria-label="&laquo; Sebelumnya">&laquo;</a>
                                            </li>
                                        @endif

                                        {{-- Pagination Elements --}}
                                        @foreach ($pengumuman->getUrlRange(1, $pengumuman->lastPage()) as $page => $url)
                                            @if ($page == $pengumuman->currentPage())
                                                <li class="page-item active" aria-current="page">
                                                    <span class="page-link">{{ $page }}</span>
                                                </li>
                                            @else
                                                <li class="page-item">
                                                    <a class="page-link"
                                                        href="{{ $url }}">{{ $page }}</a>
                                                </li>
                                            @endif
                                        @endforeach

                                        {{-- Next Page Link --}}
                                        @if ($pengumuman->hasMorePages())
                                            <li class="page-item">
                                                <a class="page-link" href="{{ $pengumuman->nextPageUrl() }}" rel="next"
                                                    aria-label="Selanjutnya &raquo;">&raquo;</a>
                                            </li>
                                        @else
                                            <li class="page-item disabled">
                                                <span class="page-link" aria-hidden="true">&raquo;</span>
                                            </li>
                                        @endif
                                    </ul>
                                </nav>
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
                            <div class="fb-comments" data-href="{{ url()->current() }}" data-numposts="5" data-width="">
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


    <style>
        .pengumuman-list .card {
            transition: all 0.3s ease;
            border-left: 5px solid;
            overflow: hidden;
        }

        .pengumuman-list .card:nth-child(5n+1) {
            border-left-color: var(--bs-primary);
        }

        .pengumuman-list .card:nth-child(5n+2) {
            border-left-color: var(--bs-success);
        }

        .pengumuman-list .card:nth-child(5n+3) {
            border-left-color: var(--bs-info);
        }

        .pengumuman-list .card:nth-child(5n+4) {
            border-left-color: var(--bs-warning);
        }

        .pengumuman-list .card:nth-child(5n+5) {
            border-left-color: var(--bs-danger);
        }

        .pengumuman-list .hover-shadow:hover {
            transform: translateY(-5px);
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15) !important;
        }

        .pengumuman-list .btn-outline-primary,
        .pengumuman-list .btn-outline-success,
        .pengumuman-list .btn-outline-info,
        .pengumuman-list .btn-outline-warning,
        .pengumuman-list .btn-outline-danger {
            border-width: 2px;
            font-weight: 500;
        }

        .pengumuman-list .badge {
            font-weight: normal;
            padding: 0.5em 0.75em;
        }

        .animation-fade-in {
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate-hover {
            transition: all 0.3s ease;
        }

        .animate-hover:hover {
            transform: translateX(5px);
        }

        .ribbon {
            width: 150px;
            height: 150px;
            overflow: hidden;
            position: absolute;
        }

        .ribbon span {
            position: absolute;
            display: block;
            width: 225px;
            padding: 5px 0;
            background-color: #3498db;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
            color: #fff;
            font: 700 18px/1 'Lato', sans-serif;
            text-shadow: 0 1px 1px rgba(0, 0, 0, .2);
            text-transform: uppercase;
            text-align: center;
        }

        .ribbon-top-right {
            top: -10px;
            right: -10px;
        }

        .ribbon-top-right span {
            left: -25px;
            top: 30px;
            transform: rotate(45deg);
        }
    </style>

    <style>
        .pagination-modern {
            gap: 5px;
        }

        .pagination-modern .page-item {
            margin: 0 2px;
        }

        .pagination-modern .page-link {
            border: none;
            background-color: #f8f9fa;
            color: #495057;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .pagination-modern .page-item.active .page-link,
        .pagination-modern .page-link:hover {
            background-color: #007bff;
            color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 123, 255, 0.5);
        }

        .pagination-modern .page-item.disabled .page-link {
            background-color: #e9ecef;
            color: #6c757d;
        }

        @media (max-width: 576px) {
            .pagination-modern .page-link {
                width: 35px;
                height: 35px;
                font-size: 0.875rem;
            }
        }
    </style>

    <style>
        .modal-dialog-scrollable {
            max-height: 90vh;
        }

        .modal-content {
            border-radius: 1rem;
        }

        .modal-header,
        .modal-footer {
            position: sticky;
            z-index: 1020;
        }

        .modal-header {
            top: 0;
        }

        .modal-footer {
            bottom: 0;
        }

        .pengumuman-content {
            overflow-y: auto;
            max-height: calc(90vh - 200px);
            /* Adjust based on your header and footer height */
        }

        .pengumuman-content::-webkit-scrollbar {
            width: 8px;
        }

        .pengumuman-content::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 10px;
        }

        .pengumuman-content::-webkit-scrollbar-thumb {
            background: #888;
            border-radius: 10px;
        }

        .pengumuman-content::-webkit-scrollbar-thumb:hover {
            background: #555;
        }

        .pengumuman-content img {
            max-width: 100%;
            height: auto;
            border-radius: 0.5rem;
            margin: 1rem 0;
        }

        .btn {
            transition: all 0.3s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
        }
    </style>

    <style>
        .file-pendukung .btn-outline-primary,
        .file-pendukung .btn-outline-success,
        .file-pendukung .btn-outline-info,
        .file-pendukung .btn-outline-warning,
        .file-pendukung .btn-outline-danger {
            transition: all 0.3s ease;
        }

        .file-pendukung .btn-outline-primary:hover,
        .file-pendukung .btn-outline-success:hover,
        .file-pendukung .btn-outline-info:hover,
        .file-pendukung .btn-outline-warning:hover,
        .file-pendukung .btn-outline-danger:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
        }
    </style>

    @foreach ($pengumuman as $index => $pengu)
        @php
            $colors = ['primary', 'success', 'info', 'warning', 'danger'];
            $color = $colors[$index % count($colors)];
            $icons = ['fa-bell', 'fa-info-circle', 'fa-exclamation-circle', 'fa-star', 'fa-flag'];
            $icon = $icons[$index % count($icons)];
        @endphp
        <div class="modal fade" id="pengumumanModal{{ $pengu->id }}" tabindex="-1"
            aria-labelledby="pengumumanModalLabel{{ $pengu->id }}" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow-lg rounded-lg overflow-hidden">
                    <div class="modal-header bg-{{ $color }} py-3 sticky-top">
                        <h5 class="modal-title text-white fw-bold" id="pengumumanModalLabel{{ $pengu->id }}">
                            <i class="fas {{ $icon }} me-2"></i>{{ $pengu->judul }}
                        </h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-4">
                        <div class="d-flex justify-content-between align-items-center mb-4 sticky-top bg-white pt-2 pb-3">
                            <span class="badge bg-{{ $color }} rounded-pill px-3 py-2">
                                <i class="far fa-calendar-alt me-1"></i>
                                {{ \Carbon\Carbon::parse($pengu->created_at)->format('d M Y') }}
                            </span>
                            <span class="text-muted small">
                                <i class="far fa-clock me-1"></i>
                                {{ \Carbon\Carbon::parse($pengu->created_at)->format('H:i') }} WIB
                            </span>
                        </div>
                        <div class="pengumuman-content bg-light p-4 rounded-3 shadow-sm mb-4">
                            {!! $pengu->isi_pengumuman !!}
                        </div>

                        @php
                            $files = json_decode($pengu->file_pendukung);
                        @endphp

                        @if (!is_null($files) && count($files) > 0)
                            <div class="file-pendukung mt-4">
                                <h6 class="mb-3"><i class="fas fa-paperclip me-2"></i>File Pendukung:</h6>
                                <div class="d-flex flex-wrap gap-2">
                                    @foreach ($files as $index => $file)
                                        @if (!empty($file->download_link))
                                            <a href="{{ asset('storage/' . $file->download_link) }}"
                                                class="btn btn-outline-{{ $color }} btn-sm rounded-pill" download>
                                                <i class="fas fa-file-download me-1"></i>
                                                Download File
                                            </a>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="modal-footer border-0 pt-0 sticky-bottom bg-white">
                        <button type="button" class="btn btn-light rounded-pill px-4" data-bs-dismiss="modal">
                            <i class="fas fa-times me-2"></i>Tutup
                        </button>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

@endsection
