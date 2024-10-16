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
    @if (session('success'))
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            // Panggil SweetAlert untuk menampilkan pesan 'success'
            swal({
                title: "Kritik dan saran berhasil dikirim!",
                icon: "success",
                timer: 3000, // Tampilkan selama 3 detik
                button: false // Tidak tampilkan tombol OK
            });
        </script>
    @endif


    <!-- Loader -->
    <section class="home-slider position-relative">
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach ($sliders as $key => $slider)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}" data-bs-interval="5000">
                        <a href="{{ $slider->tautan }}">
                            <div class="bg-home-75vh d-flex align-items-center"
                                style="background: url('{{ Voyager::image($slider->slider) }}') center center; background-size: cover;">
                                <!-- Konten lainnya -->
                                <div class="container">
                                    <div class="row mt-5 justify-content-center">
                                        <div class="col-lg-6">
                                            <h2 class="text-dark title-dark mb-3">{{ $slider->judul }}</h2>
                                            <p class="para-desc mx-auto text-black-50 mb-0">{{ $slider->deskripsi }}
                                            </p>
                                            <div class="mt-4">
                                                @if ($key == 0)
                                                    <a href="https://disdik.tanjabtimkab.go.id/"
                                                        class="btn btn-primary">Official Website</a>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <!-- Your image slider or additional content here -->
                                        </div>
                                    </div>
                                </div>
                            </div><!--end slide-->
                    </div>
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </section><!--end section-->
    <!-- Hero Start -->
    <section class="section">
        <div class="container" style="position: relative; z-index: 2;">
            <div class="row justify-content-center">
                <img src="{{ asset('assets') }}/images/logo-dark.png" alt="Logoku" class="logoku mb-4"
                    style="width: 40%;">
                <center>
                    <p>Sistem Informasi Pelayanan Berbasis Digital</p>
                    <hr>
                </center>
            </div>
            <div class="row">
                <div class="container mt-50">
                    <div class="row align-items-center mb-4 pb-2">
                        <div class="col-md-8">
                            <div class="section-title text-center text-md-start">
                                <h4 class="mb-4">Buku Tamu</h4>
                                <p class="text-muted mb-0 para-desc">Yuk, jadilah bagian dari kenangan indah kami! Isi
                                    buku tamu dan tinggalkan <span class="text-primary fw-bold">jejak</span> Anda di
                                    sini.</p>
                            </div>
                        </div><!--end col-->

                        <div class="col-md-4 mt-4 mt-sm-0">
                            <div class="text-center text-md-end">
                                <a href="{{ route('bukutamu.create') }}" class="btn btn-soft-primary">Buku Tamu <i
                                        data-feather="arrow-right" class="fea icon-sm"></i></a>
                            </div>
                        </div><!--end col-->
                    </div><!--end row-->
                </div>
                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <div
                        class="card features feature-clean explore-feature p-4 px-md-3 border-0 rounded-md shadow text-center">
                        <div class="icons text-primary text-center mx-auto">
                            {{-- <i class="uil uil-airplay d-block rounded h3 mb-0"></i> --}}
                        </div>

                        <div class="card-body p-0 content">
                            {{-- <h5 class="mt-4"><a href="sekretariat_mapel_detail.html" class="title text-dark"
                                    style="font-size: 60px;">Sekretariat</a></h5>
                            <a href="sekretariat_mapel_detail.html" class="title text-dark"
                                style="font-size: 100px;">Sekretariat</a> --}}
                            <p style="font-size: 30px;">Sekretariat</p>
                            <p class="text-muted text-limit-js">Yang mempunyai tugas pokok menyiapkan perumusan
                                kebijakan teknis, pembinaan dan pelaksanaan program, keuangan, umum dan kepegawaian,
                                hukum, hubungan masyarakat dan organisasi serta pengoordinasian perencanaan dan
                                pelaporan dinas di lingkungan Dinas</p>

                            <a href="{{ route('sekretariat-mapel-detail') }}" class="text-primary">Selengkapnya <i
                                    class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <div
                        class="card features feature-clean explore-feature p-4 px-md-3 border-0 rounded-md shadow text-center">
                        <div class="icons text-primary text-center mx-auto">
                            {{-- <i class="uil uil-clipboard-alt d-block rounded h3 mb-0"></i> --}}
                        </div>

                        <div class="card-body p-0 content">
                            {{-- <h5 class="mt-4"><a href="ptk_mapel_detail.html" class="title text-dark">Bidang PTK</a>
                            </h5> --}}
                            <p style="font-size: 30px;">Bidang PTK</p>
                            <p class="text-muted text-limit-js">Pendidik dan Tenaga Kependidikan bertugas melaksanakan
                                sebagian tugas Dinas Pendidikan meliputi Mutasi Pendidik dan Tenaga Kependidikan,
                                Pengembangan Pendidik dan Tenaga Kependidikan, serta Penghargaan dan Perlindungan
                                Pendidik dan Tenaga Kependidikan</p>

                            <a href="{{ route('ptk-mapel-detail') }}" class="text-primary">Selengkapnya <i
                                    class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <div
                        class="card features feature-clean explore-feature p-4 px-md-3 border-0 rounded-md shadow text-center">
                        <div class="icons text-primary text-center mx-auto">
                            {{-- <i class="uil uil-credit-card-search d-block rounded h3 mb-0"></i> --}}
                        </div>

                        <div class="card-body p-0 content">
                            {{-- <h5 class="mt-4"><a href="{{ route('smp-mapel-detail') }}"
                                    class="title text-dark">Bidang
                                    SMP</a>
                            </h5> --}}
                            <p style="font-size: 30px;">Bidang SMP</p>
                            <p class="text-muted text-limit-js">Bidang Pembinaan Sekolah Menengah Pertama melaksanakan
                                tugas penyusunan bahan perumusan dan pelaksanaan kebijakan di bidang Pembinaan Sekolah
                                Menengah Pertama.</p>

                            <a href="{{ route('smp-mapel-detail') }}" class="text-primary">Selengkapnya <i
                                    class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <div
                        class="card features feature-clean explore-feature p-4 px-md-3 border-0 rounded-md shadow text-center">
                        <div class="icons text-primary text-center mx-auto">

                        </div>

                        <div class="card-body p-0 content">
                            {{-- <h5 class="mt-4"><a href="{{ route('sd-mapel-detail') }}"
                                    class="title text-dark">Bidang SD</a>
                            </h5> --}}
                            <p style="font-size: 30px;">Bidang SD</p>
                            <p class="text-muted text-limit-js">Bidang Pembinaan Sekolah Dasar melaksanakan tugas
                                penyusunan bahan perumusan dan pelaksanaan kebijakan di Bidang Pembinaan Sekolah Dasar.
                            </p>

                            <a href="{{ route('sd-mapel-detail') }}" class="text-primary">Selengkapnya <i
                                    class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <div
                        class="card features feature-clean explore-feature p-4 px-md-3 border-0 rounded-md shadow text-center">
                        <div class="icons text-primary text-center mx-auto">
                            {{-- <i class="uil uil-exposure-alt d-block rounded h3 mb-0"></i> --}}
                        </div>

                        <div class="card-body p-0 content">
                            {{-- <h5 class="mt-4"><a href="paud_mapel_detail.html" class="title text-dark">Bidang PAUD
                                    dan DIKMAS</a></h5> --}}
                            <p style="font-size: 28px;">Bidang PAUD
                                & DIKMAS</p>
                            <p class="text-muted text-limit-js">Melaksanakan sebagian tugas Kepala Dinas dalam
                                merumuskan kebijakan teknis, mengkoordinasikan, melaksanakan dan mengembangkan serta
                                mengendalikan kegiatan di Bidang Pembinaan Pendidikan Anak Usia Dini dan Pendidikan Non
                                Formal.</p>

                            <a href="{{ route('paud-mapel-detail') }}" class="text-primary">Selengkapnya <i
                                    class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                </div><!--end col-->

                <!-- HTML untuk modal -->
                <div id="myModal" class="modal">
                    <div class="modal-content">
                        <span class="close" onclick="tutupModal()">&times;</span>
                        <iframe id="externalPage" src="" frameborder="0"></iframe>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                    <div
                        class="card features feature-clean explore-feature p-4 px-md-3 border-0 rounded-md shadow text-center">
                        <div class="icons text-primary text-center mx-auto">
                            {{-- <i class="uil uil-clock d-block rounded h3 mb-0"></i> --}}
                        </div>

                        <div class="card-body p-0 content">
                            <p style="font-size: 30px;">Si-Pintar</p>
                            <p class="text-muted text-limit-js">Sistem Informasi Pendaftaran Kesetaraan - Bergabunglah
                                dengan komunitas belajar yang solid, di mana Anda dapat saling mendukung dan berbagi
                                pengalaman dengan sesama peserta.</p>


                            <a href="https://sipintardisdiktanjabtim.my.id/" class="text-primary">Selengkapnya <i
                                    class="uil uil-angle-right-b align-middle"></i></a>
                        </div>
                    </div>
                </div><!--end col-->
                <div class="container mt-100 mt-60">
                    <div class="row align-items-center mb-4 pb-2">
                        <div class="col-md-8">
                            <div class="section-title text-center text-md-start">
                                <h4 class="mb-4">Kritik dan Saran</h4>
                                <p class="text-muted mb-0 para-desc">Kami selalu terbuka untuk masukan. <span
                                        class="text-primary fw-bold">Jangan</span> ragu untuk memberikan kritik atau
                                    saran Anda agar kami bisa terus meningkatkan kualitas layanan kami.</p>
                            </div>
                        </div><!--end col-->

                        <div class="col-md-4 mt-4 mt-sm-0">
                            <div class="text-center text-md-end">
                                <a href="{{ route('beri_saran') }}" class="btn btn-soft-primary">Beri Saran <i
                                        data-feather="arrow-right" class="fea icon-sm"></i></a>
                            </div>
                        </div><!--end col-->
                    </div><!--end row-->
                </div>
            </div><!--end row-->
        </div><!--end container-->
        <div class="overlay"></div>
    </section><!--end section-->
    <!-- Hero End -->
    @include('footer')
</body>

</html>
