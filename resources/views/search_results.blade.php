@include('header')

<section class="bg-half bg-light d-table w-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 text-center">
                <div class="page-next-level">
                    <h4 class="title"> Hasil Pencarian </h4>
                    <div class="page-next">
                        <nav aria-label="breadcrumb" class="d-inline-block">
                            <ul class="breadcrumb bg-white rounded shadow mb-0">
                                <li class="breadcrumb-item"><a href="/">Beranda</a></li>
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
            <div class="col-lg-8 col-md-6">
                <h1>Hasil Pencarian untuk: {{ $query }}</h1>
                @if ($beritas->isEmpty() && $agendas->isEmpty() && $pengumumans->isEmpty())
                    <div class="text-center mt-4">
                        <img src="{{ asset('assets/images/undraw_not_found_re_bh2e.svg') }}"
                            alt="Tidak ada hasil ditemukan" class="img-fluid" style="max-width: 400px;">
                        <p>Tidak ada hasil ditemukan.</p>
                    </div>
                @else
                    @if (!$beritas->isEmpty())
                        <h2>Berita</h2>
                        <hr>
                        <div class="row">
                            @foreach ($beritas as $berita)
                                <div class="col-lg-6 col-12 mb-4 pb-2">
                                    <div class="card blog rounded border-0 shadow overflow-hidden">
                                        <div class="row align-items-center g-0">
                                            <div class="col-md-6 order-2 order-md-1">
                                                <div class="card-body content">
                                                    <h5>
                                                        <a href="{{ route('berita.show', $berita->id) }}"
                                                            class="card-title title text-dark">{{ Str::limit($berita->judul, 30, '...') }}</a>
                                                    </h5>
                                                    <p class="text-muted mb-0">
                                                        {{ Str::limit(strip_tags($berita->isi_berita), 20) }}</p>
                                                    <div class="post-meta d-flex justify-content-between mt-3">
                                                        <a href="{{ route('berita.show', $berita->id) }}"
                                                            class="text-muted readmore">Selengkapnya <i
                                                                class="uil uil-angle-right-b align-middle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 order-1 order-md-2">
                                                <div class="img-crop">
                                                    <img src="{{ asset('storage/' . $berita->foto) }}" class="img-fluid"
                                                        alt="">
                                                </div>
                                                <div class="overlay bg-dark"></div>
                                                <div class="author">
                                                    <small class="text-light user d-block"><i class="uil uil-user"></i>
                                                        {{ $berita->headline }}</small>
                                                    <small class="text-light date"><i
                                                            class="uil uil-calendar-alt"></i>{{ \Carbon\Carbon::parse($berita->created_at)->translatedFormat('l, d F Y') }}</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @endif

                    @if (!$agendas->isEmpty())
                        <h2>Agenda</h2>
                        <hr>
                        <ul class="list-group">
                            @foreach ($agendas as $agenda)
                                <li class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-md-2">
                                            <div class="card text-center bg-light shadow-sm">
                                                <div class="bg-info text-white p-2 rounded">
                                                    <h5 class="card-title mb-0">
                                                        {{ \Carbon\Carbon::parse($agenda->tanggal)->format('d') }}</h5>
                                                    <small>{{ \Carbon\Carbon::parse($agenda->tanggal)->format('M Y') }}</small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <h5 class="card-title">{{ $agenda->agenda }}</h5>
                                            <small class="text-muted">{{ $agenda->waktu }} -
                                                {{ $agenda->tempat }}</small>
                                            <p class="mb-1">{{ $agenda->perihal }}</p>
                                            <a href="{{ route('agenda.show', Crypt::encrypt($agenda->id)) }}"
                                                class="btn btn-primary">Detail</a>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    @endif

                    @if (!$pengumumans->isEmpty())
                        <h2>Pengumuman</h2>
                        <hr>
                        <ul class="list-group">
                            @foreach ($pengumumans as $pengu)
                                <li class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-md-9">
                                            <h5 class="card-title">{{ $pengu->judul }}</h5>
                                            <small>{{ \Carbon\Carbon::parse($pengu->created_at)->format('d M Y H:i') }}</small>
                                            <p class="card-text">
                                                {{ Str::limit(strip_tags($pengu->isi_pengumuman), 100) }}</p>
                                        </div>
                                        <div class="col-md-3 text-md-end">
                                            <a href="{{ route('pengumuman.show', Crypt::encrypt($pengu->id)) }}"
                                                class="btn btn-primary">Detail</a>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                @endif
            </div>

            @include('frontend.partials.sidebar')
        </div>
    </div>
</section>
@include('footer')
