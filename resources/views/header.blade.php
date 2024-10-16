<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>{{ $identitasWebsites->nama_website }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="{{ $identitasWebsites->meta_deskripsi }}" />
    <meta name="keywords" content="{{ $identitasWebsites->meta_keyword }}" />
    <meta name="author" content="DedeSyahrul" />
    <meta name="email" content="dedesyahrul00@gmail.com" />
    <meta name="website" content="{{ $identitasWebsites->domain_website }}" />
    <!-- favicon -->
    <link rel="shortcut icon" href="{{ asset('assets') }}/images/favicon.ico">
    <!-- Bootstrap -->
    <link href="{{ asset('assets') }}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons -->
    <link href="{{ asset('assets') }}/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v3.0.6/css/line.css">
    <!-- Slider -->
    <link rel="stylesheet" href="{{ asset('assets') }}/css/tiny-slider.css" />
    <!-- tobii css -->
    <link href="{{ asset('assets') }}/css/tobii.min.css" rel="stylesheet" type="text/css" />
    <!-- Main Css -->
    <link href="{{ asset('assets') }}/css/style.css" rel="stylesheet" type="text/css" id="theme-opt" />
    <link href="{{ asset('assets') }}/css/colors/default.css" rel="stylesheet" id="color-opt">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    <style>
        .loading-line {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background-color: #007bff;
            animation: loading 5s linear infinite;
        }

        @keyframes loading {
            0% {
                width: 0;
            }

            100% {
                width: 100%;
            }
        }
    </style>

    <style>
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

        .card-custom-opacity {
            background-color: rgba(255, 255, 255, 0.712);
            /* Ganti 0.5 dengan nilai opasitas yang diinginkan */
        }

        .content img {
            max-width: 100%;
            height: auto;
        }

        .owl-carousel .item {
            margin: 5px;
        }

        .owl-carousel .item .card {
            width: 100%;
            height: 100%;
        }

        .img-crop {
            width: 100%;
            height: 200px;
            /* Set height sesuai kebutuhan */
            overflow: hidden;
            position: relative;
        }

        .img-crop img {
            width: 100%;
            height: auto;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>

    <style>
        .bg-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(30, 29, 29, 0.5);
            /* Warna gelap dengan transparansi */
            z-index: 1;
        }

        .slide-content {
            position: relative;
            z-index: 2;
        }
    </style>

    <style>
        .position-relative {
            position: relative;
        }

        .nametag {
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(0, 0, 0, 0.6);
            color: #ffffff;
            padding: 10px;
            border-radius: 8px;
            width: 90%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .nametag h5,
        .nametag p {
            margin: 0;
        }

        .nametag h5 {
            font-weight: bold;
        }

        .nametag p {
            font-size: 0.9em;
        }
    </style>

    <style>
        .owl-carousel .card {
            width: 100%;
            max-width: 400px;
            /* Max-width to ensure it doesn't exceed image size */
            height: auto;
            /* Biarkan tinggi menyesuaikan dengan konten */
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            margin: 0 auto;
        }

        .owl-carousel .card:hover {
            transform: translateY(-5px);
        }

        .card-img-top {
            width: 100%;
            height: auto;
            border-radius: 10px 10px 0 0;
        }
    </style>

    <style>
        /* WhatsApp Chat Widget Styles */
        #whatsapp-chat-widget {
            position: fixed;
            bottom: 80px;
            right: 20px;
            z-index: 1000;
            font-family: 'Arial', sans-serif;
        }

        #whatsapp-icon {
            cursor: pointer;
            width: 60px;
            height: 60px;
            background-color: #25d366;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: bounce 2s infinite;
        }

        #whatsapp-chat-popup {
            display: none;
            width: 300px;
            background-color: #f0f0f0;
            border-radius: 15px;
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.2);
            position: relative;
            margin-bottom: 15px;
        }

        .chat-popup {
            position: fixed;
            bottom: 100px;
            right: 30px;
        }

        .chat-header {
            background-color: #075e54;
            color: white;
            padding: 15px;
            border-radius: 15px 15px 0 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .chat-header-title img {
            margin-right: 10px;
        }

        .chat-close {
            cursor: pointer;
            font-size: 20px;
        }

        .chat-body {
            padding: 15px;
        }

        .chat-bubble {
            background-color: white;
            border-radius: 10px;
            padding: 10px;
            margin-bottom: 10px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .chat-footer {
            background-color: #f0f0f0;
            padding: 10px 15px;
            border-radius: 0 0 15px 15px;
            text-align: center;
        }

        .chat-send-btn {
            background-color: #25d366;
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        @keyframes bounce {

            0%,
            20%,
            50%,
            80%,
            100% {
                transform: translateY(0);
            }

            40% {
                transform: translateY(-10px);
            }

            60% {
                transform: translateY(-5px);
            }
        }
    </style>

    <style>
        #instagram-floating-button {
            position: fixed;
            bottom: 100px;
            /* Sesuaikan jarak dari bawah */
            right: 30px;
            /* Sesuaikan jarak dari kanan */
            z-index: 1000;
            cursor: pointer;
            width: 60px;
            height: 60px;
            background-color: #E1306C;
            /* Warna latar belakang Instagram */
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        #instagram-floating-button:hover {
            transform: scale(1.1);
            box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.2);
        }

        #instagram-floating-button img {
            width: 30px;
            /* Ukuran ikon Instagram */
            height: 30px;
        }
    </style>
    @yield('og-tags')
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
    <!-- Loader -->

    <!-- Navbar STart -->
    <header id="topnav" class="defaultscroll sticky">
        <div class="container">
            <!-- Logo container-->
            <a class="logo" href="{{ route('index') }}">
                <span class="logo-light-mode">
                    <img src="{{ asset('storage/' . $identitasWebsites->logo_dark) }}" class="l-dark" height="50"
                        alt="{{ $identitasWebsites->nama_website }}">
                    <img src="{{ asset('storage/' . $identitasWebsites->logo_light) }}" class="l-light" height="50"
                        alt="{{ $identitasWebsites->nama_website }}">
                </span>
                <img src="{{ asset('storage/' . $identitasWebsites->logo_light) }}" height="50"
                    class="logo-dark-mode" alt="{{ $identitasWebsites->nama_website }}">
            </a>
            {{-- <div class="buy-button">
                <a href="https://1.envato.market/4n73n" target="_blank" class="btn btn-primary">Buy Now</a>
            </div><!--end login button--> --}}
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
                @include('menu')

            </div><!--end navigation-->
        </div><!--end container-->
    </header><!--end header-->
    <!-- Navbar End -->


    @yield('content')

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var carousel = document.querySelector('#carouselExampleInterval');
            var loadingLine = document.createElement('div');
            loadingLine.classList.add('loading-line');
            carousel.appendChild(loadingLine);

            var carouselInstance = new bootstrap.Carousel(carousel, {
                interval: false // Disable automatic cycling
            });

            function resetLoadingLine() {
                loadingLine.style.animation = 'none';
                loadingLine.offsetHeight; // Trigger reflow
                loadingLine.style.animation = null;
            }

            function nextSlide() {
                carouselInstance.next();
                resetLoadingLine();
            }

            loadingLine.addEventListener('animationiteration', nextSlide);

            carousel.addEventListener('slide.bs.carousel', resetLoadingLine);
        });
    </script>


    <style>
        /* Aturan umum */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            overflow-x: hidden;
            width: 100%;
            max-width: 100vw;
        }



        /* Responsive styles */
        @media (max-width: 991px) {
            #navigation {
                position: fixed;
                top: 60px;
                /* Sesuaikan dengan tinggi navbar */
                left: 0;
                right: 0;
                background-color: #ffffff;
                max-height: calc(100vh - 60px);
                overflow-y: auto;
                display: none;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            #navigation.show {
                display: block;
            }

            body {
                padding-top: 60px;
                /* Sesuaikan dengan tinggi navbar */
            }

            /* Penyesuaian untuk slider/carousel */
            .carousel-item,
            .swiper-slide {
                width: 100vw !important;
            }

            /* Penyesuaian untuk gambar latar belakang */
            .bg-image {
                background-size: cover;
                background-position: center;
            }
        }

        /* Tambahan untuk menghindari overflow horizontal */
        .row {
            margin-left: 0;
            margin-right: 0;
        }

        [class*="col-"] {
            padding-left: 0;
            padding-right: 0;
        }
    </style>

    <script>
        function toggleMenu() {
            var navigation = document.getElementById('navigation');
            navigation.classList.toggle('show');
        }

        // Menutup menu saat mengklik di luar area menu
        document.addEventListener('click', function(event) {
            var navigation = document.getElementById('navigation');
            var isClickInsideNavigation = navigation.contains(event.target);
            var isClickInsideToggle = document.getElementById('isToggle').contains(event.target);

            if (!isClickInsideNavigation && !isClickInsideToggle && window.innerWidth <= 991) {
                navigation.classList.remove('show');
            }
        });

        // Menyesuaikan tampilan saat resize window
        window.addEventListener('resize', function() {
            var navigation = document.getElementById('navigation');
            if (window.innerWidth > 991) {
                navigation.style.display = 'block';
            } else {
                navigation.style.display = 'none';
            }
        });
    </script>

</body>

</html>
