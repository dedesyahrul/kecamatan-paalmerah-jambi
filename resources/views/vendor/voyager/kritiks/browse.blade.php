@extends('voyager::master')

@section('content')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-activity"></i> Kritik dan Saran
        </h1>
        <div class="panel panel-bordered">
            {{-- <div class="panel-body">
                <form action="{{ route('kritik.search') }}" method="GET" id="searchForm"
                    style="margin-bottom: 10px;>
                    <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search" name="search" id="searchInput"
                        value="{{ request('search') }}">
            </div>
            </form> --}}
            <div class="panel-body">
                <form action="{{ route('kritik.search') }}" method="GET" class="d-flex" id="searchForm">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" id="txtSearch" name="search" />
                    </div>
                </form>
            </div>

            @if ($kritiks->isEmpty())
                <div class="alert alert-info">
                    Belum ada data kritik.
                </div>
            @else
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="dt-not-orderable sorting_disabled" rowspan="1" colspan="1">
                                    <input type="checkbox" class="select_all" id="select_all_checkbox">
                                </th>
                                <th class="sorting">
                                    Tanggal
                                </th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Kritik dan Saran</th>
                                <th>Pendapat</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($kritiks as $kritik)
                                <tr class="panel panel-bordered panel-hover">
                                    <td>
                                        <input type="checkbox" name="row_id" id="checkbox_{{ $kritik->id }}"
                                            value="{{ $kritik->id }}">
                                    </td>
                                    <td>{{ $kritik->tanggal }}</td>
                                    <td>{{ $kritik->nama }}</td>
                                    <td>{{ $kritik->alamat }}</td>
                                    <td>{{ $kritik->kritik_saran }}</td>
                                    {{-- <td>{{ $kritik->pendapat_pelayanan }}</td> --}}
                                    <td>{{ str_replace('_', ' ', $kritik->pendapat_pelayanan) }}</td>

                                    <td>
                                        <!-- Tombol View -->
                                        <a href="{{ route('kritik.viewDetail', ['id' => $kritik->id]) }}"
                                            class="btn btn-warning btn-sm">
                                            <i class="voyager-eye" aria-hidden="true"></i> <span
                                                class="hidden-xs hidden-sm">View</span>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endif

            <div class="text-center">
                <div style="display: flex; align-items: center; justify-content: space-between;">
                    @if (!$kritiks->isEmpty())
                        <ul class="pagination">
                            {{-- Tautan halaman sebelumnya --}}
                            @if ($kritiks->onFirstPage())
                                <li class="disabled"><span>&laquo;</span></li>
                            @else
                                <li><a href="{{ $kritiks->previousPageUrl() }}" rel="prev">&laquo;</a></li>
                            @endif

                            {{-- Tautan halaman --}}
                            @for ($i = 1; $i <= $kritiks->lastPage(); $i++)
                                <li class="{{ $kritiks->currentPage() == $i ? 'active' : '' }}">
                                    <a href="{{ $kritiks->url($i) }}">{{ $i }}</a>
                                </li>
                            @endfor

                            {{-- Tautan halaman selanjutnya --}}
                            @if ($kritiks->hasMorePages())
                                <li><a href="{{ $kritiks->nextPageUrl() }}" rel="next">&raquo;</a></li>
                            @else
                                <li class="disabled"><span>&raquo;</span></li>
                            @endif
                        </ul>

                        <p style="margin-left: 10px;">Halaman {{ $kritiks->currentPage() }} dari
                            {{ $kritiks->lastPage() }}</p>
                    @endif
                </div>
            </div>
            {{-- <div class="alert alert-info">
                <strong>Jumlah Kritik Berdasarkan Kategori:</strong>
                <ul>
                    <li>Buruk: {{ $burukCount }}</li>
                    <li>Cukup: {{ $cukupCount }}</li>
                    <li>Baik: {{ $baikCount }}</li>
                    <li>Sangat Baik: {{ $sangatBaikCount }}</li>
                </ul>

                {{ dd($burukCount, $cukupCount, $baikCount, $sangatBaikCount) }}
            </div> --}}

            <div class="alert alert-info">
                <strong>Jumlah Kritik Berdasarkan Kategori:</strong>
                <ul>
                    <li>Buruk: {{ $burukCount }}</li>
                    <li>Cukup: {{ $cukupCount }}</li>
                    <li>Baik: {{ $baikCount }}</li>
                    <li>Sangat Baik: {{ $sangatBaikCount }}</li>
                </ul>
            </div>
        </div>
        <div class="text-center">
            <!-- Tombol untuk ekspor PDF -->
            <a href="{{ route('kritik.exportPDF') }}" class="btn btn-success">Export PDF</a>

        </div>
    </div>
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
    {{-- <script>
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
    </script> --}}
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
