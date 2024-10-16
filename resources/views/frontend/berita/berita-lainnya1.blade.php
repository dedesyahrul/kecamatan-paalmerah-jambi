<div class="col-lg-6 col-md-12 mb-4 pb-2">
    <div class="card blog rounded border-0 shadow">
        <div class="position-relative">
            <div class="img-crop">
                <img src="{{ asset('storage/' . $berita->foto) }}" class="card-img-top rounded-top" alt="...">
            </div>
            <div class="overlay rounded-top bg-dark"></div>
        </div>
        <div class="card-body content">
            <h5><a href="{{ route('berita.show', $berita->id) }}"
                    class="card-title title text-dark">{{ Str::limit($berita->judul, 30, '...') }}</a></h5>
            <div class="post-meta d-flex justify-content-between mt-3">
                <ul class="list-unstyled mb-0"></ul>
                <a href="{{ route('berita.show', $berita->id) }}" class="text-muted readmore">Selengkapnya <i
                        class="uil uil-angle-right-b align-middle"></i></a>
            </div>
        </div>
        <div class="author">
            <small class="text-light user d-block">{{ $berita->author }}</small>
            <small class="text-light date"><i
                    class="uil uil-calendar-alt"></i>{{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('l, d F Y') }}</small>
        </div>
    </div>
</div>
