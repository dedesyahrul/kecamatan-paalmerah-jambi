<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Statistik Pengunjung</title>
    <style>
        .stat-box {
            border: 1px solid #ddd;
            padding: 20px;
            margin: 10px 0;
            text-align: left;
        }
    </style>
</head>

<body>
    <h2>Statistik Pengunjung</h2>
    <div class="stat-box">
        <p>👤 Hari ini: {{ $today }}</p>
        <p>👤 Kemarin: {{ $yesterday }}</p>
        <p>📅 Bulan ini: {{ $month }}</p>
        <p>📊 Total Kunjungan: {{ $total }}</p>
    </div>
</body>

</html>
