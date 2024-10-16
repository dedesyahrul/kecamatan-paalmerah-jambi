<div class="card shadow rounded border-0 mt-4">
    <div class="card-body">
        <h5 class="card-title mb-0">Berita Terbaru :</h5>
        <div class="owl-carousel owl-theme">
            @foreach ($beritas as $berita)
                <div class="item">
                    <div class="card blog rounded border-0 shadow">
                        <div class="position-relative">
                            <img src="{{ asset('storage/' . $berita->foto) }}" class="card-img-top rounded-top"
                                alt="...">
                            <div class="overlay rounded-top bg-dark"></div>
                        </div>
                        <div class="card-body content">
                            <h5><a href="{{ route('berita.show', $berita->id) }}"
                                    class="card-title title text-dark">{{ Str::limit($berita->judul, 14, '...') }}</a>
                            </h5>
                            <div class="post-meta d-flex justify-content-between mt-3">
                                <a href="{{ route('berita.show', $berita->id) }}"
                                    class="text-muted readmore">Selengkapnya <i
                                        class="uil uil-angle-right-b align-middle"></i></a>
                            </div>
                        </div>
                        <div class="author">
                            <small class="text-light user d-block">{{ $berita->headline }}</small>
                            <small class="text-light date"><i
                                    class="uil uil-calendar-alt"></i>{{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('l, d F Y') }}</small>
                        </div>
                    </div>
                </div><!--end item-->
            @endforeach
        </div><!--end owl-carousel-->
    </div>
</div>
