<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="SAMEORIGIN">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    <meta http-equiv="Permissions-Policy"
        content="accelerometer=(), camera=(), geolocation=(), gyroscope=(), magnetometer=(), microphone=(), payment=(), usb=()">

    <!-- Preconnect to Cloudflare -->
    <link rel="preconnect" href="https://cdnjs.cloudflare.com">
    <link rel="dns-prefetch" href="https://cdnjs.cloudflare.com">

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

    <!-- Cloudflare Performance Optimizations -->
    <style>
        /* Critical CSS untuk loading */
        .cf-loading {
            opacity: 0;
            transition: opacity 0.3s ease-in;
        }

        .cf-loaded {
            opacity: 1;
        }

        /* Lazy loading images */
        img.lazy {
            opacity: 0;
            transition: opacity 0.3s ease-in;
        }

        img.lazy.loaded {
            opacity: 1;
        }

        /* Skeleton loading */
        .skeleton-loading {
            background: linear-gradient(90deg, #f0f0f0 25%, #e0e0e0 50%, #f0f0f0 75%);
            background-size: 200% 100%;
            animation: loading 1.5s infinite;
        }

        @keyframes loading {
            0% {
                background-position: 200% 0;
            }

            100% {
                background-position: -200% 0;
            }
        }
    </style>

    <!-- Preload Critical Resources -->
    <link rel="preload" href="{{ asset('assets/css/bootstrap.min.css') }}" as="style">
    <link rel="preload" href="{{ asset('assets/js/bootstrap.bundle.min.js') }}" as="script">

    <style>
        .tinymce-content {
            max-width: 100%;
            overflow-x: hidden;
        }

        .tinymce-content img,
        .tinymce-content iframe {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 1rem auto;
        }

        .tinymce-content table {
            width: 100% !important;
            max-width: 100%;
            margin-bottom: 1rem;
            border-collapse: collapse;
            overflow-x: auto;
            display: block;
        }

        .tinymce-content table td,
        .tinymce-content table th {
            padding: 0.5rem;
            vertical-align: top;
            border: 1px solid #dee2e6;
            word-wrap: break-word;
            min-width: 100px;
            /* Menetapkan lebar minimum untuk sel */
        }

        .tinymce-content p,
        .tinymce-content ul,
        .tinymce-content ol {
            max-width: 100%;
            overflow-wrap: break-word;
            word-wrap: break-word;
        }

        @media (max-width: 768px) {
            .tinymce-content {
                font-size: 16px;
            }

            .tinymce-content table {
                font-size: 14px;
            }

            .tinymce-content table td,
            .tinymce-content table th {
                padding: 0.3rem;
            }
        }

        @media (max-width: 576px) {
            .tinymce-content {
                font-size: 14px;
            }

            .tinymce-content table {
                white-space: nowrap;
            }

            .tinymce-content img,
            .tinymce-content iframe {
                max-width: 100%;
                height: auto;
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

    <!-- Tambahkan ini di bagian <head> untuk memuat Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        .floating-social-menu {
            position: fixed;
            bottom: 80px;
            right: 20px;
            z-index: 1000;
        }

        .main-button {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background-color: #007bff;
            color: white;
            border: none;
            font-size: 24px;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        .main-button:hover {
            background-color: #0056b3;
            transform: scale(1.1);
        }

        .social-icons {
            list-style: none;
            padding: 0;
            margin: 0;
            position: absolute;
            bottom: 70px;
            right: 0;
            visibility: hidden;
            opacity: 0;
            transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        .social-icons li {
            margin-bottom: 15px;
            transform: translateY(20px) scale(0.5);
            opacity: 0;
            transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        .social-icons a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            color: white;
            font-size: 20px;
            transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .social-icons a:hover {
            transform: scale(1.2) translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .facebook {
            background-color: #3b5998;
        }

        .twitter {
            background-color: #1da1f2;
        }

        .instagram {
            background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
        }

        .youtube {
            background-color: #ff0000;
        }

        .whatsapp {
            background-color: #25d366;
        }

        .floating-social-menu.active .social-icons {
            visibility: visible;
            opacity: 1;
        }

        .floating-social-menu.active .social-icons li {
            transform: translateY(0) scale(1);
            opacity: 1;
        }

        @keyframes fadeInScale {
            0% {
                opacity: 0;
                transform: translateY(20px) scale(0.5);
            }

            100% {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .floating-social-menu.active .social-icons li:nth-child(1) {
            animation: fadeInScale 0.3s 0.1s forwards;
        }

        .floating-social-menu.active .social-icons li:nth-child(2) {
            animation: fadeInScale 0.3s 0.2s forwards;
        }

        .floating-social-menu.active .social-icons li:nth-child(3) {
            animation: fadeInScale 0.3s 0.3s forwards;
        }

        .floating-social-menu.active .social-icons li:nth-child(4) {
            animation: fadeInScale 0.3s 0.4s forwards;
        }

        .floating-social-menu.active .social-icons li:nth-child(5) {
            animation: fadeInScale 0.3s 0.5s forwards;
        }

        @keyframes pulse {
            0% {
                box-shadow: 0 0 0 0 rgba(0, 123, 255, 0.7);
            }

            70% {
                box-shadow: 0 0 0 10px rgba(0, 123, 255, 0);
            }

            100% {
                box-shadow: 0 0 0 0 rgba(0, 123, 255, 0);
            }
        }

        .floating-social-menu:not(.active) .main-button {
            animation: pulse 2s infinite;
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

    <!-- Widget multi menu sosial-media -->
    <div class="floating-social-menu">
        <button class="main-button">
            <i class="fas fa-share-alt"></i>
        </button>
        <ul class="social-icons">
            @foreach ($socialMediaLinks as $socialMedia)
                <li>
                    @php
                        $href = $socialMedia->link;
                        if ($socialMedia->platform === 'whatsapp') {
                            $cleanNumber = preg_replace('/[^0-9]/', '', $socialMedia->link);
                            $href = "https://wa.me/{$cleanNumber}";
                        }
                    @endphp
                    <a href="{{ $href }}" target="_blank" rel="noopener noreferrer"
                        class="{{ $socialMedia->platform }}">
                        <i class="fab fa-{{ $socialMedia->platform }}"></i>
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
    <!-- end Widget multi menu sosial-media -->

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
            const floatingMenu = document.querySelector('.floating-social-menu');
            const mainButton = floatingMenu.querySelector('.main-button');

            mainButton.addEventListener('click', function() {
                floatingMenu.classList.toggle('active');
                this.classList.toggle('rotate');
            });

            document.addEventListener('click', function(event) {
                if (!floatingMenu.contains(event.target) && floatingMenu.classList.contains('active')) {
                    floatingMenu.classList.remove('active');
                    mainButton.classList.remove('rotate');
                }
            });
        });
    </script>


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

    {{-- <script>
        function toggleChatWidget() {
            var chatPopup = document.getElementById("whatsapp-chat-popup");
            if (chatPopup.style.display === "none" || chatPopup.style.display === "") {
                chatPopup.style.display = "block";
            } else {
                chatPopup.style.display = "none";
            }
        }
    </script> --}}

    <!-- Safe Auto-Reload Script -->
    <script>
        // Fungsi untuk reload halaman dengan pengecekan metode dan Cloudflare
        function safeReload() {
            // Cek apakah ada form yang sedang disubmit
            if (sessionStorage.getItem('formSubmitting')) {
                return;
            }

            // Cek apakah halaman dalam proses POST
            if (window.performance && window.performance.navigation.type === 0) {
                // Simpan URL saat ini
                const currentUrl = window.location.href;

                // Lakukan request HEAD terlebih dahulu untuk cek Cloudflare
                fetch(currentUrl, {
                        method: 'HEAD'
                    })
                    .then(response => {
                        if (response.ok) {
                            // Jika response ok, reload dengan GET
                            window.location.href = currentUrl;
                        }
                    })
                    .catch(() => {
                        // Jika error, jangan reload
                        console.log('Skipping reload due to potential Cloudflare check');
                    });
            }
        }

        // Set interval untuk reload yang aman
        setInterval(safeReload, 300000); // 5 menit

        // Tambahkan event listener untuk form submissions
        document.addEventListener('DOMContentLoaded', function() {
            const forms = document.querySelectorAll('form');
            forms.forEach(form => {
                form.addEventListener('submit', function() {
                    // Set flag bahwa form sedang disubmit
                    sessionStorage.setItem('formSubmitting', 'true');
                    // Clear flag setelah 5 detik (berikan waktu untuk submit)
                    setTimeout(() => {
                        sessionStorage.removeItem('formSubmitting');
                    }, 5000);
                });
            });
        });

        // Handle Cloudflare challenges
        if (document.getElementById('challenge-form')) {
            // Jika ada Cloudflare challenge, jangan lakukan auto-reload
            console.log('Cloudflare challenge detected, disabling auto-reload');
        }
    </script>

    <!-- Cloudflare Error Handler -->
    <script>
        // Tangkap semua error yang mungkin terjadi
        window.addEventListener('error', function(e) {
            // Jika error adalah MethodNotAllowedHttpException
            if (e.message && e.message.includes('MethodNotAllowedHttpException')) {
                // Redirect ke homepage dengan GET
                window.location.href = '/';
                return;
            }
        });

        // Tangkap unhandled rejections
        window.addEventListener('unhandledrejection', function(e) {
            if (e.reason && e.reason.toString().includes('MethodNotAllowedHttpException')) {
                window.location.href = '/';
                return;
            }
        });
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

    <!-- Cloudflare Performance Scripts -->
    <script>
        // Handle Cloudflare offline mode
        if ('serviceWorker' in navigator) {
            window.addEventListener('load', function() {
                if (navigator.onLine) {
                    console.log('Online mode');
                } else {
                    console.log('Offline mode');
                    document.body.innerHTML +=
                        '<div style="position: fixed; bottom: 0; width: 100%; background-color: #f8d7da; color: #721c24; text-align: center; padding: 10px;">Anda sedang dalam mode offline. Beberapa fitur mungkin tidak tersedia.</div>';
                }
            });

            window.addEventListener('online', function() {
                console.log('Became online');
                location.reload();
            });

            window.addEventListener('offline', function() {
                console.log('Became offline');
                document.body.innerHTML +=
                    '<div style="position: fixed; bottom: 0; width: 100%; background-color: #f8d7da; color: #721c24; text-align: center; padding: 10px;">Koneksi terputus. Mencoba menghubungkan kembali...</div>';
            });
        }

        // Handle resource loading errors and Cloudflare challenges
        window.addEventListener('error', function(e) {
            if (e.target.tagName === 'SCRIPT' || e.target.tagName === 'LINK') {
                const originalSrc = e.target.src || e.target.href;
                if (originalSrc && !originalSrc.includes('cdnjs.cloudflare.com')) {
                    const cfSrc = 'https://cdnjs.cloudflare.com' + originalSrc;
                    const element = document.createElement(e.target.tagName);
                    element.src = cfSrc;
                    element.href = cfSrc;
                    document.head.appendChild(element);
                }
            }
        }, true);

        // Handle Cloudflare challenges
        window.addEventListener('load', function() {
            if (document.getElementById('challenge-form')) {
                setTimeout(function() {
                    location.reload();
                }, 3000);
            }
        });
    </script>

    <!-- Cloudflare Browser Insights -->
    <script defer src='https://static.cloudflareinsights.com/beacon.min.js' data-cf-beacon='{"token": "your-token"}'>
    </script>
</body>

</html>
