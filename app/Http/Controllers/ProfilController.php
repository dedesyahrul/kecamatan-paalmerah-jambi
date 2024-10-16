<?php

namespace App\Http\Controllers;
use App\Sejarah;
use App\Struktur;
use App\Visimisi;
use App\TugasDanWewenang;
use App\Maklumat;
use App\Moto;
use App\Pegawai;
use App\Jabatan;
use App\KataSambutan;
use App\DetailAplikasi;
use App\Monografi;
use App\Inovasi;
use App\Prestasi;


use Illuminate\Http\Request;

class ProfilController extends Controller
{
    public function indexSejarah()
    {
        $sejarahs = Sejarah::All();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.sejarah.sejarah', compact('sejarahs','detailAplikasi' ));
    }
    // public function indexSejarah()
    // {
    //     $sejarah = Sejarah::first(); // Ambil satu entri sejarah pertama
    //     $sejarahs = Sejarah::all(); // Jika perlu, ambil semua entri sejarah

    //     $detailAplikasi = DetailAplikasi::first();
    //     return view('frontend.profil.sejarah.sejarah', compact('sejarah', 'sejarahs', 'detailAplikasi'));
    // }



    public function indexStruktur()
    {
        $strukturs = Struktur::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.struktur.struktur', compact('strukturs','detailAplikasi'));
    }
    public function indexVisimisi()
    {
        $visimisis = Visimisi::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.visimisi.visimisi', compact('visimisis','detailAplikasi'));
    }
    public function indexTugaswewe()
    {
        $TugasDanWewenangs = TugasDanWewenang::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.tugaswewenang.tugaswewe', compact('TugasDanWewenangs','detailAplikasi'));
    }
    public function indexMaklumat()
    {
        $Maklumats = Maklumat::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.maklumat.maklumat', compact('Maklumats','detailAplikasi'));
    }
    public function indexMoto()
    {
        $motos = Moto::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.moto.moto', compact('motos','detailAplikasi'));
    }
//  public function indexPegawaidanstaff()
// {
//     // Ambil semua jabatan yang ada
//     $jabatan = Jabatan::orderBy('id')->get();

//     // Inisialisasi array kosong untuk menyimpan pegawai berdasarkan jabatan
//     $pegawaiByJabatan = [];

//     // Looping untuk setiap jabatan
//     foreach ($jabatan as $j) {
//         // Ambil pegawai yang memiliki jabatan_id sama dengan id jabatan saat ini
//         $pegawais = Pegawai::where('jabatan_id', $j->id)->paginate(6);
//         // Simpan ke array dengan key jabatan_id
//         $pegawaiByJabatan[$j->id] = $pegawais;
//     }

//     // Ambil detail aplikasi pertama
//     $detailAplikasi = DetailAplikasi::first();

//     // Kirimkan data ke view dengan menggunakan array $pegawaiByJabatan
//     return view('frontend.profil.pegawai_dan_staff.pegawaidanstaff', compact('pegawaiByJabatan', 'detailAplikasi'));
// }

    public function indexPegawaidanstaff()
    {
        // $pegawais = Pegawai::with('jabatan')->paginate(8);
        $pegawais = Pegawai::with('jabatan')->orderBy('jabatan_id', 'asc')->paginate(8);

        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.pegawai_dan_staff.pegawaidanstaff',
         compact('pegawais','detailAplikasi'));
    }
    public function detailPegawaidanstaff($id)
    {
        // Mengambil data pegawai berdasarkan ID dan memuat relasi jabatan
        $pegawai = Pegawai::with('jabatan')->findOrFail($id);
        $detailAplikasi = DetailAplikasi::first();
        // Mengirim data pegawai ke view
        return view('frontend.profil.pegawai_dan_staff.detail_pegawaidanstaff', compact('pegawai','detailAplikasi'));
    }
    public function indexSambutan()
    {
        $kataSambutans = KataSambutan::all();
        $pegawais = Pegawai::with('jabatan')->get();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.sambutan.kata-sambutan', compact('kataSambutans','pegawais','detailAplikasi'));
    }
    public function indexMonografi()
    {
        $monografis = Monografi::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.monografi.monografi', compact('monografis','detailAplikasi'));
    }

    public function indexInovasi()
    {
        $inovasis = Inovasi::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.inovasi.inovasi', compact('inovasis','detailAplikasi'));
    }
    
    public function indexPrestasi()
    {
        $prestasis = Prestasi::all();
        $detailAplikasi = DetailAplikasi::first();
        return view('frontend.profil.prestasi.prestasi', compact('prestasis','detailAplikasi'));
    }
}
