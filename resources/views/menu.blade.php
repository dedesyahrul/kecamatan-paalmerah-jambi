<ul class="navigation-menu nav-light">
    {{-- <li><a href="/" class="sub-menu-item">Beranda</a></li> --}}
    <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">PROFIL</a><span class="menu-arrow"></span>
        <ul class="submenu">
            <li>
                <ul>
                    <li><a href="{{ url('/sejarah') }}" class="sub-menu-item">Sejarah</a>
                    </li>
                    <li><a href="{{ url('/visimisi') }}" class="sub-menu-item">Visi & Misi</a>
                    </li>
                    <li><a href="{{ url('/monografi') }}" class="sub-menu-item">Monografi</a>
                    </li>
                    <li><a href="{{ url('/struktur') }}" class="sub-menu-item">Struktur</a>
                    </li>
                    <li><a href="{{ url('/prestasi') }}" class="sub-menu-item">Prestasi</a>
                    </li>
                    <li><a href="{{ url('/inovasi') }}" class="sub-menu-item">Inovasi</a>
                    </li>
                    <li><a href="{{ url('/kata-sambutan') }}" class="sub-menu-item">Kata Sambutan</a>
                    </li>
                    <li><a href="{{ url('/pegawaidanstaff') }}" class="sub-menu-item">Data
                            Pegawai</a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>

    <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">LAYANAN</a><span class="menu-arrow"></span>
        <ul class="submenu">
            <li class="has-submenu">
                <a href="javascript:void(0)">Dukcapil</a><span class="submenu-arrow"></span>
                <ul class="submenu">
                    @foreach ($layananDukcapils as $layanan)
                        <li><a href="{{ url('/layanan-dukcapil/' . $layanan->slug) }}"
                                class="sub-menu-item">{{ $layanan->nama }}</a></li>
                    @endforeach
                </ul>
            </li>
            <li class="has-submenu">
                <a href="javascript:void(0)">Paten</a><span class="submenu-arrow"></span>
                <ul class="submenu">
                    @foreach ($layananPatens as $layanan)
                        <li><a href="{{ url('/layanan-paten/' . $layanan->slug) }}"
                                class="sub-menu-item">{{ $layanan->nama }}</a></li>
                    @endforeach
                </ul>
            </li>
            <li>
                <a href="{{ url('/layanan-standar-pelayanan') }}" class="sub-menu-item">Standar Pelayanan</a>
            </li>
            <li><a href="{{ url('/maklumat') }}" class="sub-menu-item">Maklumat</a>
            </li>
            <li>
                <a href="{{ url('/moto') }}" class="sub-menu-item">Moto</a>
            </li>
            <li>
                <a href="{{ url('/layanan-alur-pelayanan') }}" class="sub-menu-item">Alur Pelayanan</a>
            </li>
            <li>
                <a href="{{ url('/layanan-alur-pengaduan') }}" class="sub-menu-item">Alur Pengaduan</a>
            </li>
        </ul>
    </li>

    <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">Kelurahan</a><span class="menu-arrow"></span>
        <ul class="submenu">
            @foreach ($kelurahans as $kelurahan)
                <li class="has-submenu">
                    <a href="javascript:void(0)">{{ $kelurahan->nama }}</a>
                    <span class="submenu-arrow"></span>
                    <ul class="submenu scrollable-submenu">
                        {{-- <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/profil') }}"
                                class="sub-menu-item">Profil</a></li> --}}
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-rt') }}"
                                class="sub-menu-item">Data RT</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-penduduk') }}"
                                class="sub-menu-item">Data Penduduk</a>
                        </li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/struktur') }}"
                                class="sub-menu-item">Struktur</a></li>
                        {{-- <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-guru-pami') }}"
                                class="sub-menu-item">Data Guru Pami</a>
                        </li> --}}

                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-pbb') }}"
                                class="sub-menu-item">PBB</a></li>


                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/pkh') }}"
                                class="sub-menu-item">PKH</a></li>
                        {{-- <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/inovasi') }}"
                                class="sub-menu-item">Inovasi</a></li> --}}

                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-pengangguran') }}"
                                class="sub-menu-item">Data Warga Pengangguran</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-kampung-bantar') }}"
                                class="sub-menu-item">Data Kampung
                                Bantar</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-miskin-ekstrim') }}"
                                class="sub-menu-item">Data Miskin
                                Ekstrim</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-fasilitas-pendidikan') }}"
                                class="sub-menu-item">Data
                                Fasilitas Pendidikan</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-sarana') }}"
                                class="sub-menu-item">Data
                                Sarana
                                Kelurahan</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-titik-banjir') }}"
                                class="sub-menu-item">Data Titik
                                Banjir</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-penerima-gas-3kg') }}"
                                class="sub-menu-item">Data
                                Penerima
                                Gas 3kg</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-tps') }}"
                                class="sub-menu-item">Data TPS</a></li>
                        {{-- <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-objek-wisata') }}"
                                class="sub-menu-item">Data Objek
                                Wisata</a></li> --}}

                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-perumahan') }}"
                                class="sub-menu-item">Data Perumahan</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/poskamling') }}"
                                class="sub-menu-item">Poskamling</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-lansia') }}"
                                class="sub-menu-item">Data Lansia</a></li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-stunting') }}"
                                class="sub-menu-item">Data Stunting</a>
                        </li>
                        <li><a href="{{ url('/kelurahan/' . $kelurahan->slug . '/data-ukm') }}"
                                class="sub-menu-item">Data UKM</a>
                        </li>



                    </ul>
                </li>
            @endforeach
        </ul>
    </li>

    <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">PKK</a><span class="menu-arrow"></span>
        <ul class="submenu">
            <li>
                <ul>
                    <li><a href="{{ route('profil-pkk') }}" class="sub-menu-item">Profil</a>
                    </li>
                    <li><a href="{{ url('/sejarah-pkk') }}" class="sub-menu-item">Sejarah</a>
                    </li>
                    <li><a href="{{ url('/visi-misi-pkk') }}" class="sub-menu-item">Visi & Misi</a>
                    </li>

                </ul>
            </li>
            <li class="has-submenu">
                <a href="javascript:void(0)">Tupoksi PKK</a><span class="submenu-arrow"></span>
                <ul class="submenu">
                    @foreach ($tupoksiPkks as $tupoksi)
                        <li><a href="{{ url('/tupoksi-pkk/' . $tupoksi->slug) }}"
                                class="sub-menu-item">{{ $tupoksi->nama }}</a></li>
                    @endforeach
                </ul>
            </li>

            <li>
                <ul>
                    <li><a href="{{ url('/paud-pkk') }}" class="sub-menu-item">Paud PKK</a>
                    </li>
                    <li><a href="{{ url('/kegiatan-pkk') }}" class="sub-menu-item">Kegiatan PKK</a>
                    </li>
                    <li><a href="{{ url('/prestasi-pkk') }}" class="sub-menu-item">Prestasi PKK</a>
                    </li>
                    <li><a href="{{ url('/data-pokjanal') }}" class="sub-menu-item">Data Pokjanal</a>
                    </li>
                    <li><a href="{{ url('/struktur-pokjanal') }}" class="sub-menu-item">Struktur Pokjanal</a>
                    </li>

                </ul>
            </li>
        </ul>
    </li>

    {{-- <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">Berita</a><span class="menu-arrow"></span>
        <ul class="submenu">
            <li>
                <ul>
                    <ul>
                        @foreach ($kategoriBeritas as $kategori)
                            <li><a href="{{ url('/berita/' . $kategori->id) }}"
                                    class="sub-menu-item">{{ $kategori->nama_kategori }}</a></li>
                        @endforeach

                    </ul>
                </ul>
            </li>
        </ul>
    </li> --}}

    <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">Galeri</a><span class="menu-arrow"></span>
        <ul class="submenu">
            <li>
                <ul>
                    <li><a href="{{ url('/galeri/foto') }}" class="sub-menu-item">Galeri Foto</a>
                    </li>
                    <li><a href="{{ url('frontend/galeri/video') }}" class="sub-menu-item">Galeri
                            Video</a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">Informasi</a><span class="menu-arrow"></span>
        <ul class="submenu">
            <li>
                <ul>
                    <li><a href="{{ url('/informasi/pengumuman') }}" class="sub-menu-item">Pengumuman
                        </a>
                    </li>
                    <li><a href="{{ url('/informasi/download-file') }}" class="sub-menu-item">Download File
                        </a>
                    </li>
                    <li><a href="{{ url('/informasi/weblink') }}" class="sub-menu-item">Link
                            Terkait</a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
</ul><!--end navigation menu-->

<style>
    .scrollable-submenu {
        max-height: 300px;
        /* Sesuaikan tinggi maksimum sesuai kebutuhan */
        overflow-y: auto;
        scrollbar-width: thin;
        /* Untuk Firefox */
        scrollbar-color: #888 #f1f1f1;
        /* Untuk Firefox */
    }

    /* Untuk WebKit browsers (Chrome, Safari) */
    .scrollable-submenu::-webkit-scrollbar {
        width: 6px;
    }

    .scrollable-submenu::-webkit-scrollbar-track {
        background: #f1f1f1;
    }

    .scrollable-submenu::-webkit-scrollbar-thumb {
        background: #888;
    }

    .scrollable-submenu::-webkit-scrollbar-thumb:hover {
        background: #555;
    }

    /* Pastikan submenu tetap terbuka saat di-scroll */
    .has-submenu:hover .scrollable-submenu {
        display: block;
    }
</style>
