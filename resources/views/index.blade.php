@extends('app')


@section('content')
    <!-- Hero Start -->
    <section class="home-slider position-relative">
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="loading-line"></div> <!-- Tambahkan loading line di sini -->
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    @foreach ($sliders as $key => $slider)
                        <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                            <a href="{{ $slider->tautan }}">
                                <div class="bg-home d-flex align-items-center"
                                    style="background: url('{{ Voyager::image($slider->slider) }}') center center; background-size: cover;">
                                    <div class="bg-overlay"></div> <!-- Tambahkan overlay di sini -->
                                    <!-- Konten lainnya -->
                                    <div class="container slide-content">
                                        <div class="row justify-content-center">
                                            <div class="col-12">
                                                <div class="title-heading text-center">
                                                    <h1 class="heading text-white title-dark mb-4">{{ $slider->judul }}
                                                    </h1>
                                                    <p class="para-desc mx-auto text-white-50">{{ $slider->deskripsi }}
                                                    </p>
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end row-->
                                    </div><!--end container-->
                                </div><!--end slide-->
                            </a>
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
    <!-- Hero End -->


    <section class="section bg-light">

        <div class="row justify-content-center">
            <div class="col-12 text-center">
                <div class="section-title mb-4 pb-2">
                    <h6 class="text-primary">Official Website Kecamatan Paal Merah, Kota Jambi</h6>
                    <h4 class="title mb-4">Selamat datang di Website Kecamatan Paal Merah, Kota Jambi</h4>
                </div>
            </div><!--end col-->
        </div><!--end row-->


        <div class="container mt-10 mt-60">
            @foreach ($kataSambutans as $sambutan)
                <div class="row align-items-center justify-content-center"> <!-- Tambahkan justify-content-center -->
                    <div class="col-lg-3 col-md-6 text-center position-relative">
                        @if ($sambutan->foto)
                            <img src="{{ asset('storage/' . $sambutan->foto) }}" class="img-fluid rounded-md shadow-lg mb-3"
                                alt="{{ $sambutan->judul }}">
                            <div class="nametag">
                                <h5 class="mt-2">{{ $sambutan->penulis }}</h5>
                            </div>
                        @endif
                    </div><!--end col-->

                    <div class="col-lg-7 col-md-7 mt-4 pt-2 mt-sm-0 pt-sm-0">
                        <div class="section-title text-md-start text-center ms-lg-4">
                            <h4 class="title mb-4">{{ $sambutan->judul }}</h4>
                            <p class="text-muted mb-0 para-desc">
                                {!! Str::limit($sambutan->katasambutan, 350) !!}
                            </p>
                            <a href="{{ route('katasambutan') }}" class="text-primary mt-2 d-inline-block">Baca
                                Selengkapnya</a>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            @endforeach
        </div><!--end container-->
    </section><!--end section-->


    <div class="container mt-100 mt-60">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="section-title text-center mb-4 pb-2">
                    <h4 class="title mb-4">SEKSI DAN BAGIAN KECAMATAN</h4>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 justify-content-center mb-4">
                    <div class="col">
                        <a href="{{ route('bagian-perencanaan-dan-keuangan') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/015-chart.png" class="avatar avatar-ex-sm" alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Bagian Perencanaan & Keuangan</h4>
                                    <p class="text-muted mb-0">Mengelola anggaran dan perencanaan kecamatan</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col">
                        <a href="{{ route('bagian-umum-dan-kepegawaian') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/047-teamwork.png" class="avatar avatar-ex-sm" alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Bagian Umum & Kepegawaian</h4>
                                    <p class="text-muted mb-0">Menangani administrasi dan SDM kecamatan</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col">
                        <a href="{{ route('seksi-pelayanan-umum') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/031-learning.png" class="avatar avatar-ex-sm" alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Seksi Pelayanan Umum</h4>
                                    <p class="text-muted mb-0">Melayani kebutuhan administratif masyarakat</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col">
                        <a href="{{ route('seksi-pemerintahan-umum') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/008-check-list.png" class="avatar avatar-ex-sm" alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Seksi Pemerintahan</h4>
                                    <p class="text-muted mb-0">Mengkoordinasi urusan pemerintahan desa/kelurahan</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
                    <div class="col">
                        <a href="{{ route('seksi-ketentraman') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/035-partnership.png" class="avatar avatar-ex-sm"
                                    alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Seksi Ketentraman</h4>
                                    <p class="text-muted mb-0">Menjaga keamanan dan ketertiban masyarakat</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col">
                        <a href="{{ route('seksi-pemberdayaan') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/024-team.png" class="avatar avatar-ex-sm" alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Seksi Pemberdayaan</h4>
                                    <p class="text-muted mb-0">Mengembangkan potensi dan ekonomi masyarakat</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col">
                        <a href="{{ route('seksi-kesejahteraan-sosial') }}" class="text-decoration-none">
                            <div class="d-flex key-feature align-items-center p-3 rounded shadow">
                                <img src="assets/images/job/008-list.png" class="avatar avatar-ex-sm" alt="">
                                <div class="flex-1 ms-3">
                                    <h4 class="title mb-0 text-dark">Seksi Kesejahteraan Sosial</h4>
                                    <p class="text-muted mb-0">Menangani masalah sosial dan kesejahteraan</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>




    {{-- <section class="section" style="background: url('{{ asset('assets/images/real/build.png') }}') bottom no-repeat;"> --}}
    <section class="section">
        <div class="container">
            <div class="row align-items-center mt-4 mb-4 pb-2">
                <div class="col-md-8">
                    <div class="section-title text-center text-md-start">
                        <h2 class="mb-4">Berita Terbaru</h2>
                    </div>
                </div>

                <div class="col-md-4 mb-4 mt-sm-0">
                    <div class="text-center text-md-end">
                        <a href="{{ url('/all-berita') }}" class="btn btn-soft-primary">Lihat Semua Berita <i
                                data-feather="arrow-right" class="fea icon-sm"></i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Berita Start -->
                <div class="col-lg-8 col-md-6 pe-lg-3">
                    <div class="row">
                        @foreach ($beritas as $index => $berita)
                            @if ($index == 0)
                                @include('frontend.berita.berita-terbaru', ['berita' => $berita])
                            @else
                                @include('frontend.berita.berita-lainnya', ['berita' => $berita])
                            @endif
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-12">
                            {{ $beritas->links('frontend.berita.pagination') }}
                        </div>
                    </div>
                    {{-- banner --}}
                    <div class="row mt-4">
                        <div class="container">
                            <h2 class="text-center mb-4">Banner Terkait</h2> <!-- Judul Header -->
                            <div class="owl-carousel owl-theme">
                                @foreach ($banners as $spanduk)
                                    <div class="card text-center">
                                        <div class="card-body p-0">
                                            @if ($spanduk->tautan)
                                                <a href="{{ $spanduk->tautan }}" target="_blank">
                                                    <img class="card-img-top img-fluid"
                                                        src="{{ asset('storage/' . $spanduk->bannernya) }}"
                                                        alt="{{ $spanduk->judul }}">
                                                </a>
                                            @else
                                                <img class="card-img-top img-fluid"
                                                    src="{{ asset('storage/' . $spanduk->bannernya) }}"
                                                    alt="{{ $spanduk->judul }}">
                                            @endif

                                        </div>
                                    </div>
                                @endforeach
                            </div><!--end owl-carousel-->
                        </div><!--end container-->
                    </div>

                    <div class="row mt-4">
                        <div class="inibanner">
                            @foreach ($banners as $spanduk)
                                <div class="banner-item">
                                    @if ($spanduk->tautan)
                                        <a href="{{ $spanduk->tautan }}" target="_blank">
                                            <img class="widget mb-4 pb-2 img-fluid"
                                                src="{{ asset('storage/' . $spanduk->bannernya) }}"
                                                alt="{{ $spanduk->judul }}">
                                        </a>
                                    @else
                                        <img class="widget mb-4 pb-2 img-fluid"
                                            src="{{ asset('storage/' . $spanduk->bannernya) }}"
                                            alt="{{ $spanduk->judul }}">
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    </div>
                    {{-- banner --}}

                </div>
                <!-- Berita End -->

                <!-- START SIDEBAR -->
                @include('frontend.partials.sidebar-front')
                <!-- END SIDEBAR -->
            </div><!--end row-->


        </div><!--end container-->

        @include('frontend.galeri.galeri-front')

        <div class="container mt-100 mt-60">
            <div class="row">
                <div class="col-lg-8 col-md-6 p-0 ps-md-3 pe-md-3">
                    <div class="card map map-height-two rounded map-gray border-0">
                        <iframe src="{{ $detailAplikasi->google_maps_url }}" style="border:0" class="rounded"
                            allowfullscreen></iframe>
                    </div>
                </div><!--end col-->

                <div class="col-lg-4 col-md-6 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <div class="card rounded shadow border-0">
                        <div class="card-body py-5">
                            <h4 class="card-title">Hubungi Kami !</h4>
                            <div class="custom-form mt-3">
                                <form id="contactForm" method="POST" action="{{ route('contact.send') }}">
                                    @csrf
                                    <p id="error-msg" class="mb-0"></p>
                                    <div id="simple-msg"></div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Nama Lengkap <span
                                                        class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="user" class="fea icon-sm icons"></i>
                                                    <input name="name" id="name" type="text"
                                                        class="form-control ps-5" placeholder="Nama">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Email <span class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="mail" class="fea icon-sm icons"></i>
                                                    <input name="email" id="email" type="email"
                                                        class="form-control ps-5" placeholder="Email">
                                                </div>
                                            </div>
                                        </div><!--end col-->

                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">Nomor HP <span
                                                        class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="phone" class="fea icon-sm icons"></i>
                                                    <input name="phone" id="phone" type="tel"
                                                        class="form-control ps-5" placeholder="Nomor HP">
                                                </div>
                                            </div>
                                        </div><!--end col-->

                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">Subjek</label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="book" class="fea icon-sm icons"></i>
                                                    <input name="subjek" id="subjek" class="form-control ps-5"
                                                        placeholder="Subjek">
                                                </div>
                                            </div>
                                        </div><!--end col-->

                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">Comments <span
                                                        class="text-danger">*</span></label>
                                                <div class="form-icon position-relative">
                                                    <i data-feather="message-circle"
                                                        class="fea icon-sm icons clearfix"></i>
                                                    <textarea name="comments" id="comments" rows="4" class="form-control ps-5"
                                                        placeholder="Tuliskan Pesan Anda"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="d-grid">
                                                <button type="submit" id="submit" name="send"
                                                    class="btn btn-primary">Kirim Pesan</button>
                                            </div>
                                        </div><!--end col-->
                                    </div><!--end row-->
                                </form>
                            </div><!--end custom-form-->
                        </div>
                    </div>
                </div><!--end col-->

                <!-- Modal Pop-up untuk Pesan Sukses -->
                <div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content border-0 shadow-lg">
                            <div class="modal-header bg-success text-white border-0">
                                <h5 class="modal-title">
                                    <i class="fas fa-check-circle me-2"></i>Pesan Berhasil Dikirim
                                </h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body py-4">
                                <p class="mb-0">Terima kasih! Pesan Anda telah berhasil dikirim. Kami akan segera
                                    menghubungi Anda.</p>
                            </div>
                            <div class="modal-footer border-0">
                                <button type="button" class="btn btn-success px-4"
                                    data-bs-dismiss="modal">Tutup</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Pop-up untuk Pesan Gagal -->
                <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content border-0 shadow-lg">
                            <div class="modal-header bg-danger text-white border-0">
                                <h5 class="modal-title">
                                    <i class="fas fa-exclamation-circle me-2"></i>Gagal Mengirim Pesan
                                </h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body py-4">
                                <p class="mb-0">Maaf, terjadi kesalahan saat mengirim pesan. Silakan coba lagi nanti
                                    atau hubungi kami melalui kontak alternatif.</p>
                            </div>
                            <div class="modal-footer border-0">
                                <button type="button" class="btn btn-outline-secondary me-2"
                                    data-bs-dismiss="modal">Tutup</button>
                                <button type="button" class="btn btn-danger px-4" onclick="retrySubmission()">Coba
                                    Lagi</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end row-->
        </div><!--end container-->
    </section>
    <section class="py-4 bg-light">
        <div class="container">
            <div class="owl-carousel owl-theme">
                @foreach ($aplikasi_terkait as $apk)
                    <div class="row justify-content-center">
                        <div>
                            <a href="{{ $apk->link_aplikasi }}" target="_blank">
                                <img src="{{ asset('storage/' . $apk->logo_aplikasi) }}"
                                    style="width: auto; height: 50px;" class="avatar" alt="{{ $apk->nama_aplikasi }}">
                            </a>
                        </div>
                    </div><!--end item-->
                @endforeach
            </div><!--end owl-carousel-->
        </div><!--end container-->
    </section><!--end section-->
    <!-- Floating WhatsApp Button -->
    {{-- <div id="whatsapp-chat-widget">
        <div id="whatsapp-icon" onclick="toggleChatWidget()">
            <img src="https://img.icons8.com/color/48/000000/whatsapp.png" alt="WhatsApp Icon">
        </div>
        <div id="whatsapp-chat-popup" class="chat-popup">
            <div class="chat-header">
                <div class="chat-header-title">
                    <img src="https://img.icons8.com/color/24/000000/whatsapp.png" alt="WhatsApp Icon">
                    <span>WhatsApp</span>
                </div>
                <div class="chat-close" onclick="toggleChatWidget()">×</div>
            </div>
            <div class="chat-body">
                <div class="chat-bubble">
                    <p>Haloo 👋<br>Ada yang bisa kami bantu?</p>
                </div>
            </div>
            <div class="chat-footer">
                <a href="https://wa.me/6282160051161?text=Halo%2C%20saya%20ingin%20melaporkan%20pengaduan%20terkait%20layanan%20di%20Kecamatan%20Paal%20Merah.%20Berikut%20adalah%20detail%20pengaduan%20saya%3A%0A%0A1.%20Jenis%20Pengaduan%3A%20%0A2.%20Lokasi%3A%20%0A3.%20Deskripsi%20Masalah%3A%20%0A%0ATerima%20kasih%20atas%20perhatiannya."
                    target="_blank" class="chat-send-btn">
                    Kirim Pesan
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white"
                        viewBox="0 0 16 16">
                        <path d="M15.5 0L0 8l5.5 2 2 5.5L16 0zM6 10l1.5 3.5 3.5-7.5-5 4z" />
                    </svg>
                </a>
            </div>
        </div>
    </div> --}}

    <!-- Floating Instagram Button -->
    {{-- <div id="instagram-floating-button">
        <a href="https://www.instagram.com/yourusername" target="_blank">
            <img src="https://img.icons8.com/color/48/000000/instagram-new.png" alt="Instagram Icon">
        </a>
    </div> --}}

    <script>
        function toggleChatWidget() {
            var chatPopup = document.getElementById("whatsapp-chat-popup");
            if (chatPopup.style.display === "none" || chatPopup.style.display === "") {
                chatPopup.style.display = "block";
            } else {
                chatPopup.style.display = "none";
            }
        }
    </script>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <!-- Script untuk Menampilkan Modal -->
    <script>
        function showSuccessModal() {
            var successModal = new bootstrap.Modal(document.getElementById('successModal'));
            successModal.show();
        }

        function showErrorModal() {
            var errorModal = new bootstrap.Modal(document.getElementById('errorModal'));
            errorModal.show();
        }

        function retrySubmission() {
            // Implementasikan logika untuk mencoba mengirim ulang form
            console.log('Mencoba mengirim ulang...');
        }
    </script>
    @if (session('message'))
        <script>
            $(document).ready(function() {
                $('#successModal').modal('show');
            });
        </script>
    @endif

    @if (session('error'))
        <script>
            $(document).ready(function() {
                $('#errorModal').modal('show');
            });
        </script>
    @endif

    {{-- <script>
        document.addEventListener('DOMContentLoaded', function() {
            var instagramButton = document.getElementById('instagram-floating-button');

            instagramButton.addEventListener('mouseenter', function() {
                instagramButton.style.transform = 'scale(1.1) rotate(10deg)';
                instagramButton.style.boxShadow = '0px 6px 18px rgba(0, 0, 0, 0.2)';
            });

            instagramButton.addEventListener('mouseleave', function() {
                instagramButton.style.transform = 'scale(1) rotate(0deg)';
                instagramButton.style.boxShadow = '2px 2px 10px rgba(0, 0, 0, 0.1)';
            });
        });
    </script> --}}

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
@endsection
