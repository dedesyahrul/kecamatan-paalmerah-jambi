@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Agenda </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="/informasi/agenda">Agenda</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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
        <div class="row">
            <!-- BLog Start -->
            <div class="col-lg-8 col-md-6">
                <div class="card blog blog-detail border-0 shadow rounded">
                    <div class="card-body">
                        <h3 class="mb-4">Daftar Agenda</h3>
                        <hr>
                        <ul class="list-group">
                            @foreach ($agenda as $agd)
                                <li class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-md-2">
                                            <div class="card text-center bg-light shadow-sm">
                                                <div class="bg-info text-white p-2 rounded">
                                                    <h5 class="card-title mb-0">
                                                        {{ \Carbon\Carbon::parse($agd->tanggal)->format('d') }}
                                                    </h5>
                                                    <small>{{ \Carbon\Carbon::parse($agd->tanggal)->format('M Y') }}</small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <h5 class="card-title">{{ $agd->agenda }}</h5>
                                            <small class="text-muted">{{ $agd->waktu }} - {{ $agd->tempat }}</small>
                                            <p class="mb-1">{{ $agd->perihal }}</p>
                                            <a href="{{ route('agenda.show', Crypt::encrypt($agd->id)) }}"
                                                class="btn btn-primary">Detail</a>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <!-- PAGINATION START -->
                <div class="col-12">
                    <ul class="pagination justify-content-center mb-0 mt-4">
                        {{ $agenda->links('pagination::bootstrap-4') }}
                    </ul>
                </div><!--end col-->
                <!-- PAGINATION END -->

                <div class="card shadow rounded border-0 mt-4">
                    <div class="card-body">
                        <div id="fb-root"></div>
                        <script async defer crossorigin="anonymous"
                            src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v20.0&appId=770891248364623" nonce="n7ehjR4b">
                        </script>
                        <!-- Tempatkan elemen komentar Facebook -->
                        <div class="fb-comments" data-href="{{ url()->current() }}" data-numposts="5" data-width="">
                        </div>
                    </div>

                </div>

                @include('frontend.partials.slide-berita')
            </div>
            <!-- BLog End -->

            <!-- START SIDEBAR -->
            @include('frontend.partials.sidebar')
            <!-- END SIDEBAR -->
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->

@include('footer')
