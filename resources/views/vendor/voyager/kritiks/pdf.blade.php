<!-- resources/views/vendor/voyager/kritiks/pdf.blade.php -->

<h1>Rekap Kritik</h1>

<p>Jumlah Kritik:</p>
<ul>
    <li>Buruk: {{ $burukCount }}</li>
    <li>Cukup: {{ $cukupCount }}</li>
    <li>Baik: {{ $baikCount }}</li>
    <li>Sangat Baik: {{ $sangatBaikCount }}</li>
</ul>

<p>Detail Kritik:</p>
<ul>
    @foreach ($kritiks as $kritik)
        <li>
            Tanggal: {{ $kritik->tanggal }}, Nama: {{ $kritik->nama }}, Alamat: {{ $kritik->alamat }},
            Kritik dan Saran: {{ $kritik->kritik_saran }}
        </li>
    @endforeach
</ul>
