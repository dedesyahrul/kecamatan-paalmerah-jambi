@include('header')

<body>
    <!-- Loader -->
    <div id="preloader">
        <div id="status">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- Loader -->
    <section class="home-slider position-relative">
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach ($sliders as $key => $slider)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}" data-bs-interval="3000">
                        <a href="{{ $slider->tautan }}" target="_blank">
                            <div class="bg-home-75vh d-flex align-items-center"
                                style="background: url('{{ Voyager::image($slider->slider) }}') center center; background-size: cover;">
                                <!-- Konten lainnya -->
                                <div class="container">
                                    <div class="row mt-5 justify-content-center">
                                        <div class="col-lg-6">
                                            <h2 class="text-dark title-dark mb-3">{{ $slider->judul }}</h2>
                                            <p class="para-desc mx-auto text-black-50 mb-0">{{ $slider->deskripsi }}</p>
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
    <section class="section">
        <div class="container">
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
                        <a href="{{ route('index') }}" class="btn btn-soft-primary">Beranda <i data-feather="arrow-left"
                                class="fea icon-sm"></i></a>
                    </div>
                </div><!--end col-->
                <div class="col-md-12 mt-4">
                    <form action="{{ route('simpan_kritik') }}" method="POST">
                        @csrf
                        <div style="display:none;">
                            <label for="hidden_field">Jangan Isi Kolom Ini</label>
                            <input type="text" id="hidden_field" name="hidden_field" value="">
                        </div>
                        <div class="mb-3">
                            <label for="tanggal" class="form-label">Tanggal</label>
                            <input type="date" class="form-control" id="tanggal" name="tanggal"
                                value="{{ date('Y-m-d') }}" readonly>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="nama" class="form-label">Nama</label>
                                    <input type="text" class="form-control" id="nama" name="nama"
                                        oninput="capitalize(this)" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="alamat" class="form-label">Alamat</label>
                                    <input type="text" class="form-control" id="alamat" name="alamat">
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="kritik_saran" class="form-label">Kritik dan Saran</label>
                            <textarea class="form-control" id="kritik_saran" rows="4" name="kritik_saran"></textarea>
                        </div>
                        <hr>
                        <div class="mb-3">
                            <label for="pelayanan">Bagaimana pendapat anda tentang pelayanan Dinas Pendidikan Kabupaten
                                Tanjung
                                Jabung Timur ?</label><br>
                            {{-- <input type="radio" id="buruk" name="pendapat_pelayanan" value="buruk">
                            <label for="buruk">Buruk</label><br>
                            <input type="radio" id="cukup" name="pendapat_pelayanan" value="cukup">
                            <label for="cukup">Cukup</label><br>
                            <input type="radio" id="baik" name="pendapat_pelayanan" value="baik">
                            <label for="baik">Baik</label><br>
                            <input type="radio" id="sangat_baik" name="pendapat_pelayanan" value="sangat_baik">
                            <label for="sangat_baik">Sangat Baik</label><br> --}}
                            <input type="radio" id="buruk" name="pendapat_pelayanan" value="buruk">
                            <label for="buruk">Buruk &#128542;</label><br>

                            <input type="radio" id="cukup" name="pendapat_pelayanan" value="cukup">
                            <label for="cukup">Cukup &#128528;</label><br>

                            <input type="radio" id="baik" name="pendapat_pelayanan" value="baik">
                            <label for="baik">Baik &#128578;</label><br>

                            <input type="radio" id="sangat_baik" name="pendapat_pelayanan" value="sangat_baik">
                            <label for="sangat_baik">Sangat Baik &#128525;</label><br>

                        </div>
                        <div class="mb-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"
                                    onchange="toggleSubmit(this)">
                                <label class="form-check-label" for="flexCheckDefault">Konfirmasi Sebelum
                                    Mengirim</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" id="submitButton" disabled>Kirim</button>
                    </form>
                </div>
            </div>
        </div><!--end row-->
    </section>

    @include('footer')

</body>

</html>
