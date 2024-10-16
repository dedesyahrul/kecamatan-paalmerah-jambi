@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Link Terkait </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="/informasi/weblink">WebLink</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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
            <!-- BLog Start -->
            <div class="col-lg-8 col-md-6">
                <div class="card blog blog-detail border-0 shadow rounded">
                    <div class="card-body">
                        <h3 class="mb-4">Daftar Weblinks</h3>
                        <hr>
                        <table class="table">
                            <thead style="background-color: rgba(248, 154, 66, 0.5);">
                                <tr>
                                    <th>No.</th>
                                    <th scope="col">Nama Instansi</th>
                                    <th scope="col">Link</th>
                                    <th scope="col">Logo Web</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($weblink as $wlink)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>
                                            <a href="{{ $wlink->link }}" target="_blank">{{ $wlink->judul }}</a>
                                        </td>
                                        <td>{{ $wlink->link }}</td>
                                        <td>
                                            <img src="{{ asset('storage/' . $wlink->logo_web) }}" alt="Logo Web"
                                                style="max-width: 100px; max-height: 100px;">
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- PAGINATION START -->
                <div class="col-12">
                    <ul class="pagination justify-content-center mb-0 mt-4">
                        {{ $weblink->links('pagination::bootstrap-4') }}
                    </ul>
                </div><!--end col-->
                <!-- PAGINATION END -->

                <div class="card shadow rounded border-0 mt-4">
                    <div class="card-body">
                        <div id="fb-root"></div>
                        <script async defer crossorigin="anonymous"
                            src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v20.0&appId=770891248364623" nonce="n7ehjR4b">
                        </script>
                        <!-- Tempatkan elemen komentar Facebook -->
                        <div class="fb-comments" data-href="{{ url()->current() }}" data-numposts="5" data-width="">
                        </div>
                    </div>

                </div>

                @include('frontend.partials.slide-berita')
            </div>
            <!-- BLog End -->

            <!-- START SIDEBAR -->
            @include('frontend.partials.sidebar')
            <!-- END SIDEBAR -->
        </div><!--end row-->
    </div><!--end container-->
</section><!--end section-->

@include('footer')
