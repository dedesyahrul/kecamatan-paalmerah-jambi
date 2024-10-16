@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Kata Sambutan </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/kata-sambutan') }}">Kata Sambutan</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div> <!--end col-->
        </div><!--end row-->
    </div> <!--end container-->
</section><!--end section-->
<!-- Hero End -->

<!-- Shape Start -->
<div class="position-relative">
    <div class="shape overflow-hidden text-white">
        <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
        </svg>
    </div>
</div>
<!--Shape End-->

<!-- About Start -->
<section class="section">
    <div class="container">
        @foreach ($kataSambutans as $sambutan)
            <div class="row align-items-center">
                <div class="col-lg-5 col-md-5 mt-4 pt-2 mt-sm-0 pt-sm-0">
                    <div class="position-relative">
                        @if ($sambutan->foto)
                            <img src="{{ asset('storage/' . $sambutan->foto) }}"
                                class="rounded img-fluid mx-auto d-block" alt="{{ $sambutan->judul }}">
                        @endif
                    </div>
                </div><!--end col-->

                <div class="col-lg-7 col-md-7 mt-4 pt-2 mt-sm-0 pt-sm-0">
                    <div class="section-title ms-lg-4">
                        <h4 class="title mb-4">{{ $sambutan->judul }}</h4>
                        <p class="text-muted">{!! $sambutan->katasambutan !!}</p>
                        <small>
                            {{ $sambutan->penulis }}
                        </small>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        @endforeach
    </div><!--end container-->
</section><!--end section-->
<!-- About End -->

<!-- Team Start -->
<section class="section bg-light">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <div class="section-title mb-4 pb-2">
                    <h4 class="title mb-4">Pejabat dan Staff</h4>
                    <p class="text-muted para-desc mx-auto mb-0">Dinas Komunikasi dan Informatika Kabupaten Tanjung
                        Jabung Timur</p>
                </div>
            </div><!--end col-->
        </div><!--end row-->

        <div class="row">
            @foreach ($pegawais->take(4) as $pegawai)
                <div class="col-lg-3 col-md-6 mt-4 pt-2">
                    <div class="card team text-center bg-transparent border-0">
                        <div class="card-body p-0">
                            <div class="position-relative">
                                <img src="{{ $pegawai->foto_pegawai ? asset('storage/' . $pegawai->foto_pegawai) : asset('assets/images/pegawai.png') }}"
                                    class="img-fluid avatar avatar-ex-large rounded-circle" alt="">
                                <ul class="list-unstyled social-icon team-icon mb-0 mt-4">
                                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                                data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                                data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                                data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                                    <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                                data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                                </ul><!--end icon-->
                            </div>
                            <div class="content pt-3 pb-3">
                                <h5 class="mb-0"><a
                                        href="{{ route('detail-pegawaidanstaff', ['id' => $pegawai->id]) }}"
                                        class="name text-dark">{{ $pegawai->nama }}</a>
                                </h5>
                                <small
                                    class="designation text-muted">{{ $pegawai->jabatan->nama_jabatan ?? 'Tidak ada jabatan' }}</small>
                            </div>
                        </div>
                    </div>
                </div><!--end col-->
            @endforeach
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->


@include('footer')
