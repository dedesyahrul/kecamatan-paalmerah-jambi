@include('header')

<body>
    <!-- Loader -->
    {{-- <div id="preloader">
        <div id="status">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div> --}}
    <div id="preloader">
        <div id="status">
            <div id="lottie-animation"></div>
        </div>
    </div>
    <!-- Loader -->

    <!-- Navbar STart -->
    <header id="topnav" class="defaultscroll sticky">
        <div class="container">
            <!-- Logo container-->
            <a class="logo" href="{{ route('index') }}">
                <img src="{{ asset('assets') }}/images/logo-dark.png" height="24" class="logo-light-mode"
                    alt="">
                <img src="{{ asset('assets') }}/images/logo-light.png" height="24" class="logo-dark-mode"
                    alt="">
            </a>
            <!-- <div class="buy-button">
                    <a href="https://1.envato.market/4n73n" target="_blank" class="btn btn-pills btn-primary">Buy Now</a>
                </div> -->
            <!-- End Logo container-->
            <div class="menu-extras">
                <div class="menu-item">
                    <!-- Mobile menu toggle-->
                    <a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
                        <div class="lines">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                    <!-- End mobile menu toggle-->
                </div>
            </div>

            <div id="navigation">
                <!-- Navigation Menu-->
                {{-- <ul class="navigation-menu">
                    <li><a href="index.html" class="sub-menu-item">PORTAL</a></li>

                </ul> --}}
                <!-- <div class="buy-menu-btn d-none">
                        <a href="https://1.envato.market/4n73n" target="_blank" class="btn btn-pills btn-primary">Buy Now</a>
                    </div> -->
            </div>
        </div>
    </header><!--end header-->
    <!-- Navbar End -->

    <!-- Hero Start -->
    <section class="bg-half-260 bg-light d-table w-100"
        style="background: url('{{ asset('assets') }}/images/seo/bg.png') center center;">
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="title-heading">
                        <!-- <span class="badge rounded-pill bg-soft-primary"><b>Best SEO Service</b></span> -->
                        <h4 class="heading mt-2 mb-4">Bidang PAUD dan DIKMAS</h4>
                        <p class="para-desc mx-auto text-muted mb-0">Bidang Bidang Pembinaan Pendidikan Anak Usia Dini
                            dan Pendidikan Non Formal melaksanakan tugas penyusunan bahan perumusan dan pelaksanaan
                            kebijakan di Bidang Pembinaan Sekolah Dasar.</p>

                        <div class="mt-4 pt-2">
                            <a href="{{ route('index') }}" class="btn btn-pills btn-primary m-1">Portal</a>
                            <!-- <a href="javascript:void(0)" class="btn btn-pills btn-soft-primary m-1">Learn More</a> -->
                        </div>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div> <!--end container-->
    </section><!--end section-->
    <div class="position-relative">
        <div class="shape overflow-hidden text-white">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
    <!-- Hero End -->

    <!-- FEATURES START -->
    <section class="section">
        <div class="container mt-4">
            <div class="row justify-content-center">
                <div class="col-12 text-center">
                    <div class="section-title mb-4 pb-2">
                        <span class="badge rounded-pill bg-soft-primary">Layanan</span>
                        <h4 class="title mt-3 mb-4">Bidang Bidang Pembinaan Pendidikan Anak Usia Dini dan Pendidikan Non
                            Formal Dinas Pendidikan</h4>
                        <p class="text-muted para-desc mb-0 mx-auto">Berikut <span
                                class="text-primary fw-bold">Pelayanan</span> di Bidang Bidang Pembinaan Pendidikan Anak
                            Usia Dini dan Pendidikan Non Formal Dinas Pendidikan Tanjung Jabung Timur.</p>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="container">
                <div class="row">
                    @foreach ($pauddikmas as $paud)
                        <div class="mt-4 pt-2">
                            <div class="card work-process border-0 rounded shadow">
                                <div class="card-body">
                                    <h4 class="title">{{ strtoupper($paud->judul) }}</h4>
                                    <!-- Menampilkan foto -->
                                    <hr>
                                    @if ($paud->foto)
                                        @foreach (json_decode($paud->foto) as $foto)
                                            <img src="{{ Voyager::image($foto) }}" alt="Foto Bidangsmp"
                                                style="width: 100%;">
                                        @endforeach
                                    @endif
                                    <!-- Menampilkan file -->
                                    {{-- @if ($paud->file)
                                        @php
                                            $fileInfo = json_decode($paud->file, true);
                                        @endphp
                                        @if (isset($fileInfo[0]))
                                            @php
                                                $downloadLink = $fileInfo[0]['download_link'];
                                                $qrCodeUrl = URL::temporarySignedRoute('bidangsmp.qr_download', now()->addMinutes(5), ['download_link' => $downloadLink]);
                                            @endphp
                                            <p class="mt-4">(Scan) Untuk Download</p>
                                            <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data={{ urlencode($qrCodeUrl) }}"
                                                alt="QR Code">
                                        @endif
                                    @endif --}}
                                    @php
                                        $fileInfo = json_decode($paud->file, true);

                                        // Memeriksa apakah properti 'file' ada, tidak kosong, dan memiliki data file
                                        if ($fileInfo && is_array($fileInfo) && count($fileInfo) > 0 && isset($fileInfo[0]['download_link'])) {
                                            $downloadUrl = url('/storage/' . $fileInfo[0]['download_link']);
                                        } else {
                                            $downloadUrl = null; // Jika tidak ada file, set $downloadUrl menjadi null
                                        }
                                    @endphp

                                    @if ($downloadUrl)
                                        <p class="mt-4">(Scan) Untuk Download</p>
                                        <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data={{ urlencode($downloadUrl) }}"
                                            alt="QR Code">
                                    @endif
                                    <!-- Menampilkan keterangan -->
                                    @if ($paud->ket)
                                        <ul class="list-unstyled text-muted">
                                            <li class="mb-0">
                                                <span class="text-primary h5 me-2">
                                                    <i class="uil uil-check-circle align-middle"></i>
                                                </span>
                                                {{ $paud->ket }}.
                                            </li>
                                        </ul>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div><!--end container-->

    </section>
    <!-- Footer Start -->
    @include('footer')
</body>

</html>
