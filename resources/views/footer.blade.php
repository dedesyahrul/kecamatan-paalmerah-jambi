<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-12 mb-0 mb-md-4 pb-0 pb-md-2">
                <a href="{{ route('index') }}" class="logo-footer">
                    <img src="{{ asset('storage/' . $identitasWebsites->logo_light) }}" height="50"
                        alt="{{ $identitasWebsites->nama_website }}">
                    {{-- <h2 class="text-muted">SIMAPEL</h2> --}}
                </a>
                <p class="para-desc mt-2 mx-auto">Selamat Datang di Website <span class="text-primary fw-bold">
                        {{ $identitasWebsites->kantor }}</span>
                    Pemerintah Kota Jambi.
                </p>
                <ul class="list-unstyled social-icon foot-social-icon mb-0 mt-4">
                    <li class="list-inline-item"><a href="https://www.facebook.com/kecamatanpaalmerahjbi"
                            class="rounded" target="_blank"><i data-feather="facebook"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="https://www.instagram.com/kecamatanpaal_merah_jbi/"
                            class="rounded" target="_blank"><i data-feather="instagram"
                                class="fea icon-sm fea-social"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="twitter"
                                class="fea icon-sm fea-social"></i></a></li>
                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i data-feather="youtube"
                                class="fea icon-sm fea-social"></i></a></li>
                </ul><!--end icon-->

            </div><!--end col-->

            {{-- <div id="contact" class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <h5 class="text-light footer-head">Kontak</h5>
                <p class="mt-4 text-muted">Jl. Pangeran Diponegoro <br>Telp/Hp. (0740) 7370002 <br>e-Mail.
                    disdik@tanjabtimkab.go.id</p>
            </div> --}}
            <div id="contact" class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <h5 class="text-light footer-head">Kontak</h5>
                <p class="mt-4 text-muted">
                    {{ $identitasWebsites->alamat }} <br>
                    Telp/Fax. {{ $identitasWebsites->telpon_fax }} <br>
                    e-Mail. <a href="mailto:{{ $identitasWebsites->email }}">{{ $identitasWebsites->email }}</a>
                </p>
            </div>


            <div class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <ul class="list-unstyled footer-list d-flex justify-content-center align-items-center">
                    <li class="me-3"><img src="{{ asset('assets') }}/images/logo-jambi.png" height="100"
                            alt="Logo Jambi"></li>
                    <li><img src="{{ asset('assets') }}/images/logo-kec-paal-merah.webp" height="130" alt="Logo Pall">
                    </li>
                </ul>
            </div>
        </div><!--end container-->
</footer><!--end footer-->
<footer class="footer footer-bar">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="text-center">
                    <p class="mb-0">© {{ $identitasWebsites->title_bottom }}</p>
                </div>
            </div>
        </div>
    </div>
</footer>

<a href="#" onclick="topFunction()" id="back-to-top" class="btn btn-icon btn-primary back-to-top"><i
        data-feather="arrow-up" class="icons"></i></a>
<!-- tobii js -->
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
<!--Note: All important javascript like page loader, menu, sticky menu, menu-toggler, one page menu etc. -->
<script type="text/javascript" src="https://widget.kominfo.go.id/gpr-widget-kominfo.min.js"></script>
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
    // Fungsi untuk reload halaman setelah waktu tertentu (300000 ms = 5 menit)
    setTimeout(function() {
        window.location.reload(); // Reload halaman
    }, 300000); // 300000 ms = 5 menit
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
    $(document).ready(function() {
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            dots: false,
            autoplay: true,
            speed: 2000,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 4
                }
            }
        });
    });
</script>
<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var slider = tns({
            container: '.standingbanner',
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            controls: false,
            nav: false,
            speed: 2000,
            loop: true
        });
    });
</script>
<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var slider = tns({
            container: '.inibanner',
            items: 2, // Show 1 item at once
            axis: 'vertical', // Slide vertically
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            controls: false, // Hide navigation controls
            nav: false,
            speed: 1000, // Set slide speed (ms)
            loop: true
        });
    });
</script>


{{-- webcam --}}
