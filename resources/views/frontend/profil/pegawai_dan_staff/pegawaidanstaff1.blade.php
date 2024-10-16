@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Pegawai dan Staff </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                                <li class="breadcrumb-item"><a href="{{ url('/pegawaidansataff') }}">Pegawai dan
                                        Staff</a></li>
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
            <div class="col-12 text-center">
                <div class="section-title mb-4 pb-2">
                    <h4 class="title">Semua Pejabat/Staff Diskominfo Kab. Tanjung Jabung Timur</h4>
                </div>
            </div><!--end col-->
        </div><!--end row-->

        <div class="row">
            @foreach ($pegawais as $pegawai)
                <div class="col-lg-3 col-md-6 mt-4 pt-2">
                    <div class="card team text-center border-0">
                        <div class="position-relative">
                            <img src="{{ $pegawai->foto_pegawai ? asset('storage/' . $pegawai->foto_pegawai) : asset('assets/images/pegawai.png') }}"
                                class="img-fluid avatar avatar-ex-large rounded-circle shadow" alt="">

                        </div>
                        <div class="card-body py-3 px-0 content">
                            <h6 class="mb-0"><a href="{{ route('detail-pegawaidanstaff', ['id' => $pegawai->id]) }}"
                                    class="name text-dark">{{ $pegawai->nama }}</a></h6>
                            <small
                                class="designation text-muted">{{ $pegawai->jabatan->nama_jabatan ?? 'Tidak ada jabatan' }}</small>
                        </div>
                    </div>
                </div><!--end col-->
            @endforeach
        </div><!--end row-->
        <div class="col-12">
            <ul class="pagination justify-content-center mb-0 mt-4">
                {{ $pegawais->links('pagination::bootstrap-4') }}
            </ul>
        </div>

        {{-- <div class="row">
    @foreach ($pegawais as $pegawai)
        <div class="col-lg-3 col-md-6 mt-4 pt-2">
            <div class="card team text-center border-0">
                <div class="position-relative">
                    <img src="{{ $pegawai->foto_pegawai ? asset('storage/' . $pegawai->foto_pegawai) : asset('assets/images/pegawai.png') }}"
                        class="img-fluid avatar avatar-ex-large rounded-circle shadow" alt="">
                </div>
                <div class="card-body py-3 px-0 content">
                    <h6 class="mb-0"><a href="{{ route('detail-pegawaidanstaff', ['id' => $pegawai->id]) }}"
                            class="name text-dark">{{ $pegawai->nama }}</a></h6>
                    @if ($pegawai->jabatan)
                        <small class="designation text-muted">{{ $pegawai->jabatan->nama_jabatan }}</small>
                    @else
                        <small class="designation text-muted">Tidak ada jabatan</small>
                    @endif
                </div>
            </div>
        </div><!--end col-->
    @endforeach
</div><!--end row-->

<div class="col-12">
    {{ $pegawais->links('pagination::bootstrap-4') }}
</div><!--end col--> --}}




        <!-- PAGINATION END -->
    </div><!--end container-->
</section><!--end section-->


@include('footer')
