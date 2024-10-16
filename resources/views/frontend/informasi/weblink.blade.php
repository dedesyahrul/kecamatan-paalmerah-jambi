@extends('layouts.app')

@section('title', 'Link Terkait | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Link Terkait </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Link Terkait</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div> <!--end container-->
    </section><!--end section-->
    <div class="position-relative">
        <div class="shape overflow-hidden text-white">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
@endsection
@section('content')
    <section class="section">
        <div class="container">
            <div class="row">
                <!-- BLog Start -->
                <div class="col-lg-8 col-md-6">
                    <div class="card shadow-sm border-0 rounded-lg overflow-hidden">
                        <div class="card-body p-4">
                            <h3 class="mb-4 text-primary">Daftar Weblinks</h3>
                            <div class="table-responsive">
                                <table class="table table-hover align-middle">
                                    <thead>
                                        <tr class="bg-light">
                                            <th class="text-center" width="5%">#</th>
                                            <th>Nama Instansi</th>
                                            <th class="d-none d-md-table-cell">Link</th>
                                            <th class="text-center" width="15%">Logo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($weblink as $wlink)
                                            <tr>
                                                <td class="text-center">{{ $loop->iteration }}</td>
                                                <td>
                                                    <a href="{{ $wlink->link }}" target="_blank"
                                                        class="text-decoration-none fw-bold text-dark hover-primary">
                                                        {{ $wlink->judul }}
                                                    </a>
                                                </td>
                                                <td class="d-none d-md-table-cell">
                                                    <a href="{{ $wlink->link }}" target="_blank"
                                                        class="text-muted text-decoration-none">
                                                        {{ Str::limit($wlink->link, 30) }}
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <img src="{{ asset('storage/' . $wlink->logo_web) }}"
                                                        alt="{{ $wlink->judul }}" class="img-fluid rounded"
                                                        style="max-width: 50px; max-height: 50px;">
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
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
                </div>
                <!-- BLog End -->

                <!-- START SIDEBAR -->
                @include('frontend.partials.sidebar')
                <!-- END SIDEBAR -->
            </div><!--end row-->
        </div><!--end container-->
    </section><!--end section-->

    <style>
        .table th {
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.85rem;
            letter-spacing: 0.5px;
        }

        .table td {
            vertical-align: middle;
        }

        .hover-primary:hover {
            color: #007bff !important;
        }

        .table-hover tbody tr:hover {
            background-color: rgba(0, 123, 255, 0.05);
        }

        @media (max-width: 767.98px) {

            .table th,
            .table td {
                font-size: 0.9rem;
            }
        }
    </style>
@endsection
