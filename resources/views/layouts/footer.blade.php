<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-12 mb-0 mb-md-4 pb-0 pb-md-2">
                <a href="{{ route('index') }}" class="logo-footer">
                    <img src="{{ asset('storage/' . $identitasWebsites->logo_light) }}" height="50"
                        alt="{{ $identitasWebsites->nama_website }}">
                    {{-- <h2 class="text-muted">SIMAPEL</h2> --}}
                </a>
                <p class="para-desc mt-2 mx-auto">Selamat Datang di Website <span
                        class="text-primary fw-bold">{{ $identitasWebsites->kantor }}</span>
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
                <div>
                    <span id="jam"></span>
                </div>
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
    <div class="container text-center">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="text-sm-start">
                    <p class="mb-0">© 2021 Kecamatan Paal Merah, Kota Jambi. Developer by <a href="/"
                            target="_blank" class="text-reset">Dede Syahrul Muadhom</a>.
                    </p>
                </div>
            </div><!--end col-->
        </div><!--end row-->
    </div><!--end container-->
</footer><!--end footer-->
