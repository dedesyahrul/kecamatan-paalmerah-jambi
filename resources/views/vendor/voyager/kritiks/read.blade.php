@extends('voyager::master')

@section('content')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-activity"></i> Detail Kritik dan Saran
            <a href="{{ url()->previous() }}" class="btn btn-warning btn-sm">
                <i class="glyphicon glyphicon-chevron-left"></i> <span class="hidden-xs hidden-sm">Kembali</span>
            </a>
        </h1>
        {{-- <div class="page-header">
            <h3>Detail Kritik</h3>
        </div> --}}
        <div class="panel-body">
            <div class="well">
                <table class="table">
                    <tr>
                        <th>Tanggal</th>
                        <td>{{ \Carbon\Carbon::parse($kritik->tanggal)->format('d M Y') }}</td>
                    </tr>
                    <tr>
                        <th>Nama</th>
                        <td>{{ $kritik->nama }}</td>
                    </tr>
                    <tr>
                        <th>Alamat</th>
                        <td>{{ $kritik->alamat }}</td>
                    </tr>
                    <tr>
                        <th>Kritik dan Saran</th>
                        <td>{{ $kritik->kritik_saran }}</td>
                    </tr>
                    <tr>
                        <th>Pendapat Pelayanan</th>
                        <td>{{ str_replace('_', ' ', $kritik->pendapat_pelayanan) }}</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
@endsection
