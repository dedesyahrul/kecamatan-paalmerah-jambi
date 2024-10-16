@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Berita </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/all-berita') }}">Berita</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div> <!--end col-->
        </div><!--end row-->
    </div> <!--end container-->
</section><!--end section-->
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

<!-- Berita Start -->
<section class="section">
    <div class="container">
        @if ($beritas->isEmpty())
            <div class="alert alert-info" role="alert">
                Belum ada data berita yang tersedia.
            </div>
        @else
            <div class="row">
                @foreach ($beritas as $berita)
                    <div class="col-lg-6 col-12 mb-4 pb-2">
                        <div class="card blog rounded border-0 shadow overflow-hidden">
                            <div class="row align-items-center g-0">
                                <div class="col-md-6 order-2 order-md-1">
                                    <div class="card-body content">
                                        <h5><a href="{{ route('berita.show', $berita->id) }}"
                                                class="card-title title text-dark">{{ Str::limit($berita->judul, 30, '...') }}</a>
                                        </h5>
                                        <p class="text-muted mb-0">{!! Str::limit(strip_tags($berita->isi_berita), 20) !!}
                                        </p>
                                        {{-- <p> {!! str_replace('http://127.0.0.1:8000', 'http://172.16.32.88:8000', $berita->isi_berita) !!}</p> --}}
                                        <div class="post-meta d-flex justify-content-between mt-3">
                                            <a href="{{ route('berita.show', $berita->id) }}"
                                                class="text-muted readmore">Selengkapnya <i
                                                    class="uil uil-angle-right-b align-middle"></i></a>
                                        </div>
                                    </div>
                                </div><!--end col-->

                                <div class="col-md-6 order-1 order-md-2">
                                    <div class="img-crop">
                                        <img src="{{ asset('storage/' . $berita->foto) }}" class="img-fluid"
                                            alt="">
                                    </div>
                                    <div class="overlay bg-dark"></div>
                                    <div class="author">
                                        <small class="text-light user d-block"><i class="uil uil-user"></i>
                                            {{ $berita->headline }}</small>
                                        <small class="text-light date"><i
                                                class="uil uil-calendar-alt"></i>{{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('l, d F Y') }}</small>
                                    </div>
                                </div><!--end col-->
                            </div> <!--end row-->
                        </div><!--end berita post-->
                    </div><!--end col-->
                @endforeach
                <!-- PAGINATION START -->
                <div class="col-12">
                    <ul class="pagination justify-content-center mb-0">
                        {{ $beritas->links('pagination::bootstrap-4') }}
                    </ul>
                </div><!--end col-->
                <!-- PAGINATION END -->
        @endif
    </div><!--end row-->
</section><!--end section-->

@include('footer')
