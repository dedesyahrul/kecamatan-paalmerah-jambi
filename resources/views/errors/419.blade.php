<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Kedaluwarsa - Kecamatan Paal Merah</title>
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet" type="text/css" />
    <style>
        .error-page {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e9f2 100%);
        }

        .error-content {
            text-align: center;
            padding: 2rem;
            background: white;
            border-radius: 1rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 90%;
        }

        .error-icon {
            font-size: 5rem;
            color: #dc3545;
            margin-bottom: 1.5rem;
        }

        .error-title {
            font-size: 2rem;
            color: #2d3748;
            margin-bottom: 1rem;
        }

        .error-message {
            color: #718096;
            margin-bottom: 2rem;
            font-size: 1.1rem;
        }

        .btn-back {
            background: #2d3748;
            color: white;
            padding: 0.75rem 2rem;
            border-radius: 0.5rem;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            background: #1a202c;
            transform: translateY(-2px);
        }

        .reload-timer {
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #718096;
        }
    </style>
</head>

<body>
    <div class="error-page">
        <div class="error-content">
            <div class="error-icon">⚠️</div>
            <h1 class="error-title">Halaman Kedaluwarsa</h1>
            <p class="error-message">
                Maaf, sesi Anda telah berakhir karena tidak ada aktivitas dalam waktu yang lama.
                Ini dilakukan untuk menjaga keamanan data Anda.
            </p>
            <div>
                <a href="{{ url('/') }}" class="btn-back">Kembali ke Beranda</a>
            </div>
            <div class="reload-timer">
                Halaman akan dialihkan dalam <span id="countdown">10</span> detik...
            </div>
        </div>
    </div>

    <script>
        // Countdown timer
        let timeLeft = 10;
        const countdownElement = document.getElementById('countdown');

        const timer = setInterval(() => {
            timeLeft--;
            countdownElement.textContent = timeLeft;

            if (timeLeft <= 0) {
                clearInterval(timer);
                window.location.href = '{{ url('/') }}';
            }
        }, 1000);

        // Handle back button
        window.onpopstate = function(event) {
            window.location.href = '{{ url('/') }}';
        };
    </script>
</body>

</html>
