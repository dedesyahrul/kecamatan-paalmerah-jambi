@extends('voyager::master')

@section('content')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-ticket"></i> Detail Tamu
            <a href="{{ url()->previous() }}" class="btn btn-warning btn-sm">
                <i class="glyphicon glyphicon-chevron-left"></i> <span class="hidden-xs hidden-sm">Kembali</span>
            </a>
        </h1>

        <div class="panel-body">
            <div class="well">
                <table class="table">
                    <tr>
                        <th>Foto</th>
                        <td>
                            @if ($bukutamus->foto)
                                <img src="{{ asset($bukutamus->foto) }}" alt="{{ $bukutamus->nama }}" class="img-fluid">
                            @else
                                No Photo Available
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Nama</th>
                        <td>{{ $bukutamus->nama }}</td>
                    </tr>
                    <tr>
                        <th>Alamat</th>
                        <td>{{ $bukutamus->alamat }}</td>
                    </tr>
                    <tr>
                        <th>No HP</th>
                        <td>{{ $bukutamus->nohp }}</td>
                    </tr>
                    <tr>
                        <th>Keperluan</th>
                        <td>{{ $bukutamus->keperluan }}</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
@endsection
