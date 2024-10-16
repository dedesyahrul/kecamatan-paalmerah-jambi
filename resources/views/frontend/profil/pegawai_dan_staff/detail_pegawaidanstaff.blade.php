@include('header')

<!-- Hero Start -->
<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Detail Pegawai/Staff </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/pegawaidanstaff') }}">Pegawai dan
                                        Staff</a></li>
                                <li class="breadcrumb-item"><a>Detail Pegawai/Staff</a></li>
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

<section class="section">
    <div class="container">
        <div class="row">
            <!--  detail pegawai Start -->
            <div class="col-lg-8 col-md-6">
                <div class="row">
                    <div class="container mt-4">
                        <h3>Detail Pegawai</h3>
                        <div class="row mt-4">
                            <div class="col">
                                <div class="container mt-5">
                                    <div class="card">
                                        <div class="card-header">
                                            <h2>{{ $pegawai->nama }}</h2>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <img src="{{ $pegawai->foto_pegawai ? asset('storage/' . $pegawai->foto_pegawai) : asset('assets/images/pegawai.png') }}"
                                                        class="img-fluid rounded" alt="{{ $pegawai->nama }}">
                                                </div>
                                                <div class="col-md-8">
                                                    <p><strong>Jabatan:</strong>
                                                        {{ $pegawai->jabatan->nama_jabatan ?? 'Tidak ada jabatan' }}</p>
                                                    <p><strong>Pangkat:</strong> {{ $pegawai->pangkat }}</p>
                                                    <p><strong>Tempat,Tanggal Lahir:</strong> {{ $pegawai->tempat }},
                                                        {{ optional($pegawai->tanggal_lahir)->format('d F Y') }}</p>
                                                    <p><strong>Jenis Kelamin:</strong> {{ $pegawai->jk }}</p>
                                                    <p><strong>Pendidikan:</strong> {{ $pegawai->pendidikan }}</p>
                                                    <p><strong>Tahun Lulus:</strong> {{ $pegawai->tahunlulus }}</p>
                                                    <p><strong>Keterangan:</strong> {{ $pegawai->keterangan }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  detail pegawai End -->

            <!-- START SIDEBAR -->
            <div class="col-lg-4 col-md-6 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <div class="card border-0 sidebar sticky-bar rounded shadow">
                    <div class="card-body">
                        <!-- SEARCH -->
                        <div class="widget">
                            <form role="search" method="get">
                                <div class="input-group mb-3 border rounded">
                                    <input type="text" id="s" name="s" class="form-control border-0"
                                        placeholder="Search Keywords...">
                                    <button type="submit" class="input-group-text bg-transparent border-0"
                                        id="searchsubmit"><i class="uil uil-search"></i></button>
                                </div>
                            </form>
                        </div>
                        <!-- SEARCH -->

                        <!-- Categories -->
                        <div class="widget mb-4 pb-2">
                            <h5 class="widget-title">Categories</h5>
                            <ul class="list-unstyled mt-4 mb-0 blog-categories">
                                <li><a href="jvascript:void(0)">Finance</a> <span class="float-end">13</span></li>
                                <li><a href="jvascript:void(0)">Business</a> <span class="float-end">09</span></li>
                                <li><a href="jvascript:void(0)">Blog</a> <span class="float-end">18</span></li>
                                <li><a href="jvascript:void(0)">Corporate</a> <span class="float-end">20</span></li>
                                <li><a href="jvascript:void(0)">Investment</a> <span class="float-end">22</span></li>
                            </ul>
                        </div>
                        <!-- Categories -->
                        <div class="widget mb-4 pb-2">
                            <div id="gpr-kominfo-widget-container"></div>
                        </div>
                        <!-- RECENT POST -->
                        <div class="widget mb-4 pb-2">
                            <h5 class="widget-title">Recent Post</h5>
                            <div class="mt-4">
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-start"> <a href="jvascript:void(0)"> <img
                                                alt="img" src="{{ asset('assets') }}/images/blog/07.jpg"
                                                class="img-fluid rounded"></a>
                                    </div>
                                    <div class="post-recent-content float-start"><a href="jvascript:void(0)">Consultant
                                            Business</a><span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-start"> <a href="jvascript:void(0)"> <img
                                                alt="img" src="{{ asset('assets') }}/images/blog/08.jpg"
                                                class="img-fluid rounded"></a>
                                    </div>
                                    <div class="post-recent-content float-start"><a href="jvascript:void(0)">Look On
                                            The Glorious Balance</a> <span class="text-muted mt-2">15th June,
                                            2019</span></div>
                                </div>
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-start"> <a href="jvascript:void(0)"> <img
                                                alt="img" src="{{ asset('assets') }}/images/blog/01.jpg"
                                                class="img-fluid rounded"></a></div>
                                    <div class="post-recent-content float-start"><a href="jvascript:void(0)">Research
                                            Financial.</a> <span class="text-muted mt-2">15th June, 2019</span></div>
                                </div>
                            </div>
                        </div>
                        <!-- RECENT POST -->

                        <!-- TAG CLOUDS -->
                        <div class="widget mb-4 pb-2">
                            <h5 class="widget-title">Tags Cloud</h5>
                            <div class="tagcloud mt-4">
                                <a href="jvascript:void(0)" class="rounded">Business</a>
                                <a href="jvascript:void(0)" class="rounded">Finance</a>
                                <a href="jvascript:void(0)" class="rounded">Marketing</a>
                                <a href="jvascript:void(0)" class="rounded">Fashion</a>
                                <a href="jvascript:void(0)" class="rounded">Bride</a>
                                <a href="jvascript:void(0)" class="rounded">Lifestyle</a>
                                <a href="jvascript:void(0)" class="rounded">Travel</a>
                                <a href="jvascript:void(0)" class="rounded">Beauty</a>
                                <a href="jvascript:void(0)" class="rounded">Video</a>
                                <a href="jvascript:void(0)" class="rounded">Audio</a>
                            </div>
                        </div>
                        <!-- TAG CLOUDS -->

                        <!-- SOCIAL -->
                        <div class="widget">
                            <h5 class="widget-title">Follow us</h5>
                            <ul class="list-unstyled social-icon mb-0 mt-4">
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="facebook" class="fea icon-sm fea-social"></i></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="instagram" class="fea icon-sm fea-social"></i></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="twitter" class="fea icon-sm fea-social"></i></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="linkedin" class="fea icon-sm fea-social"></i></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="github" class="fea icon-sm fea-social"></i></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="youtube" class="fea icon-sm fea-social"></i></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)" class="rounded"><i
                                            data-feather="gitlab" class="fea icon-sm fea-social"></i></a></li>
                            </ul><!--end icon-->
                        </div>
                        <!-- SOCIAL -->
                    </div>
                </div>
            </div><!--end col-->
            <!-- END SIDEBAR -->
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->
<!-- Blog End -->

<!-- Footer Start -->
@include('footer')
