<div class="container mt-100 mt-60">
    <div class="row align-items-center mb-5">
        <div class="col-lg-8">
            <div class="section-title text-center text-lg-start">
                <h4 class="mb-4">Galeri Foto Kegiatan</h4>
                <p class="text-muted mb-0 para-desc">Nikmati momen-momen berharga dalam galeri foto kegiatan kami, yang
                    merefleksikan semangat dan dedikasi kami dalam setiap langkah.</p>
            </div>
        </div><!--end col-->

        <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="text-center text-lg-end">
                <a href="{{ route('indexFoto') }}" class="btn btn-soft-primary">
                    Lihat Lebih Banyak
                    <i data-feather="arrow-right" class="fea icon-sm ms-1"></i>
                </a>
            </div>
        </div><!--end col-->
    </div><!--end row-->

    <div class="row g-4">
        @foreach ($fotos as $foto)
            <div class="col-lg-4 col-md-6 mb-4">
                <article class="photo-card hover-lift h-100">
                    <div class="photo-card__image-wrapper">
                        @php
                            $foto_pertama = json_decode($foto->foto)[0];
                        @endphp
                        <img src="{{ asset('storage/' . $foto_pertama) }}" class="photo-card__image"
                            alt="{{ $foto->judul }}">
                    </div>
                    <div class="photo-card__content">
                        <h5 class="photo-card__title">
                            <a
                                href="{{ route('galeri.detail', ['id' => $foto->id]) }}">{{ Str::limit($foto->judul, 45, '...') }}</a>
                        </h5>
                        <div class="photo-card__meta">
                            <span class="photo-card__date"><i class="uil uil-calendar-alt"></i>
                                {{ \Carbon\Carbon::parse($foto->created_at)->translatedFormat('d M Y') }}
                            </span>
                        </div>
                        <a href="{{ route('galeri.detail', ['id' => $foto->id]) }}" class="photo-card__read-more">
                            Lihat Detail <i class="uil uil-arrow-right"></i>
                        </a>
                    </div>
                </article>
            </div><!--end col-->
        @endforeach
    </div><!--end row-->
</div><!--end container-->

<style>
    .row.g-4 {
        margin-left: -15px;
        margin-right: -15px;
    }

    .row.g-4>[class*="col-"] {
        padding-left: 15px;
        padding-right: 15px;
    }

    .photo-card {
        display: flex;
        flex-direction: column;
        background-color: #ffffff;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        height: 100%;
    }

    .hover-lift:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    }

    .photo-card__image-wrapper {
        position: relative;
        padding-top: 66.67%;
        /* 3:2 Aspect Ratio */
        overflow: hidden;
    }

    .photo-card__image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .photo-card:hover .photo-card__image {
        transform: scale(1.05);
    }

    .photo-card__content {
        padding: 20px;
        display: flex;
        flex-direction: column;
        flex-grow: 1;
    }

    .photo-card__title {
        font-size: 1.2rem;
        font-weight: 700;
        margin-bottom: 10px;
        line-height: 1.3;
    }

    .photo-card__title a {
        color: #333;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .photo-card__title a:hover {
        color: #007bff;
    }

    .photo-card__meta {
        font-size: 0.85rem;
        color: #888;
        margin-bottom: 15px;
    }

    .photo-card__date {
        display: flex;
        align-items: center;
    }

    .photo-card__date i {
        margin-right: 5px;
    }

    .photo-card__read-more {
        margin-top: auto;
        align-self: flex-start;
        color: #007bff;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
    }

    .photo-card__read-more:hover {
        color: #0056b3;
    }

    .photo-card__read-more i {
        margin-left: 5px;
        transition: transform 0.3s ease;
    }

    .photo-card__read-more:hover i {
        transform: translateX(5px);
    }

    @media (max-width: 768px) {
        .photo-card__title {
            font-size: 1.1rem;
        }
    }
</style>
