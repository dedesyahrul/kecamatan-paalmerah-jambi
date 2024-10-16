@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Galeri Foto Kegiatan </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/galeri/foto') }}">Galeri Foto</a></li>

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
        <div class="row align-items-center mb-4 pb-2">
            <div class="col-md-8">
                <div class="section-title text-center text-md-start">
                    <h4 class="mb-4">Galeri Foto Kegiatan</h4>
                    <p class="text-muted mb-0 para-desc">Nikmati momen-momen berharga dalam galeri foto
                        kegiatan kami, yang merefleksikan semangat dan dedikasi kami dalam setiap langkah.</p>
                </div>
            </div><!--end col-->
        </div><!--end row-->

        <div class="row">
            @foreach ($fotos as $foto)
                <div class="col-lg-4 col-md-6 mt-4 pt-2">
                    <div class="card blog rounded border-0 shadow overflow-hidden">
                        <div class="position-relative">
                            @php
                                // Mendapatkan URL foto pertama dari string foto
                                $foto_pertama = json_decode($foto->foto)[0];
                            @endphp
                            <div class="img-crop">
                                <img src="{{ asset('storage/' . $foto_pertama) }}" class="card-img-top"
                                    alt="{{ $foto->judul }}">
                            </div>

                            <div class="overlay rounded-top bg-dark"></div>
                        </div>
                        <div class="card-body content">
                            <h5><a href="{{ route('galeri.detail', ['id' => $foto->id]) }}"
                                    class="card-title title text-dark">{{ $foto->judul }}</a></h5>
                            <div class="post-meta d-flex justify-content-between mt-3">
                                <ul class="list-unstyled mb-0">
                                </ul>
                                <a href="{{ route('galeri.detail', ['id' => $foto->id]) }}"
                                    class="text-muted readmore">Selengkapnya <i
                                        class="uil uil-angle-right-b align-middle"></i></a>
                            </div>
                        </div>
                        <div class="author">
                            <small class="text-light user d-block"><i class="uil uil-user"></i>
                                {{ $foto->judul }}</small>
                            <small class="text-light date"><i class="uil uil-calendar-alt"></i>
                                {{ \Carbon\Carbon::parse($foto->created_at)->translatedFormat('l, d F Y') }}</small>
                        </div>
                    </div>
                </div><!--end col-->
            @endforeach
        </div><!--end row-->
        <div class="col-12 mt-4">
            {{ $fotos->links('pagination::bootstrap-4') }}
        </div><!--end col-->
    </div><!--end container-->

</section><!--end section-->

@include('footer')
