<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>@yield('title', 'Landrick - Saas & Software Landing Page Template')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ $identitasWebsites->meta_deskripsi }}" />
    <meta name="keywords" content="{{ $identitasWebsites->meta_keyword }}" />
    <meta name="author" content="DedeSyahrul" />
    <meta name="email" content="dedesyahrul00@gmail.com" />
    <meta name="website" content="{{ $identitasWebsites->domain_website }}" />
    <meta name="Version" content="v3.2.0" />
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

    <style>
        .tinymce-content {
            max-width: 100%;
            overflow-x: auto;
        }

        .tinymce-content img,
        .tinymce-content iframe,
        .tinymce-content table {
            max-width: 100%;
            height: auto;
        }

        .tinymce-content table {
            display: block;
            overflow-x: auto;
            white-space: nowrap;
        }

        @media (max-width: 768px) {
            .tinymce-content table {
                font-size: 14px;
            }
        }
    </style>

    <style>
        .video-wrapper {
            position: relative;
            padding-bottom: 56.25%;
            /* 16:9 aspect ratio */
            height: 0;
            overflow: hidden;
        }

        .video-wrapper iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
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
</head>

<body>
    <!-- Loader -->
    <!-- <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div> -->
    <!-- Loader -->

    <!-- Floating WhatsApp Button -->
    <div id="whatsapp-chat-widget">
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
    </div>

    <!-- Navbar STart -->
    @include('layouts.header')
    <!-- Navbar End -->

    <!-- Hero Start -->
    @yield('hero')
    <!-- Hero End -->


    @yield('content')




    <!-- Footer Start -->
    @include('layouts.footer')
    <!-- Footer End -->

    <!-- Back to top -->
    <a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-primary back-to-top"><i
            data-feather="arrow-up" class="icons"></i></a>
    <!-- Back to top -->


    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var iframes = document.querySelectorAll('.tinymce-content iframe');
            iframes.forEach(function(iframe) {
                var wrapper = document.createElement('div');
                wrapper.classList.add('video-wrapper');
                iframe.parentNode.insertBefore(wrapper, iframe);
                wrapper.appendChild(iframe);
                iframe.removeAttribute('height');
                iframe.removeAttribute('width');
            });
        });
    </script>

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

    <script>
        // Fungsi untuk reload halaman setelah waktu tertentu (300000 ms = 5 menit)
        setTimeout(function() {
            window.location.reload(); // Reload halaman
        }, 300000); // 300000 ms = 5 menit
    </script>


    <script src="{{ asset('assets') }}/js/tobii.min.js"></script>
    <!-- SLIDER -->
    <script src="{{ asset('assets') }}/js/tiny-slider.js "></script>
    <!-- javascript -->
    <script src="{{ asset('assets') }}/js/bootstrap.bundle.min.js"></script>
    <!-- Icons -->
    <script src="{{ asset('assets') }}/js/feather.min.js"></script>
    <!-- Main Js -->
    <script src="{{ asset('assets') }}/js/plugins.init.js"></script>
    <!--Note: All init js like tiny slider, counter, countdown, maintenance, lightbox, gallery, swiper slider, aos animation etc.-->
    <script src="{{ asset('assets') }}/js/app.js"></script>
</body>

</html>