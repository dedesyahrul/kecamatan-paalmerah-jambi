<!-- START SIDEBAR -->
<div class="col-lg-4 col-md-6 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
    <div class="card border-0 sidebar sticky-bar rounded shadow">
        <div class="card-body">
            <!-- SEARCH -->
            <div class="widget">
                <form action="{{ route('search') }}" method="GET">
                    <div class="input-group mb-3 border rounded">
                        <input type="text" id="s" name="s" class="form-control border-0"
                            placeholder="Search Keywords...">
                        <button type="submit" class="input-group-text bg-transparent border-0" id="searchsubmit"><i
                                class="uil uil-search"></i></button>
                    </div>
                </form>
            </div>
            <!-- SEARCH -->

            <!-- Categories -->
            <div class="widget mb-4 pb-2">
                @foreach ($banner_standings as $banner)
                    <h5 class="widget-title">{{ $banner->judul }}</h5>
                    <div>
                        @if ($banner->tautan)
                            <a href="{{ $banner->tautan }}" target="_blank">
                                <img class="widget mb-4 pb-2 img-fluid" src="{{ asset('storage/' . $banner->banner) }}"
                                    alt="{{ $banner->judul }}">
                            </a>
                        @else
                            <img class="widget mb-4 pb-2 img-fluid" src="{{ asset('storage/' . $banner->banner) }}"
                                alt="{{ $banner->judul }}">
                        @endif
                    </div>
                @endforeach
            </div>
            <!-- Categories -->

            <!-- RECENT POST -->
            <div class="widget mb-4 pb-2">
                <h5 class="widget-title">Postingan Berita Terbaru</h5>
                <div class="mt-4">
                    @foreach ($recentPosts as $berita)
                        <div class="clearfix post-recent">
                            <div class="post-recent-thumb float-start">
                                <a
                                    href="{{ route('berita.show', ['slug' => $berita->slug, 'token' => $berita->token]) }}">
                                    <img alt="img" src="{{ asset('storage/' . $berita->foto) }}"
                                        class="img-fluid rounded">
                                </a>
                            </div>
                            <div class="post-recent-content float-start">
                                <a
                                    href="{{ route('berita.show', ['slug' => $berita->slug, 'token' => $berita->token]) }}">
                                    {{ $berita->judul }}
                                </a>
                                <span class="text-muted mt-2">
                                    @if ($berita->created_at)
                                        {{ $berita->created_at->format('d M, Y') }}
                                    @else
                                        Tanggal tidak tersedia
                                    @endif
                                </span>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <!-- RECENT POST -->

            @include('visitor_statistics')

            <!-- SOCIAL -->
            <div class="widget">
                <h5 class="widget-title">Follow us</h5>
                <ul class="list-unstyled social-icon mb-0 mt-4">
                    <li class="list-inline-item"><a href="https://www.facebook.com/kecamatanpaalmerahjbi"
                            class="rounded" target="_blank"><i data-feather="facebook"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="https://www.instagram.com/kecamatanpaal_merah_jbi/"
                            class="rounded" target="_blank"><i data-feather="instagram"
                                class="fea icon-sm fea-social"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="youtube"
                                class="fea icon-sm fea-social"></i></a></li>
                </ul><!--end icon-->
            </div>
            <!-- SOCIAL -->
        </div>
    </div>
</div><!--end col-->
<!-- END SIDEBAR -->
