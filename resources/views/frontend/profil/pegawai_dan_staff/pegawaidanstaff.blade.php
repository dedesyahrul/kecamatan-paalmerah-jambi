@extends('layouts.app')

@section('title', 'Data Pegawai | Official Website Kecamatan Paal Merah | Pemerintah Kota Jambi')

@section('hero')
    <section class="bg-half d-table w-100" style="background: url('{{ asset('assets') }}/images/tugu_keris.jpg');">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="page-next-level title-heading">
                        <h1 class="text-white title-dark"> Data Pegawai </h1>
                        <div class="page-next">
                            <nav aria-label="breadcrumb" class="d-inline-block">
                                <ul class="breadcrumb bg-white rounded shadow mb-0">
                                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Pegawai</li>
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
    <section class="section py-5 bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-12 col-md-10 col-lg-8 text-center">
                    <h2 class="display-4 font-weight-bold mb-3">Daftar Pegawai Kecamatan Paal Merah</h2>
                    <p class="lead text-muted">Pegawai Negeri Sipil, Non PNS, dan Staff</p>
                </div>
            </div>

            <div class="row">
                @foreach ($pegawais as $pegawai)
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card border-0 shadow-sm team-card h-100">
                            <div class="position-relative overflow-hidden">
                                <img src="{{ $pegawai->foto_pegawai ? asset('storage/' . $pegawai->foto_pegawai) : asset('assets/images/pegawai.png') }}"
                                    class="card-img-top team-img" alt="{{ $pegawai->nama }}">
                                <div class="team-overlay d-flex flex-column align-items-center justify-content-center p-3">
                                    <h5 class="text-white mb-2">{{ $pegawai->nama }}</h5>
                                    <p class="text-white-50 small mb-3">
                                        {{ $pegawai->jabatan->nama_jabatan ?? 'Tidak ada jabatan' }}</p>
                                    <button type="button" class="btn btn-primary btn-sm rounded-pill px-3 shadow-sm"
                                        data-toggle="modal" data-target="#profileModal{{ $pegawai->id }}">
                                        <i class="fas fa-user-circle mr-2"></i>Lihat Profil
                                    </button>
                                </div>
                            </div>
                            <div class="card-body text-center p-3">
                                <h6 class="card-title mb-1">{{ $pegawai->nama }}</h6>
                                <p class="card-text text-muted small">
                                    {{ $pegawai->jabatan->nama_jabatan ?? 'Tidak ada jabatan' }}
                                </p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <div class="row mt-5">
                <div class="col-12 d-flex justify-content-center">
                    {{ $pegawais->links('pagination::bootstrap-4') }}
                </div>
            </div>
        </div>
    </section>

    @foreach ($pegawais as $pegawai)
        <div class="modal fade" id="profileModal{{ $pegawai->id }}" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow-lg rounded-lg overflow-hidden">
                    <div class="modal-body p-0">
                        <button type="button" class="close-btn" data-dismiss="modal" aria-label="Close">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path d="M18 6L6 18" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" />
                                <path d="M6 6L18 18" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" />
                            </svg>
                        </button>
                        <div class="row no-gutters">
                            <div
                                class="col-lg-4 bg-gradient-primary text-white d-flex flex-column justify-content-center align-items-center py-5 text-center">
                                <img src="{{ $pegawai->foto_pegawai ? asset('storage/' . $pegawai->foto_pegawai) : asset('assets/images/pegawai.png') }}"
                                    class="img-fluid rounded-circle mb-4 shadow-sm"
                                    style="width: 180px; height: 180px; object-fit: cover;" alt="{{ $pegawai->nama }}">
                                <h3 class="font-weight-bold mb-2">{{ $pegawai->nama }}</h3>
                                <p class="mb-0 px-3">{{ $pegawai->jabatan->nama_jabatan ?? 'Tidak ada jabatan' }}</p>
                            </div>
                            <div class="col-lg-8 p-5">
                                <h4 class="font-weight-bold mb-4 text-primary">Informasi Pegawai</h4>
                                <div class="row mb-4">
                                    <div class="col-md-6 mb-3">
                                        <p class="mb-1 text-muted small text-uppercase">Pangkat</p>
                                        <p class="font-weight-medium">{{ $pegawai->pangkat ?? 'Tidak tersedia' }}</p>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <p class="mb-1 text-muted small text-uppercase">Tempat Lahir</p>
                                        <p class="font-weight-medium">{{ $pegawai->tempat ?? 'Tidak tersedia' }}</p>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <p class="mb-1 text-muted small text-uppercase">Tanggal Lahir</p>
                                        <p class="font-weight-medium">{{ $pegawai->tanggal_lahir ?? 'Tidak tersedia' }}</p>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <p class="mb-1 text-muted small text-uppercase">Jenis Kelamin</p>
                                        <p class="font-weight-medium">{{ $pegawai->jk ?? 'Tidak tersedia' }}</p>
                                    </div>
                                </div>
                                <h5 class="font-weight-bold mb-3 text-primary">Pendidikan</h5>
                                <p class="text-muted">{{ $pegawai->pendidikan ?? 'Tidak ada data pendidikan' }}</p>
                                <h5 class="font-weight-bold mb-3 text-primary">Tahun Lulus</h5>
                                <p class="text-muted">{{ $pegawai->tahunlulus ?? 'Tidak tersedia' }}</p>
                                <h5 class="font-weight-bold mb-3 text-primary">Keterangan</h5>
                                <p class="text-muted">{{ $pegawai->keterangan ?? 'Tidak ada keterangan' }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <style>
        .team-card {
            transition: all 0.3s ease;
            border-radius: 20px;
            overflow: hidden;
        }

        .team-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .team-img {
            height: 300px;
            object-fit: cover;
            transition: all 0.5s ease;
        }

        .team-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to top, rgba(0, 0, 0, 0.8) 0%, rgba(0, 0, 0, 0.2) 100%);
            opacity: 0;
            transition: all 0.5s ease;
        }

        .team-card:hover .team-overlay {
            opacity: 1;
        }

        .team-card:hover .team-img {
            transform: scale(1.1);
        }

        .card-title {
            font-size: 1.1rem;
            font-weight: 600;
        }

        .btn-light {
            background-color: rgba(255, 255, 255, 0.9);
            border: none;
            transition: all 0.3s ease;
        }

        .btn-light:hover {
            background-color: #fff;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .pagination {
            margin-bottom: 0;
        }

        .page-item.active .page-link {
            background-color: #007bff;
            border-color: #007bff;
        }

        .page-link {
            color: #007bff;
            border-radius: 50%;
            margin: 0 5px;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .page-link:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>

    <style>
        .modal-content {
            border: none;
            border-radius: 1rem;
        }

        .bg-gradient-primary {
            background: linear-gradient(45deg, #4047d0, #6f74dd);
        }

        .close {
            font-size: 2rem;
            font-weight: 700;
            line-height: 1;
            color: #fff;
            text-shadow: none;
            opacity: .5;
            transition: opacity 0.15s linear;
        }

        .close:hover {
            color: #fff;
            opacity: 1;
        }

        .text-primary {
            color: #4e54c8 !important;
        }

        .font-weight-medium {
            font-weight: 500;
        }

        .text-uppercase {
            letter-spacing: 0.5px;
        }
    </style>

    <style>
        .close-btn {
            position: absolute;
            right: 1rem;
            top: 1rem;
            z-index: 1050;
            background: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 50%;
            width: 36px;
            height: 36px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .close-btn:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: rotate(90deg);
        }

        .close-btn svg {
            width: 24px;
            height: 24px;
        }

        .close-btn path {
            stroke: #e81919;
        }

        @media (max-width: 767.98px) {
            .close-btn {
                right: 0.5rem;
                top: 0.5rem;
                width: 32px;
                height: 32px;
            }

            .close-btn svg {
                width: 20px;
                height: 20px;
            }
        }
    </style>

@endsection
