<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kritik;
use App\Slider;
use TCPDF;


class KritikController extends Controller
{
    public function index()
    {
        $kritiks = Kritik::latest()->paginate(10);
        $burukCount = Kritik::where('pendapat_pelayanan', 'buruk')->whereNotNull('pendapat_pelayanan')->count();
        $cukupCount = Kritik::where('pendapat_pelayanan', 'cukup')->whereNotNull('pendapat_pelayanan')->count();
        $baikCount = Kritik::where('pendapat_pelayanan', 'baik')->whereNotNull('pendapat_pelayanan')->count();
        $sangatBaikCount = Kritik::where('pendapat_pelayanan', 'sangat_baik')->whereNotNull('pendapat_pelayanan')->count();
        return view('vendor.voyager.kritiks.browse', compact('kritiks', 'burukCount', 'cukupCount', 'baikCount', 'sangatBaikCount'));
    }


    public function create()
    {
        $sliders = Slider::all();
        return view('kritik', compact('sliders')); // Ganti dengan nama view untuk form kritik/saran
    }

    // Menyimpan kritik/saran yang dikirim melalui form
    public function store(Request $request)
    {
        $request->validate([
            'tanggal' => 'required',
            'nama' => 'required',
            'alamat' => 'required',
            'kritik_saran' => 'required',
            'pendapat_pelayanan' => 'required',
            'hidden_field' => 'honeypot' // Menambahkan validasi Honeypot Field di sini
        ]);

        Kritik::create($request->except('hidden_field'));
        return redirect('/')->with('success', 'Kritik dan saran berhasil dikirim!');
    }
    public function viewDetail($id)
    {
        $kritik = Kritik::findOrFail($id);
        return view('vendor.voyager.kritiks.read', compact('kritik'));
    }

    // public function search(Request $request)
    // {
    //     $search = $request->input('search');

    //     // Lakukan pencarian berdasarkan kriteria tertentu, misalnya kolom 'nama' atau 'alamat'
    //     $kritiks = Kritik::where('nama', 'like', '%' . $search . '%')
    //                     ->orWhere('alamat', 'like', '%' . $search . '%')
    //                     ->get();

    //     // Kirim hasil pencarian ke tampilan browse
    //     return view('vendor.voyager.kritiks.browse', compact('kritiks'));
    // }
    public function search(Request $request)
    {
        $search = $request->input('search');

        // Menerapkan paginasi pada hasil pencarian
        $kritiks = Kritik::where('nama', 'like', '%' . $search . '%')
                        ->orWhere('alamat', 'like', '%' . $search . '%')
                        ->paginate(10); // Sesuaikan jumlah item per halaman sesuai kebutuhan Anda

        // Hitung kembali jumlah kritik berdasarkan kategori pendapat pelayanan
        $burukCount = Kritik::where('pendapat_pelayanan', 'buruk')->count();
        $cukupCount = Kritik::where('pendapat_pelayanan', 'cukup')->count();
        $baikCount = Kritik::where('pendapat_pelayanan', 'baik')->count();
        $sangatBaikCount = Kritik::where('pendapat_pelayanan', 'sangat baik')->count();

        // Kirim hasil pencarian dan variabel jumlah kritik ke tampilan browse
        return view('vendor.voyager.kritiks.browse', compact('kritiks', 'burukCount', 'cukupCount', 'baikCount', 'sangatBaikCount'));
    }



    public function countByCategory()
    {
        $burukCount = Kritik::where('pendapat_pelayanan', 'buruk')->count();
        $cukupCount = Kritik::where('pendapat_pelayanan', 'cukup')->count();
        $baikCount = Kritik::where('pendapat_pelayanan', 'baik')->count();
        $sangatBaikCount = Kritik::where('pendapat_pelayanan', 'sangat baik')->count();

        return view('vendor.voyager.kritiks.browse', compact('burukCount', 'cukupCount', 'baikCount', 'sangatBaikCount'));
    }
//     public function generatePDF()
// {
//     $kritiks = Kritik::all();
//     $burukCount = Kritik::where('pendapat_pelayanan', 'buruk')->count();
//     $cukupCount = Kritik::where('pendapat_pelayanan', 'cukup')->count();
//     $baikCount = Kritik::where('pendapat_pelayanan', 'baik')->count();
//     $sangatBaikCount = Kritik::where('pendapat_pelayanan', 'sangat baik')->count();

//     $pdf = PDF::loadView('vendor.voyager.kritiks.pdf', compact('kritiks', 'burukCount', 'cukupCount', 'baikCount', 'sangatBaikCount'));

//     return $pdf->download('rekap_kritik.pdf');
// }

public function exportPDF()
{
    $kritiks = Kritik::all();

    // Hitung jumlah kritik berdasarkan kategori pendapat pelayanan
    $burukCount = Kritik::where('pendapat_pelayanan', 'buruk')->count();
    $cukupCount = Kritik::where('pendapat_pelayanan', 'cukup')->count();
    $baikCount = Kritik::where('pendapat_pelayanan', 'baik')->count();
    $sangatBaikCount = Kritik::where('pendapat_pelayanan', 'sangat_baik')->count();

    $pdf = new TCPDF();
    $pdf->SetAutoPageBreak(true, PDF_MARGIN_BOTTOM);

    // Set title pada PDF
    $pdf->SetTitle('SIMAPEL - Sistem Informasi Pelayanan Berbasis Digital');

    // Menghilangkan header pada halaman pertama
    $pdf->setPrintHeader(false);

    // Tambahkan halaman pertama
    $pdf->AddPage();

    // Tambahkan kop surat
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
        <h1 style="text-align: center;">Rekap Kritik dan Saran</h1>
        <table border="1" style="width: 100%; border-collapse: collapse;">
            <tr>
                <th style="width: 5%; padding: 8px; text-align: center;">No</th>
                <th style="padding: 8px; text-align: center;">Nama</th>
                <th style="width: 25%; padding: 8px; text-align: center;">Alamat</th>
                <th style="width: 30%; padding: 8px; text-align: center;">Kritik dan Saran</th>
                <th style="padding: 8px; text-align: center;">Pendapat Pelayanan</th>
            </tr>
    ';

    $nomorUrut = 1;

    foreach ($kritiks as $kritik) {
        // Hapus garis bawah (_) dari nilai pendapat_pelayanan
        $pendapatPelayanan = str_replace('_', ' ', $kritik->pendapat_pelayanan);

        $html .= '
            <tr>
                <td style="padding: 8px; text-align: center;">' . $nomorUrut . '</td>
                <td style="padding: 8px; text-align: center;">' . $kritik->nama . '</td>
                <td style="padding: 8px; text-align: center;">' . $kritik->alamat . '</td>
                <td style="padding: 8px; text-align: center;">' . $kritik->kritik_saran . '</td>
                <td style="padding: 8px; text-align: center;">' . $pendapatPelayanan . '</td>
            </tr>
        ';

        $nomorUrut++;
    }

    $html .= '</table>';

    // Tambahkan informasi jumlah kritik berdasarkan kategori pendapat pelayanan
    $html .= '
        <h3 style="margin-top: 10px;">Jumlah Kritik Berdasarkan Kategori Pendapat Pelayanan:</h3>
        <ul>
            <li>Buruk: ' . $burukCount . '</li>
            <li>Cukup: ' . $cukupCount . '</li>
            <li>Baik: ' . $baikCount . '</li>
            <li>Sangat Baik: ' . $sangatBaikCount . '</li>
        </ul>
    ';

    $pdf->writeHTML($html, true, false, true, false, '');

    // Simpan atau tampilkan PDF.
    $pdf->Output('rekap_kritik.pdf', 'D');
    }

}
