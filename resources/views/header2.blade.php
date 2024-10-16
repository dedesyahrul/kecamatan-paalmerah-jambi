<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Dinas Komunikasi & Informatika | Kab. Tanjung Jabung Timur</title>
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
    <header id="topnav" class="defaultscroll sticky bg-white">
        <div class="container">
            <!-- Logo container-->
            <a class="logo" href="{{ route('index') }}">
                <img src="{{ asset('assets') }}/images/logo-dark.png" height="30" class="logo-light-mode"
                    alt="">
                <img src="{{ asset('assets') }}/images/logo-footer.png" height="24" class="logo-dark-mode"
                    alt="">
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
                <ul class="navigation-menu">
                    {{-- <li><a href="/" class="sub-menu-item">Beranda</a></li> --}}
                    <li class="has-submenu parent-parent-menu-item">
                        <a href="javascript:void(0)">PROFIL</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li>
                                <ul>
                                    <li><a href="{{ url('/sejarah') }}" class="sub-menu-item">Sejarah</a>
                                    </li>
                                    <li><a href="{{ url('/struktur') }}" class="sub-menu-item">Struktur</a>
                                    </li>
                                    <li><a href="{{ url('/visimisi') }}" class="sub-menu-item">Visi Misi</a>
                                    </li>
                                    <li><a href="{{ url('/tugaswewe') }}" class="sub-menu-item">Tugas & Wewenang</a>
                                    </li>
                                    <li><a href="{{ url('/pegawaidanstaff') }}" class="sub-menu-item">Data
                                            Pegawai/Staff</a>
                                    </li>
                                    <li><a href="{{ url('/maklumat') }}" class="sub-menu-item">Maklumat</a>
                                    </li>
                                    <li><a href="{{ url('/moto') }}" class="sub-menu-item">Moto</a>
                                    </li>
                                    <li><a href="{{ url('/kata-sambutan') }}" class="sub-menu-item">Kata Sambutan</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="has-submenu parent-parent-menu-item">
                        <a href="javascript:void(0)">REGULASI</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li>
                                <ul>
                                    <li><a href="{{ url('/undang-undang') }}" class="sub-menu-item">Undang-Undang</a>
                                    </li>
                                    <li><a href="{{ url('/peraturan-daerah') }}" class="sub-menu-item">Peraturan
                                            Daerah</a>
                                    </li>
                                    <li><a href="{{ url('/peraturan-pemerintah') }}" class="sub-menu-item">Peraturan
                                            Pemerintah</a>
                                    </li>
                                    <li><a href="{{ url('/peraturan-kemenkominfo') }}" class="sub-menu-item">Peraturan
                                            Kemen Kominfo</a>
                                    </li>
                                    <li><a href="{{ url('/peraturan-kemendagri') }}" class="sub-menu-item">Peraturan
                                            Kemen Dagri</a>
                                    </li>
                                    <li><a href="{{ url('/keputusan-bupati') }}" class="sub-menu-item">Keputusan
                                            Bupati</a>
                                    </li>
                                    <li><a href="{{ url('/peraturan-bupati') }}" class="sub-menu-item">Peraturan
                                            Bupati</a>
                                    </li>
                                    <li><a href="{{ url('/intruksi-presiden') }}" class="sub-menu-item">Intruksi
                                            Presiden</a>
                                    </li>
                                    <li><a href="{{ url('/surat-edaran') }}" class="sub-menu-item">Surat
                                            Edaran</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="has-submenu parent-parent-menu-item">
                        <a href="javascript:void(0)">Berita</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li>
                                <ul>
                                    <ul>
                                        @foreach ($kategoriBeritas as $kategori)
                                            <li><a href="{{ url('/berita/' . $kategori->id) }}"
                                                    class="sub-menu-item">{{ $kategori->nama_kategori }}</a></li>
                                        @endforeach

                                    </ul>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="has-submenu parent-parent-menu-item">
                        <a href="javascript:void(0)">Galeri</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li>
                                <ul>
                                    <li><a href="{{ url('/galeri/foto') }}" class="sub-menu-item">Galeri Foto</a>
                                    </li>
                                    <li><a href="{{ url('frontend/galeri/video') }}" class="sub-menu-item">Galeri
                                            Video</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="has-submenu parent-parent-menu-item">
                        <a href="javascript:void(0)">Basis Data</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li>
                                <ul>
                                    <li><a href="{{ url('/basisdata/emailopd') }}" class="sub-menu-item">Email
                                            OPD</a>
                                    </li>
                                    <li><a href="{{ url('/basisdata/bts') }}" class="sub-menu-item">Lokasi BTS</a>
                                    </li>
                                    <li><a href="{{ url('/basisdata/radio') }}" class="sub-menu-item">Daftar
                                            Radio</a>
                                    </li>
                                    <li><a href="{{ url('/basisdata/warnet') }}" class="sub-menu-item">Daftar
                                            Warnet</a>
                                    </li>
                                    <li><a href="{{ url('/basisdata/blankspot') }}" class="sub-menu-item">Data Blank
                                            Spot</a>
                                    </li>
                                    <li><a href="{{ url('/basisdata/tvkabel') }}" class="sub-menu-item">Data TV
                                            Kabel</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="has-submenu parent-parent-menu-item">
                        <a href="javascript:void(0)">Informasi</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li>
                                <ul>
                                    <li><a href="{{ url('/informasi/pengumuman') }}" class="sub-menu-item">Pengumuman
                                        </a>
                                    </li>
                                    <li><a href="{{ url('/informasi/agenda') }}" class="sub-menu-item">Agenda</a>
                                    </li>
                                    <li><a href="{{ url('/informasi/weblink') }}" class="sub-menu-item">Link
                                            Terkait</a>
                                    </li>
                                    <li><a href="{{ url('/informasi/sakip') }}" class="sub-menu-item">SAKIP</a>
                                    </li>
                                    <li><a href="{{ url('/informasi/renstra') }}" class="sub-menu-item">RENSTRA</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul><!--end navigation menu-->
                {{-- <div class="buy-menu-btn d-none">
                    <a href="https://1.envato.market/4n73n" target="_blank" class="btn btn-primary">Buy Now</a>
                </div><!--end login button--> --}}
            </div><!--end navigation-->
        </div><!--end container-->
    </header><!--end header-->
    <!-- Navbar End -->
