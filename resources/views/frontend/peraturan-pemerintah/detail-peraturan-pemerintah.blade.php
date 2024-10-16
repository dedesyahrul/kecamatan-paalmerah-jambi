@include('header')
<!-- Hero Start -->
<!-- Hero Start -->
<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Detail Peraturan Daerah </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/peraturan-pemerintah') }}">Peraturan
                                        Pemerintah</a></li>
                                <li class="breadcrumb-item"><a>Detail Peraturan Pemerintah</a></li>
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

<!-- Blog Start -->
<section class="section">
    <div class="container">
        <div class="row">
            <!-- BLog Start -->
            <div class="col-lg-8 col-md-6">
                <div class="row">
                    <div class="container mt-4">
                        <h2>Detail Peraturan Pemerintah</h2>
                        <div class="row mt-4">
                            <div class="col">
                                <table class="table table-striped">
                                    <tbody>
                                        <tr>
                                            <th>Judul</th>
                                            <td>{{ $peraturan_pemerintah->judul }}</td>
                                        </tr>
                                        <tr>
                                            <th>Keterangan</th>
                                            <td>{{ $peraturan_pemerintah->keterangan }}</td>
                                        </tr>
                                        <tr>
                                            <th>Tahun</th>
                                            <td>{{ $peraturan_pemerintah->tahun }}</td>
                                        </tr>
                                        <tr>
                                            <th>Tanggal Upload</th>
                                            <td>{{ \Carbon\Carbon::parse($peraturan_pemerintah->created_at)->translatedFormat('l, d F Y') }}
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>File</th>
                                            <td>
                                                @foreach (json_decode($peraturan_pemerintah->file, true) as $file)
                                                    @if (!empty($file['download_link']))
                                                        <a href="{{ route('peraturan-pemerintah.download', ['id' => $peraturan_pemerintah->id, 'fileName' => $file['download_link']]) }}"
                                                            class="btn btn-primary"
                                                            download="{{ $file['original_name'] }}">Download</a>
                                                    @else
                                                        <p>File not available for download</p>
                                                    @endif
                                                @endforeach
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Di Download</th>
                                            <td>{{ $peraturan_pemerintah->didownload }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                    <!-- PAGINATION START -->
                    <div class="col-12">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                    aria-label="Previous">Prev</a></li>
                            <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)"
                                    aria-label="Next">Next</a></li>
                        </ul>
                    </div><!--end col-->
                    <!-- PAGINATION END -->
                </div><!--end row-->
            </div><!--end col-->
            <!-- BLog End -->

            <!-- START SIDEBAR -->
            @include('frontend.partials.sidebar')
            <!-- END SIDEBAR -->
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->
<!-- Blog End -->


@include('footer')
