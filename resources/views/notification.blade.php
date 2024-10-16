<!-- Notifikasi view -->
<!-- resources/views/notification.blade.php -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notification</title>
</head>

<body>

    <!-- Konten Pemberitahuan -->
    <div>
        <p>Anda akan kembali ke halaman portal dalam beberapa detik.</p>
    </div>

    <script>
        // Atur pengalihan otomatis setelah beberapa detik (misalnya, 5 detik)
        setTimeout(function() {
            // Tentukan URL tujuan (URL portal Anda)
            var targetURL = "http://192.168.99.82/mapel-disdik/public/";

            // Lakukan pengalihan
            window.location.href = targetURL;
        }, 5000); // Waktu delay dalam milidetik (misalnya, 5 detik)
    </script>

</body>

</html>
