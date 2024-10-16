<?php

namespace App\Http\Controllers;

use App\Models\Bukutamu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use TCPDF;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Session;

class BukutamuController extends Controller
{
    public function index()
    {
        // $bukutamus = Bukutamu::all();
        $bukutamus = Bukutamu::latest()->paginate(10);
        return view('vendor.voyager.bukutamus.browse', compact('bukutamus'));
    }

    public function viewDetail($id)
    {
        $bukutamus = Bukutamu::findOrFail($id);
        return view('vendor.voyager.bukutamus.read', compact('bukutamus'));
    }

  

    public function exportPDF(Request $request)
    {
        // Ambil bulan dan tahun dari request
        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');

        // Validasi bulan dan tahun
        if (!is_numeric($bulan) || !is_numeric($tahun) || $bulan < 1 || $bulan > 12 || $tahun < 1900) {
            return redirect()->back()->with('error', 'Pilih bulan dan tahun yang valid.');
        }

        // Mendapatkan data untuk diekspor berdasarkan bulan dan tahun
        $bukutamus = Bukutamu::whereMonth('created_at', $bulan)
            ->whereYear('created_at', $tahun)
            ->get();

        // Jika tidak ada data, berikan pesan
        if ($bukutamus->isEmpty()) {
            return redirect()->back()->with('info', 'Data untuk bulan ' . $bulan . ' tahun ' . $tahun . ' belum tersedia.');
        }

        // Membuat objek PDF
        $pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

        // Set title pada PDF
        $pdf->SetTitle('Rekap Buku Tamu');

        // Menghilangkan header pada halaman pertama
        $pdf->setPrintHeader(false);

        // Tambahkan halaman pertama
        $pdf->AddPage();

        // Tambahkan kop surat (gantilah dengan informasi kop surat yang sesuai)
        $kopSurat = '
            <table style="width: 100%; text-align: left;">
                <tr>
                    <td style="width: 12%;">
                        <img src="' . asset('assets/images/tanjabtim.png') . '" alt="Logo" style="max-width: 20px; vertical-align: middle;">
                    </td>
                    <td style="width: 80%;">
                        <table style="width: 100%;">
                            <tr>
                                <td style="padding: 5px; margin-bottom: 2px; font-size: 14px; text-align: center;">PEMERINTAH KABUPATEN TANJUNG JABUNG TIMUR</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="padding: 10px; font-size: 18px; font-weight: bold; text-align: center;">DINAS PENDIDIKAN</td>
                            </tr>
                            <tr>
                                <td style="padding: 2px; margin-top: 0; font-size: 12px; text-align: center;">Jl. Pangeran Diponegoro Komplek Perkantoran Pemda</td>
                            </tr>
                            <tr>
                                <td style="padding: 0; font-size: 12px; text-align: center;">Muara Sabak Barat Kode Pos. 36561</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table> <hr>
        ';

        // Tambahkan kop surat ke halaman pertama
        $pdf->writeHTML($kopSurat, true, false, true, false, '');

        // Tambahkan konten PDF, misalnya tabel data.
        $html = '
            <h3 style="text-align: center;">Rekap Buku Tamu - Bulan ' . $bulan . ' Tahun ' . $tahun . '</h3>
            <table border="1" style="width: 100%; border-collapse: collapse;">
                <tr>
                    <th style="width: 5%; padding: 8px; text-align: center;">No</th>
                    <th style="padding: 8px; text-align: center;">Foto</th>
                    <th style="padding: 8px; text-align: center;">Nama</th>
                    <th style="width: 20%; padding: 8px; text-align: center;">Alamat</th>
                    <th style="width: 20%; padding: 8px; text-align: center;">Nomor HP</th>
                    <th style="width: 20%; padding: 8px; text-align: center;">Keperluan</th>
                </tr>
        ';

        $nomorUrut = 1;

        foreach ($bukutamus as $bukutamu) {
            $html .= '
                <tr>
                    <td style="padding: 8px; text-align: center;">' . $nomorUrut . '</td>
                    <td style="padding: 8px; text-align: center;"><img src="' . asset($bukutamu->foto) . '" alt="Foto" style="width: 50px; height: 50px;"></td>
                    <td style="padding: 8px; text-align: center;">' . $bukutamu->nama . '</td>
                    <td style="padding: 8px; text-align: center;">' . $bukutamu->alamat . '</td>
                    <td style="padding: 8px; text-align: center;">' . $bukutamu->nohp . '</td>
                    <td style="padding: 8px; text-align: center;">' . $bukutamu->keperluan . '</td>
                </tr>
            ';

            $nomorUrut++;
        }

        $html .= '</table>';

        // Tambahkan informasi jumlah data bukutamu
        $html .= '<p style="margin-top: 10px;">Jumlah Data Buku Tamu: ' . count($bukutamus) . '</p>';

        $pdf->writeHTML($html, true, false, true, false, '');

        // Simpan atau tampilkan PDF.
        $pdf->Output('rekap_bukutamu_' . $bulan . '_' . $tahun . '.pdf', 'D');
    }

    public function create()
    {
        return view('bukutamu.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|string',
            'foto' => 'required|string', // Menggunakan string karena ini adalah data URI
            'alamat' => 'required|string',
            'nohp' => 'nullable|string',
            'keperluan' => 'required|string',
        ]);

        // Mendapatkan data URI dari request
        $dataURI = $request->input('foto');

        // Mengonversi data URI menjadi blob data
        $encoded_image = explode(",", $dataURI)[1];
        $decoded_image = base64_decode($encoded_image);

        // Mendapatkan nama dari kolom 'nama' dan membersihkannya dari karakter yang tidak diizinkan
        $namafile = preg_replace("/[^a-zA-Z0-9]/", "", $request->input('nama'));

        // Menentukan nama file foto dengan menggunakan nama dari kolom 'nama' dan uniqid()
        $namafoto = $namafile . "_" . uniqid() . ".png";

        // Menyimpan file ke direktori dengan menggunakan Laravel Storage
        Storage::disk('public')->put('foto-bukutamu/' . $namafoto, $decoded_image);

        // Menyimpan data bukutamu ke database
        Bukutamu::create([
            'nama' => $request->input('nama'),
            'alamat' => $request->input('alamat'),
            'nohp' => $request->input('nohp'),
            'keperluan' => $request->input('keperluan'),
            'foto' => 'storage/foto-bukutamu/' . $namafoto,
        ]);

        return redirect()->route('index')->with('success', 'Data bukutamu berhasil disimpan.');
    }

    public function search(Request $request)
    {
        $searchTerm = $request->input('search');

        $bukutamus = DB::table('bukutamus')
            ->where('nama', 'LIKE', '%' . $searchTerm . '%')
            ->orWhere('alamat', 'LIKE', '%' . $searchTerm . '%')
            ->orWhere('nohp', 'LIKE', '%' . $searchTerm . '%')
            ->orWhere('keperluan', 'LIKE', '%' . $searchTerm . '%')
            ->paginate(10);

        return view('vendor.voyager.bukutamus.browse', ['bukutamus' => $bukutamus]);
    }

}
