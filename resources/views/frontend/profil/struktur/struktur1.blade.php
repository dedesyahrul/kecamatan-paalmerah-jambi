@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Struktur Organisasi </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/struktur') }}">Struktur</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero End -->

<!-- Shape Start -->
<div class="position-relative">
    <div class="shape overflow-hidden text-white">
        <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
        </svg>
    </div>
</div>
<!--Shape End-->
<section class="section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                @if ($strukturs->isEmpty())
                    <p>Tidak ada data Struktur Organisasi.</p>
                @else
                    @foreach ($strukturs as $strk)
                        <div class="row">
                            <div class="col-md-2 d-none d-md-block">
                                <ul class="list-unstyled text-center sticky-bar social-icon mb-0">
                                    <li>
                                        <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}"
                                            class="rounded" target="_blank">
                                            <i data-feather="facebook" class="fea icon-sm fea-social"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://wa.me/?text={{ urlencode($strk->judul_struktur . ' ' . url()->current()) }}"
                                            class="rounded" target="_blank">
                                            <i data-feather="message-circle" class="fea icon-sm fea-social"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-10">
                                <h4 class="title mb-2">{{ $strk->judul_struktur }}</h4>
                                <p class="text-muted">{{ $strk->keterangan }}</p>
                                <ul class="list-unstyled d-flex justify-content-between mt-4">
                                    <li class="list-inline-item date text-muted"><i
                                            class="uil uil-calendar-alt text-dark"></i>
                                        {{ \Carbon\Carbon::parse($strk->created_at)->translatedFormat('l, d F Y') }}
                                    </li>
                                </ul>
                                {{-- <img src="{{ asset('storage/' . $strk->foto_struktur) }}"
                                    class="img-fluid rounded-md shadow" alt=""> --}}
                                <img src="{{ $strk->foto_struktur ? asset('storage/' . $strk->foto_struktur) : asset('assets/images/DKI_Ok.png') }}"
                                    class="img-fluid rounded-md shadow" alt="">
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
</section>


@include('footer')
