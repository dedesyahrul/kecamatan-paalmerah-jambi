<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesan dari Hubungi Kami</title>
</head>

<body
    style="font-family: Arial, sans-serif; line-height: 1.6; color: #333; max-width: 600px; margin: 0 auto; padding: 20px;">
    <div style="background-color: #f4f4f4; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
        <h1 style="color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px;">Pesan Baru dari Website</h1>

        <div style="background-color: #ffffff; padding: 20px; border-radius: 5px; margin-top: 20px;">
            <h2 style="color: #2980b9;">Detail Pesan</h2>

            <p style="margin-bottom: 10px;">
                <strong style="color: #2c3e50;">Nama:</strong>
                <span
                    style="background-color: #ecf0f1; padding: 3px 6px; border-radius: 3px;">{{ $details['name'] }}</span>
            </p>

            <p style="margin-bottom: 10px;">
                <strong style="color: #2c3e50;">Email:</strong>
                <span
                    style="background-color: #ecf0f1; padding: 3px 6px; border-radius: 3px;">{{ $details['email'] }}</span>
            </p>

            <p style="margin-bottom: 10px;">
                <strong style="color: #2c3e50;">Nomor HP:</strong>
                <span
                    style="background-color: #ecf0f1; padding: 3px 6px; border-radius: 3px;">{{ $details['phone'] }}</span>
            </p>

            <p style="margin-bottom: 10px;">
                <strong style="color: #2c3e50;">Subjek:</strong>
                <span
                    style="background-color: #ecf0f1; padding: 3px 6px; border-radius: 3px;">{{ $details['subjek'] }}</span>
            </p>

            <div style="margin-top: 20px; background-color: #ecf0f1; padding: 15px; border-radius: 5px;">
                <strong style="color: #2c3e50;">Pesan:</strong>
                <p style="margin-top: 10px; white-space: pre-wrap;">{{ $details['comments'] }}</p>
            </div>
        </div>

        <p style="text-align: center; margin-top: 20px; color: #7f8c8d; font-size: 0.9em;">
            Email ini dikirim secara otomatis. Mohon jangan membalas email ini.
        </p>
    </div>
</body>

</html>
