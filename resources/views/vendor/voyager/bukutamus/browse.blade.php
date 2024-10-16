@extends('voyager::master')

@section('content')
    <div class="container-fluid">
        @if (session('info'))
            <div id="infoAlert" class="alert alert-info">
                {{ session('info') }}
            </div>
        @endif
        <h1 class="page-title">
            <i class="voyager-ticket"></i> Daftar Tamu
        </h1>

        <div class="panel panel-bordered">
            <div class="panel-body">
                <form action="{{ route('bukutamu.search') }}" method="GET" class="d-flex" id="searchForm">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" id="txtSearch" name="search" />
                    </div>
                </form>
            </div>

            @if ($bukutamus->isEmpty())
                <div class="alert alert-info">
                    Belum ada Daftar Tamu.
                </div>
            @else
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="dt-not-orderable sorting_disabled" rowspan="1" colspan="1">
                                    <input type="checkbox" class="select_all" id="select_all_checkbox">
                                </th>
                                <th>No</th>
                                <th>Foto</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>No HP</th>
                                <th>Keperluan</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($bukutamus as $bukutamu)
                                <tr>
                                    <td>
                                        <input type="checkbox" name="row_id" id="checkbox_{{ $bukutamu->id }}"
                                            value="{{ $bukutamu->id }}">
                                    </td>
                                    <td>{{ $loop->iteration }}</td>
                                    <td><img src="{{ asset($bukutamu->foto) }}" alt="Foto"
                                            style="width: 50px; height: 50px;"></td>
                                    <td>{{ $bukutamu->nama }}</td>
                                    <td>{{ $bukutamu->alamat }}</td>
                                    <td>{{ $bukutamu->nohp }}</td>
                                    <td>{{ $bukutamu->keperluan }}</td>
                                    <td>
                                        <!-- Tombol View -->
                                        <a href="{{ route('bukutamu.viewDetail', ['id' => $bukutamu->id]) }}"
                                            class="btn btn-warning btn-sm">
                                            <i class="voyager-eye" aria-hidden="true"></i> <span
                                                class="hidden-xs hidden-sm">View</span>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <div class="text-center">
                        <div style="display: flex; align-items: center; justify-content: space-between;">
                            @if (!$bukutamus->isEmpty())
                                <ul class="pagination">
                                    {{-- Tautan halaman sebelumnya --}}
                                    @if ($bukutamus->onFirstPage())
                                        <li class="disabled"><span>&laquo;</span></li>
                                    @else
                                        <li><a href="{{ $bukutamus->previousPageUrl() }}" rel="prev">&laquo;</a></li>
                                    @endif

                                    {{-- Tautan halaman --}}
                                    @for ($i = 1; $i <= $bukutamus->lastPage(); $i++)
                                        <li class="{{ $bukutamus->currentPage() == $i ? 'active' : '' }}">
                                            <a href="{{ $bukutamus->url($i) }}">{{ $i }}</a>
                                        </li>
                                    @endfor

                                    {{-- Tautan halaman selanjutnya --}}
                                    @if ($bukutamus->hasMorePages())
                                        <li><a href="{{ $bukutamus->nextPageUrl() }}" rel="next">&raquo;</a></li>
                                    @else
                                        <li class="disabled"><span>&raquo;</span></li>
                                    @endif
                                </ul>

                                <p style="margin-left: 10px;">Halaman {{ $bukutamus->currentPage() }} dari
                                    {{ $bukutamus->lastPage() }}</p>
                            @endif
                        </div>
                    </div>

                </div>
            @endif
        </div>

        <form method="get" action="{{ route('export.pdf.bukutamu') }}" class="form-inline">
            <div class="form-group">
                <label for="bulan">Pilih Bulan:</label>
                <select name="bulan" id="bulan" class="form-control">
                    <option value="1">Januari</option>
                    <option value="2">Februari</option>
                    <option value="3">Maret</option>
                    <option value="4">April</option>
                    <option value="5">Mei</option>
                    <option value="6">Juni</option>
                    <option value="7">Juli</option>
                    <option value="8">Agustus</option>
                    <option value="9">September</option>
                    <option value="10">Oktober</option>
                    <option value="11">November</option>
                    <option value="12">Desember</option>
                </select>
            </div>

            <div class="form-group">
                <label for="tahun">Pilih Tahun:</label>
                <select name="tahun" id="tahun" class="form-control">
                    <!-- Opsi tahun akan diisi secara dinamis menggunakan JavaScript -->
                </select>
            </div>
            <button type="submit" class="btn btn-success">Export to PDF</button>
        </form>
    </div>
@endsection

@section('javascript')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const selectAllCheckbox = document.getElementById('select_all_checkbox');
            const checkboxes = document.querySelectorAll('input[name="row_id"]');

            selectAllCheckbox.addEventListener('click', function() {
                checkboxes.forEach(checkbox => {
                    checkbox.checked = this.checked;
                });
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const searchInput = document.getElementById('searchInput');

            searchInput.addEventListener('input', function() {
                // Tambahkan kode di sini untuk menunda pengiriman form jika diperlukan
                // Contoh: untuk menunggu beberapa detik setelah berhenti mengetik sebelum mengirim form
                setTimeout(function() {
                    document.getElementById('searchForm').submit();
                }, 500); // 500 milidetik (0.5 detik) contohnya, sesuaikan dengan kebutuhan Anda
            });
        });
    </script>
    <script>
        var currentYear = new Date().getFullYear();
        var select = document.getElementById("tahun");

        for (var i = currentYear - 3; i <= currentYear + 3; i++) {
            var option = document.createElement("option");
            option.value = i;
            option.text = i;
            select.add(option);
        }
    </script>
    <script>
        $(document).ready(function() {
            setTimeout(function() {
                $("#infoAlert").fadeOut("slow");
            }, 2000); // 3000 milidetik (3 detik)
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const searchInput = document.getElementById('txtSearch');
            const searchForm = document.getElementById('searchForm');

            searchInput.addEventListener('input', function() {
                // Tambahkan kode di sini untuk menunda pengiriman form jika diperlukan
                // Contoh: untuk menunggu beberapa detik setelah berhenti mengetik sebelum mengirim form
                setTimeout(function() {
                    searchForm.submit();
                }, 500); // 500 milidetik (0.5 detik) contohnya, sesuaikan dengan kebutuhan Anda
            });
        });
    </script>


@stop
