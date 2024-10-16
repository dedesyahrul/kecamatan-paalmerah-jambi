@extends('layouts.app')

@section('title', 'Sejarah PKK | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Sejarah PKK </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Sejarah PKK</li>
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
    <section class="sejarah-pkk-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    @if ($sejarahPkk->isEmpty())
                        <p class="text-center text-muted">Tidak ada data Sejarah PKK.</p>
                    @else
                        @foreach ($sejarahPkk as $sejarah)
                            <article class="sejarah-article">
                                <div class="sejarah-image-container">
                                    <img src="{{ asset('storage/' . $sejarah->foto) }}" class="sejarah-image"
                                        alt="{{ $sejarah->judul }}">
                                    <div class="sejarah-overlay"></div>
                                    <div class="sejarah-meta">
                                        <span class="sejarah-date">
                                            <i class="uil uil-calendar-alt"></i>
                                            {{ \Carbon\Carbon::parse($sejarah->created_at)->translatedFormat('d F Y') }}
                                        </span>
                                        <div class="sejarah-share">
                                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}"
                                                target="_blank" class="share-icon">
                                                <i data-feather="facebook"></i>
                                            </a>
                                            <a href="https://wa.me/?text={{ urlencode($sejarah->judul . ' ' . url()->current()) }}"
                                                target="_blank" class="share-icon">
                                                <i data-feather="message-circle"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="sejarah-content">
                                    <h2 class="sejarah-title">{{ $sejarah->judul }}</h2>
                                    <p class="sejarah-excerpt">{{ $sejarah->keterangan }}</p>
                                    <div class="sejarah-body">
                                        {!! $sejarah->isi !!}
                                    </div>
                                </div>
                            </article>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </section>

    <style>
        .sejarah-pkk-section {
            padding: 4rem 0;
            background-color: #f8f9fa;
        }

        .sejarah-article {
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            margin-bottom: 3rem;
            transition: transform 0.3s ease;
        }

        .sejarah-article:hover {
            transform: translateY(-5px);
        }

        .sejarah-image-container {
            position: relative;
            overflow: hidden;
        }

        .sejarah-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .sejarah-article:hover .sejarah-image {
            transform: scale(1.05);
        }

        .sejarah-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.7) 100%);
        }

        .sejarah-meta {
            position: absolute;
            bottom: 20px;
            left: 20px;
            right: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: #ffffff;
        }

        .sejarah-date {
            font-size: 0.9rem;
        }

        .sejarah-share .share-icon {
            color: #ffffff;
            margin-left: 10px;
            transition: opacity 0.3s ease;
        }

        .sejarah-share .share-icon:hover {
            opacity: 0.7;
        }

        .sejarah-content {
            padding: 2rem;
        }

        .sejarah-title {
            font-size: 1.8rem;
            margin-bottom: 1rem;
            color: #333;
        }

        .sejarah-excerpt {
            font-size: 1rem;
            color: #666;
            margin-bottom: 1.5rem;
        }

        .sejarah-body {
            font-size: 1.1rem;
            line-height: 1.8;
            color: #444;
        }

        .sejarah-body img {
            max-width: 100%;
            height: auto;
            margin: 1rem 0;
            border-radius: 8px;
        }

        @media (max-width: 768px) {
            .sejarah-image {
                height: 300px;
            }

            .sejarah-title {
                font-size: 1.5rem;
            }

            .sejarah-content {
                padding: 1.5rem;
            }
        }
    </style>
@endsection
