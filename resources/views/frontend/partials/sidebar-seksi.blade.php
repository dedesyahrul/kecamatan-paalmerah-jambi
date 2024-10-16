<!-- Banner -->
<div class="d-none d-md-block">
    <div class="bg-white rounded shadow p-3 mb-4">
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
</div>
