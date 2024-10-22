<div class="col-lg-12 col-md-12 mb-4">
    <article class="news-card hover-lift">
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
            <h3 class="news-card__title">
                <a
                    href="{{ route('berita.show', ['slug' => $berita->slug, 'token' => $berita->token]) }}">{{ Str::limit($berita->judul, 70) }}</a>
            </h3>
            <p class="news-card__headline">{{ Str::limit($berita->headline, 100) }}</p>
            <p class="news-card__excerpt">{{ Str::limit(strip_tags($berita->isi_berita), 150) }}</p>
            <div class="news-card__meta">
                <span class="news-card__author"><i class="fas fa-user-circle"></i>
                    {{ $berita->penulis ? $berita->penulis : 'Admin' }}</span>
                <span class="news-card__date"><i class="fas fa-calendar-alt"></i>
                    {{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('d M Y') }}</span>
            </div>
            <a href="{{ route('berita.show', ['slug' => $berita->slug, 'token' => $berita->token]) }}"
                class="news-card__read-more">
                Baca selengkapnya <i class="fas fa-long-arrow-alt-right"></i>
            </a>
        </div>
    </article>
</div>

<style>
    .news-card {
        display: flex;
        background-color: #ffffff;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
    }

    .hover-lift:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    }

    .news-card__image-wrapper {
        flex: 0 0 35%;
        position: relative;
    }

    .news-card__image {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .news-card__category {
        position: absolute;
        top: 15px;
        left: 15px;
        background-color: #007bff;
        color: #ffffff;
        padding: 5px 10px;
        border-radius: 20px;
        font-size: 0.75rem;
        font-weight: 600;
        text-transform: uppercase;
    }

    .news-card__content {
        flex: 1;
        padding: 25px;
        display: flex;
        flex-direction: column;
    }

    .news-card__title {
        font-size: 1.4rem;
        font-weight: 700;
        margin-bottom: 10px;
        line-height: 1.3;
    }

    .news-card__title a {
        color: #333;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .news-card__title a:hover {
        color: #007bff;
    }

    .news-card__excerpt {
        font-size: 0.95rem;
        color: #666;
        margin-bottom: 15px;
        flex-grow: 1;
    }

    .news-card__meta {
        display: flex;
        justify-content: space-between;
        font-size: 0.85rem;
        color: #888;
        margin-bottom: 15px;
    }

    .news-card__author,
    .news-card__date {
        display: flex;
        align-items: center;
    }

    .news-card__author i,
    .news-card__date i {
        margin-right: 5px;
    }

    .news-card__read-more {
        align-self: flex-start;
        color: #007bff;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
    }

    .news-card__read-more:hover {
        color: #0056b3;
    }

    .news-card__read-more i {
        margin-left: 5px;
        transition: transform 0.3s ease;
    }

    .news-card__read-more:hover i {
        transform: translateX(5px);
    }

    @media (max-width: 768px) {
        .news-card {
            flex-direction: column;
        }

        .news-card__image-wrapper {
            flex: 0 0 200px;
        }

        .news-card__title {
            font-size: 1.2rem;
        }

        .news-card__excerpt {
            font-size: 0.9rem;
        }

        .news-card__meta {
            flex-direction: column;
            align-items: flex-start;
        }

        .news-card__date {
            margin-top: 5px;
        }
    }
</style>
