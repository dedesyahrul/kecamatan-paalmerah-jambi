@extends('layouts.app')

@section('title',
    'Download File Documents | Official Website Kecamatan Paal Merah | Pemerintah Kota
    Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark">Download File Documents</h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Download File Documents</li>
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
                    <div class="card blog blog-detail border-0 shadow rounded">
                        <div class="card-body">
                            <h3 class="card-title mb-4">Daftar File Download</h3>

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <select id="show-entries" class="form-select">
                                        <option value="10">Show 10</option>
                                        <option value="25">Show 25</option>
                                        <option value="50">Show 50</option>
                                        <option value="100">Show 100</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" id="search" class="form-control" placeholder="Cari file...">
                                </div>
                            </div>

                            <div id="file-table">
                                @include('frontend.partials.file-table')
                            </div>
                        </div>
                    </div>

                </div>
                <!-- BLog End -->

                <!-- START SIDEBAR -->
                @include('frontend.partials.sidebar-front')
                <!-- END SIDEBAR -->
            </div><!--end row-->
        </div><!--end container-->
    </section><!--end section-->

@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            function fetchData(page, perPage, search) {
                $.ajax({
                    url: "{{ route('download-file-ajax') }}",
                    data: {
                        page: page,
                        show: perPage,
                        search: search
                    },
                    success: function(data) {
                        $('#file-table').html(data);
                    }
                });
            }

            $(document).on('click', '.pagination a', function(e) {
                e.preventDefault();
                var page = $(this).attr('href').split('page=')[1];
                var perPage = $('#show-entries').val();
                var search = $('#search').val();
                fetchData(page, perPage, search);
            });

            $('#show-entries').change(function() {
                var perPage = $(this).val();
                var search = $('#search').val();
                fetchData(1, perPage, search);
            });

            $('#search').on('input', function() {
                var perPage = $('#show-entries').val();
                var search = $(this).val();
                fetchData(1, perPage, search);
            });
        });
    </script>
@endpush
