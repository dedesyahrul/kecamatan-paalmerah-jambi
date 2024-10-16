<div class="col-12 mb-4">
    <article class="news-card news-card--featured">
        <div class="news-card__image-wrapper">
            <img src="{{ asset('storage/' . $berita->foto) }}" class="news-card__image" alt="{{ $berita->judul }}">
            <div class="news-card__category">
                @php
                    $kategori = collect($kategoriBeritas)->firstWhere('id', $berita->kategori_id);
                @endphp
                @if ($kategori)
                    {{ $kategori->nama_kategori }}
                @else
                    Tidak berkategori
                @endif
            </div>
        </div>
        <div class="news-card__content">
            <h2 class="news-card__title">
                <a href="{{ route('berita.show', $berita->id) }}">{{ $berita->judul }}</a>
            </h2>
            <p class="news-card__headline">{{ Str::limit($berita->headline, 150) }}</p>
            <p class="news-card__excerpt">{{ Str::limit(strip_tags($berita->isi_berita), 200) }}</p>
            <div class="news-card__meta">
                <span class="news-card__author"><i class="fas fa-user-circle"></i> {{ $berita->penulis }}</span>
                <span class="news-card__date"><i class="fas fa-calendar-alt"></i>
                    {{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('d M Y') }}
                </span>
            </div>
            <a href="{{ route('berita.show', $berita->id) }}" class="news-card__read-more">
                Baca selengkapnya <i class="fas fa-arrow-right"></i>
            </a>
        </div>
    </article>
</div>

<style>
    .news-card--featured {
        display: flex;
        flex-direction: column;
        background: #fff;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
    }

    .news-card--featured:hover {
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
    }

    .news-card--featured .news-card__image-wrapper {
        position: relative;
        width: 100%;
        padding-top: 56.25%;
        /* 16:9 Aspect Ratio */
        overflow: hidden;
    }

    .news-card--featured .news-card__image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .news-card--featured:hover .news-card__image {
        transform: scale(1.05);
    }

    .news-card--featured .news-card__category {
        position: absolute;
        top: 10px;
        left: 10px;
        background: rgba(0, 123, 255, 0.8);
        color: #fff;
        padding: 4px 8px;
        border-radius: 15px;
        font-size: 0.75rem;
        font-weight: 600;
    }

    .news-card--featured .news-card__content {
        padding: 20px;
    }

    .news-card--featured .news-card__title {
        font-size: 1.5rem;
        font-weight: 700;
        margin-bottom: 10px;
        line-height: 1.3;
    }

    .news-card--featured .news-card__title a {
        color: #333;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .news-card--featured .news-card__title a:hover {
        color: #007bff;
    }

    .news-card--featured .news-card__headline {
        font-size: 1rem;
        font-weight: 600;
        color: #444;
        margin-bottom: 10px;
    }

    .news-card--featured .news-card__excerpt {
        font-size: 0.9rem;
        color: #666;
        margin-bottom: 15px;
    }

    .news-card--featured .news-card__meta {
        display: flex;
        justify-content: space-between;
        font-size: 0.8rem;
        color: #888;
        margin-bottom: 15px;
    }

    .news-card--featured .news-card__author,
    .news-card--featured .news-card__date {
        display: flex;
        align-items: center;
    }

    .news-card--featured .news-card__author i,
    .news-card--featured .news-card__date i {
        margin-right: 5px;
    }

    .news-card--featured .news-card__read-more {
        display: inline-block;
        color: #007bff;
        font-size: 0.9rem;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
    }

    .news-card--featured .news-card__read-more:hover {
        color: #0056b3;
    }

    .news-card--featured .news-card__read-more i {
        margin-left: 5px;
        transition: transform 0.3s ease;
    }

    .news-card--featured .news-card__read-more:hover i {
        transform: translateX(3px);
    }

    @media (max-width: 768px) {
        .news-card--featured .news-card__title {
            font-size: 1.2rem;
        }

        .news-card--featured .news-card__headline {
            font-size: 0.9rem;
        }

        .news-card--featured .news-card__excerpt {
            font-size: 0.8rem;
        }
    }
</style>
