<div class="col-lg-4 col-md-6 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
    <div class="card border-0 sidebar sticky-bar rounded shadow">
        <div class="card-body">
            <!-- SEARCH -->
            {{-- <div class="widget">
                <form action="{{ route('search') }}" method="GET">
                    <div class="input-group mb-3 border rounded">
                        <input type="text" id="s" name="s" class="form-control border-0"
                            placeholder="Search Keywords...">
                        <button type="submit" class="input-group-text bg-transparent border-0" id="searchsubmit"><i
                                class="uil uil-search"></i></button>
                    </div>
                </form>
            </div> --}}
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
            {{-- banner-standing --}}
            <div class="standingbanner">
                @foreach ($banner_standings as $banner)
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
            {{-- banner-standing --}}
            <div class="widget mb-4 pb-2">
                <div id="gpr-kominfo-widget-container"></div>
            </div>
            <!-- RECENT POST -->
            <div class="widget mb-4 pb-2">
                <h5 class="widget-title">Foto Kegiatan Terbaru</h5>
                <div class="mt-4">
                    @foreach ($fotos->take(2) as $foto)
                        <div class="clearfix post-recent">
                            <div class="post-recent-thumb float-start">
                                <a href="{{ route('galeri.detail', ['id' => $foto->id]) }}">
                                    <img alt="{{ $foto->judul }}"
                                        src="{{ asset('storage/' . json_decode($foto->foto)[0]) }}"
                                        class="img-fluid rounded">
                                </a>
                            </div>
                            <div class="post-recent-content float-start">
                                <a
                                    href="{{ route('galeri.detail', ['id' => $foto->id]) }}">{{ Str::limit($foto->judul, 30, '...') }}</a>
                                <span
                                    class="text-muted mt-2">{{ \Carbon\Carbon::parse($foto->created_at)->translatedFormat('j F Y') }}</span>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>


            <!-- RECENT POST -->
            <!-- SOCIAL -->
            <div class="widget">
                <h5 class="widget-title">Follow us</h5>
                <ul class="list-unstyled social-icon mb-0 mt-4">
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="facebook"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="linkedin"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="github"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="youtube"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="gitlab"
                                class="fea icon-sm fea-social"></i></a></li>
                </ul><!--end icon-->
            </div>
            <!-- SOCIAL -->
        </div>
    </div>
</div><!--end col-->
