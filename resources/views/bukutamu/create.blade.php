<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>SIMAPEL - Sistem Informasi Pelayanan Berbasis Digital.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Premium Bootstrap 5 Landing Page Template" />
    <meta name="keywords" content="Saas, Software, multi-uses, HTML, Clean, Modern" />
    <meta name="author" content="Shreethemes" />
    <meta name="email" content="support@shreethemes.in" />
    <meta name="website" content="https://shreethemes.in" />
    <meta name="Version" content="v3.2.0" />
    <!-- favicon -->
    <link rel="shortcut icon" href="{{ asset('assets') }}/images/favicon.ico">
    <!-- Bootstrap -->
    <link href="{{ asset('assets') }}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons -->
    <link href="{{ asset('assets') }}/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v3.0.6/css/line.css">
    <!-- Main Css -->
    <link href="{{ asset('assets') }}/css/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="{{ asset('assets') }}/css/colors/default.css" rel="stylesheet" id="color-opt">
    <audio id="snapSound" src="{{ asset('assets/sound/camera-shutter-36931.mp3') }}"></audio>
    <style>
        .section {
            position: relative;
            background-image: url('{{ asset('assets') }}/images/shapes/12.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }

        .section .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(240, 238, 238, 0.233);
            z-index: 1;
        }

        .logoku {
            width: 100px;
            /* Sesuaikan ukuran logo */
            filter: drop-shadow(0 0 10px rgba(255, 255, 255, 0.8));
            /* Efek kilauan */
            animation: glow 2s infinite alternate;
            /* Animasi kilauan */
        }

        /* @keyframes glow {
            0% {
                filter: drop-shadow(0 0 10px rgba(255, 255, 255, 0.8));
            }

            100% {
                filter: drop-shadow(0 0 20px rgba(255, 217, 0, 0.450));
            }
        } */
        .geser-container {
            width: 300px;
            /* Adjust the width as needed */
            overflow: hidden;
            position: relative;
        }

        .geser {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            animation: scrollCarousel 50s linear infinite;
            /* Adjust the duration as needed */
        }

        .geser li {
            flex: 0 0 auto;
            margin-right: 20px;
            /* Adjust the spacing between images */
        }

        @keyframes scrollCarousel {
            0% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(-100%);
            }
        }

        #lottie-animation {
            width: 100px;
            /* Sesuaikan dengan ukuran yang diinginkan */
            height: 100px;
            /* Sesuaikan dengan ukuran yang diinginkan */
        }

        #status {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            /* Sesuaikan dengan kebutuhan Anda */
        }

        #lottie-animation {
            width: 100px;
            height: 100px;
            /* Sesuaikan dengan ukuran yang diinginkan */
        }

        #camera-container {
            position: relative;
            width: 200px;
            height: 200px;
            overflow: hidden;
            border-radius: 50%;
        }

        #camera-preview {
            width: 100%;
            height: 100%;
            border-radius: 50%;
        }

        #captured-photo {
            width: 100%;
            height: 100%;
            border-radius: 0;
            /* Menghapus border-radius yang sebelumnya */
            display: none;
        }

        #capture-button {
            margin-top: 10px;
        }
    </style>
</head>


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
                        <span class="badge rounded-pill bg-soft-primary">Buku Tamu</span>
                        <h4 class="title mt-3 mb-4">Tulis Pesan Spesial Anda</h4>
                        <p class="text-muted para-desc mb-0 mx-auto">Tinggalkan <span
                                class="text-primary fw-bold">Jejak</span> Anda di buku tamu kami. Ungkapkan pesan
                            spesial, doa, atau harapan untuk masa depan. Terima kasih atas kunjungan Anda!.</p>
                    </div>
                    <div class="mt-4 pt-2">
                        <a href="{{ route('index') }}" class="btn btn-pills btn-primary m-1 mb-4">Portal</a>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="container">
                <div class="row">
                    <div class="card">
                        <div class="card-header">Isi Data Tamu</div>
                        <div class="card-body">
                            <!-- Formulir untuk Buku Tamu -->
                            <form method="POST" action="{{ route('bukutamu.store') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <!-- Bagian kamera -->
                                        <div id="my_camera"></div>
                                        <a href="javascript:void(take_snapshot())"
                                            class="btn btn-primary mt-2 mb-2">Ambil foto</a>
                                        <input type="hidden" id="foto" name="foto" value="">
                                        <input type="hidden" name="image" class="image-tag">
                                    </div>
                                    <div class="col-md-6">
                                        <!-- Bagian hasil foto -->
                                        <div id="my_result"></div>
                                        <canvas id="canvas" style="display:none;"></canvas>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="nama" class="form-label">Nama</label>
                                    <input type="text" class="form-control" id="nama" name="nama"
                                        required>
                                </div>
                                <div class="mb-3">
                                    <label for="alamat" class="form-label">Alamat</label>
                                    <input type="text" class="form-control" id="alamat" name="alamat"
                                        required>
                                </div>

                                <div class="mb-3">
                                    <label for="nohp" class="form-label">Nomor HP</label>
                                    <input type="text" class="form-control" id="nohp" name="nohp"
                                        oninput="validateNumberInput(this)" maxlength="13">
                                </div>

                                <div class="mb-3">
                                    <label for="keperluan" class="form-label">Keperluan</label>
                                    <textarea class="form-control" id="keperluan" name="keperluan" rows="3" required></textarea>
                                </div>

                                {{-- Disable tombol "Simpan" pada awalnya --}}
                                <button type="submit" class="btn btn-primary" id="simpanButton"
                                    disabled>Simpan</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div><!--end container-->

    </section>
    <!-- Footer Start -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-12 mb-0 mb-md-4 pb-0 pb-md-2">
                    <a href="#" class="logo-footer">
                        <h2 class="text-muted">SIMAPEL</h2>
                        <!-- <img src="images/logo-light.png" height="24" alt=""> -->
                    </a>
                    <p class="para-desc mt-2 mx-auto">Selamat Datang di <span
                            class="text-primary fw-bold">SIMAPEL</span>
                        Sistem Informasi Pelayanan Berbasis Digital.
                    </p>
                    <ul class="list-unstyled social-icon foot-social-icon mb-0 mt-4">
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                    data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                    data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                    data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                    data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                    </ul><!--end icon-->
                    <div>
                        <span id="jam"></span>
                    </div>
                </div><!--end col-->

                <div id="contact" class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <h5 class="text-light footer-head">Kontak</h5>
                    <p class="mt-4 text-muted">Jl. Pangeran Diponegoro <br>Telp/Hp. (0740) 7370002 <br>e-Mail.
                        disdik@tanjabtimkab.go.id</p>
                </div>
                {{-- <div class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <ul class="list-unstyled footer-list mt-4">
                        <img src="{{ asset('assets') }}/images/tk.png" height="100" alt="">
                        <img src="{{ asset('assets') }}/images/sd.png" height="100" alt="">
                        <img src="{{ asset('assets') }}/images/tutwuri-handayani.png" height="100" alt="">
                    </ul>
                </div> --}}
                <div class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <div class="geser-container">
                        <ul class="list-unstyled footer-list geser">
                            <li><img src="{{ asset('assets') }}/images/tk.png" height="100" alt=""></li>
                            <li><img src="{{ asset('assets') }}/images/sd.png" height="100" alt=""></li>
                            <li><img src="{{ asset('assets') }}/images/tutwuri-handayani.png" height="100"
                                    alt="">
                            </li>
                            <!-- Repeat the images to create an infinite effect -->
                            <li><img src="{{ asset('assets') }}/images/tk.png" height="100" alt=""></li>
                            <li><img src="{{ asset('assets') }}/images/sd.png" height="100" alt=""></li>
                            <li><img src="{{ asset('assets') }}/images/tutwuri-handayani.png" height="100"
                                    alt="">
                            </li>
                        </ul>
                    </div>
                </div>
            </div><!--end container-->
    </footer><!--end footer-->
    <footer class="footer footer-bar">
        <div class="container text-center">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <div class="text-sm-start">
                        <p class="mb-0">©
                            <script>
                                document.write(new Date().getFullYear())
                            </script> Dinas Komunikasi dan Informatika. by <a
                                href="https://diskominfo.tanjabtimkab.go.id/" target="_blank" class="text-reset">Tim
                                Programmer</a>.
                        </p>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
    </footer><!--end footer-->



    <!-- javascript -->
    <script src="{{ asset('assets') }}/js/bootstrap.bundle.min.js"></script>
    <!-- Icons -->
    <script src="{{ asset('assets') }}/js/feather.min.js"></script>
    <!-- Main Js -->
    <script src="{{ asset('assets') }}/js/plugins.init.js"></script>
    <!--Note: All init js like tiny slider, counter, countdown, maintenance, lightbox, gallery, swiper slider, aos animation etc.-->
    <script src="{{ asset('assets') }}/js/app.js"></script>
    <!--Note: All important javascript like page loader, menu, sticky menu, menu-toggler, one page menu etc. -->
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var paragraphs = document.querySelectorAll(".text-limit-js");

            paragraphs.forEach(function(paragraph) {
                var text = paragraph.textContent;
                var maxLength = 100;

                if (text.length > maxLength) {
                    paragraph.textContent = text.slice(0, maxLength) + "...";
                }
            });
        });
    </script>
    <script>
        function capitalize(input) {
            // Mengonversi nilai input ke huruf kapital
            input.value = input.value.toUpperCase();
        }
    </script>
    <script>
        function updateJam() {
            var now = new Date();
            var jam = now.getHours();
            var menit = now.getMinutes();
            var detik = now.getSeconds();

            // Format jam dengan menambahkan nol jika angka kurang dari 10
            jam = (jam < 10 ? "0" : "") + jam;
            menit = (menit < 10 ? "0" : "") + menit;
            detik = (detik < 10 ? "0" : "") + detik;

            // Menampilkan jam pada elemen dengan id="jam"
            document.getElementById('jam').innerText = jam + ":" + menit + ":" + detik;

            // Menjalankan fungsi updateJam setiap detik
            setTimeout(updateJam, 1000);
        }

        // Memanggil fungsi updateJam untuk pertama kali
        updateJam();
    </script>
    <script>
        function toggleSubmit(checkbox) {
            var submitButton = document.getElementById('submitButton');
            submitButton.disabled = !checkbox.checked;
        }
    </script>

    <!-- Sertakan LottieWeb Library -->
    <script src="{{ asset('assets/js/lottie.js') }}"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const animationContainer = document.getElementById("lottie-animation");
            const animationData = {
                container: animationContainer,
                renderer: "svg", // atau "canvas"
                loop: true,
                autoplay: true,
                path: "{{ asset('assets/lottie/Animation1705286271546.json') }}", // Ganti dengan path file JSON dari LottieFiles
            };

            const anim = lottie.loadAnimation(animationData);
            anim.setSpeed(2);
        });
    </script>

    {{-- webcam --}}
    <script src="{{ asset('assets') }}/js/webcam.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            Webcam.set({
                width: 430,
                height: 322,
                dest_width: 430,
                dest_height: 322,
                image_format: 'jpeg',
                jpeg_quality: 90
            });
            Webcam.attach('#my_camera');
        });

        function take_snapshot() {
            var camera = document.getElementById("my_camera");
            var result = document.getElementById("my_result");
            var fotoInput = document.getElementById("foto");
            var simpanButton = document.getElementById("simpanButton");

            // Mengambil gambar dari webcam
            Webcam.snap(function(data_uri) {
                // Menampilkan hasil foto pada elemen my_result
                result.innerHTML = '<img src="' + data_uri + '" class="rounded"/>';

                // Cetak data gambar pada konsol
                console.log(data_uri);

                // Menyimpan data gambar sebagai nilai input hidden
                fotoInput.value = data_uri;
                var snapSound = document.getElementById("snapSound");
                snapSound.play();

                // Mengaktifkan tombol "Simpan" setelah foto diambil
                simpanButton.removeAttribute("disabled");
            });
        }
    </script>
    <script>
        function validateNumberInput(input) {
            // Menghapus karakter non-angka menggunakan regex
            input.value = input.value.replace(/\D/g, '');

            // Memastikan panjang karakter tidak melebihi 13
            if (input.value.length > 13) {
                input.value = input.value.slice(0, 13);
            }
        }
    </script>
</body>

</html>
