@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Keputusan Bupati </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/keputusan-bupati') }}">Keputusan
                                        Bupati</a></li>

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
                    @if ($keputusan_bupatis->isEmpty())
                        <div class="col-12">
                            <p>Belum ada data</p>
                        </div>
                    @else
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th width="25% !important">Judul</th>
                                    <th>Tahun</th>
                                    <th>Tanggal Upload</th>
                                    <th>Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($keputusan_bupatis as $keputusan_bupati)
                                    <tr>
                                        <td>{{ $keputusan_bupati->judul }}</td>
                                        <td>{{ $keputusan_bupati->tahun }}</td>
                                        <td>{{ \Carbon\Carbon::parse($keputusan_bupati->created_at)->translatedFormat('l, d F Y') }}
                                        </td>
                                        <td><a href="{{ route('detail-keputusan-bupati', $keputusan_bupati->id) }}"
                                                class="btn btn-primary">Detail</a></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                        <!-- PAGINATION START -->
                        <div class="col-12">
                            {{ $keputusan_bupatis->links('pagination::bootstrap-4') }}
                        </div><!--end col-->
                    @endif
                </div>
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
