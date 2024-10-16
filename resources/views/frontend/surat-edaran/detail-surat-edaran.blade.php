@include('header')
<!-- Hero Start -->
<!-- Hero Start -->
<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Detail {{ $surat_edaran->judul }} </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/surat-edaran') }}">Surat Edaran</a></li>
                                <li class="breadcrumb-item"><a href="#">Detail Surat Edaran</a></li>
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
                        <h2>Detail Intruksi Presiden</h2>
                        <div class="row mt-4">
                            <div class="col">
                                <table class="table table-striped">
                                    <tbody>
                                        <tr>
                                            <th>Judul</th>
                                            <td>{{ $surat_edaran->judul }}</td>
                                        </tr>
                                        <tr>
                                            <th>Keterangan</th>
                                            <td>{{ $surat_edaran->keterangan }}</td>
                                        </tr>
                                        <tr>
                                            <th>Tahun</th>
                                            <td>{{ $surat_edaran->tahun }}</td>
                                        </tr>
                                        <tr>
                                            <th>Tanggal Upload</th>
                                            <td>{{ \Carbon\Carbon::parse($surat_edaran->created_at)->translatedFormat('l, d F Y') }}
                                        </tr>
                                        <tr>
                                            <th>File</th>
                                            <td>
                                                @foreach (json_decode($surat_edaran->file, true) as $file)
                                                    @if (!empty($file['download_link']))
                                                        <a href="{{ route('surat-edaran.download', ['id' => $surat_edaran->id, 'fileName' => $file['download_link']]) }}"
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
                                            <td>{{ $surat_edaran->didownload }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
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
