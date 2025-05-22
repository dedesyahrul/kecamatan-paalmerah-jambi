<?php
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BidangsmpController;
use App\Http\Controllers\BidangsdController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KritikController;
use App\Http\Controllers\SekretariatController;
use App\Http\Controllers\BidangptkController;
use App\Http\Controllers\PauddikmasController;
use App\Http\Controllers\BukutamuController;

use App\Http\Controllers\UndangundangController;
use App\Http\Controllers\PeraturanDaerahController;
use App\Http\Controllers\PeraturanPemerintahController;
use App\Http\Controllers\PeraturanKemenkominfoController;
use App\Http\Controllers\PeraturanKemendagriController;
use App\Http\Controllers\KeputusanBupatiController;
use App\Http\Controllers\PeraturanBupatiController;
use App\Http\Controllers\IntruksiPresidenController;
use App\Http\Controllers\SuratEdaranController;
use App\Http\Controllers\BeritaController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\ProfilController;
use App\Http\Controllers\BasisDataController;
use App\Http\Controllers\InformasiController;
use App\Http\Controllers\SocialShareController;
use App\Http\Controllers\VisitorController;
use App\Http\Controllers\KelurahanController;
use App\Http\Controllers\PkkController;
use App\Http\Controllers\LayananController;
use App\Http\Controllers\SeksiBagianController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/', [HomeController::class, 'welcome']);
Route::get('/', [HomeController::class, 'index'])->name('index');
Route::get('/sekre/{id}', [HomeController::class, 'showSekre'])
    ->name('sekre.show')
    ->middleware('encrypt.id');
Route::get('/egov/{id}', [HomeController::class, 'showEgov'])
    ->name('egov.show')
    ->middleware('encrypt.id');
Route::get('/infokom/{id}', [HomeController::class, 'showInfokom'])
    ->name('infokom.show')
    ->middleware('encrypt.id');
Route::get('/search', [HomeController::class, 'search'])->name('search');
Route::post('/contact/send', [HomeController::class, 'send'])->name('contact.send');

Route::match(['get', 'post'], '/visitor-statistics', [VisitorController::class, 'index'])->name('visitor.statistics');

Route::get('/kelurahan/{slug}/profil', [KelurahanController::class, 'profil'])->name('kelurahan.profil');
Route::get('/kelurahan/{slug}/data-penduduk', [KelurahanController::class, 'dataPenduduk'])->name('kelurahan.data-penduduk');
Route::get('/kelurahan/{slug}/struktur', [KelurahanController::class, 'strukturKelurahan'])->name('kelurahan.struktur');
Route::get('/kelurahan/{slug}/data-guru-pami', [KelurahanController::class, 'dataGuruPami'])->name('kelurahan.data-guru-pami');
Route::get('/kelurahan/{slug}/pkh', [KelurahanController::class, 'pkh'])->name('kelurahan.pkh');
Route::get('/kelurahan/{slug}/inovasi', [KelurahanController::class, 'inovasi'])->name('kelurahan.inovasi');
Route::get('/kelurahan/{slug}/data-kampung-bantar', [KelurahanController::class, 'dataKampungBantar'])->name('kelurahan.data-kampung-bantar');
Route::get('/kelurahan/{slug}/data-miskin-ekstrim', [KelurahanController::class, 'dataMiskinEkstrim'])->name('kelurahan.data-miskin-ekstrim');
Route::get('/kelurahan/{slug}/data-fasilitas-pendidikan', [KelurahanController::class, 'dataFasilitasPendidikan'])->name('kelurahan.data-fasilitas-pendidikan');
Route::get('/kelurahan/{slug}/data-sarana', [KelurahanController::class, 'sarana'])->name('kelurahan.data-sarana');
Route::get('/kelurahan/{slug}/data-titik-banjir', [KelurahanController::class, 'dataTitikBanjir'])->name('kelurahan.data-titik-banjir');
Route::get('/kelurahan/{slug}/data-penerima-gas-3kg', [KelurahanController::class, 'dataPenerimaGas'])->name('kelurahan.data-penerima-gas');
Route::get('/kelurahan/{slug}/data-tps', [KelurahanController::class, 'dataTps'])->name('kelurahan.data-tps');
Route::get('/kelurahan/{slug}/data-objek-wisata', [KelurahanController::class, 'dataObjekWisata'])->name('kelurahan.data-objek-wisata');
Route::get('/kelurahan/{slug}/poskamling', [KelurahanController::class, 'poskamling'])->name('kelurahan.data-poskamling');
Route::get('/kelurahan/{slug}/data-lansia', [KelurahanController::class, 'dataLansia'])->name('kelurahan.data-lansia');
Route::get('/kelurahan/{slug}/data-stunting', [KelurahanController::class, 'dataStunting'])->name('kelurahan.data-stunting');
Route::get('/kelurahan/{slug}/data-rt', [KelurahanController::class, 'dataRt'])->name('kelurahan.data-rt');
Route::get('/kelurahan/{slug}/data-pengangguran', [KelurahanController::class, 'dataPengangguran'])->name('kelurahan.data-pengangguran');
Route::get('/kelurahan/{slug}/data-pbb', [KelurahanController::class, 'dataPbb'])->name('kelurahan.data-pbb');
Route::get('/kelurahan/{slug}/data-perumahan', [KelurahanController::class, 'dataPerumahan'])->name('kelurahan.data-perumahan');
Route::get('/kelurahan/{slug}/data-ukm', [KelurahanController::class, 'dataUkm'])->name('kelurahan.data-ukm');

Route::get('/undang-undang', [UndangundangController::class, 'index']);
Route::get('/undang-undang/{id}', [UndangundangController::class, 'showDetail'])->name('detail-undang-undang');
Route::get('/undang-undang/download/{id}/{fileName}', [UndangundangController::class, 'downloadFile'])->name('undang-undang.download');

Route::get('/peraturan-daerah', [PeraturanDaerahController::class, 'index']);
Route::get('/peraturan-daerah/{id}', [PeraturanDaerahController::class, 'showDetail'])->name('detail-peraturan-daerah');
Route::get('/peraturan-daerah/download/{id}/{fileName}', [PeraturanDaerahController::class, 'downloadFile'])->name('peraturan-daerah.download');

Route::get('/peraturan-pemerintah', [PeraturanPemerintahController::class, 'index']);
Route::get('/peraturan-pemerintah/{id}', [PeraturanPemerintahController::class, 'showDetail'])->name('detail-peraturan-pemerintah');
Route::get('/peraturan-pemerintah/download/{id}/{fileName}', [PeraturanPemerintahController::class, 'downloadFile'])->name('peraturan-pemerintah.download');

Route::get('/peraturan-kemenkominfo', [PeraturanKemenkominfoController::class, 'index']);
Route::get('/peraturan-kemenkominfo/{id}', [PeraturanKemenkominfoController::class, 'showDetail'])->name('detail-peraturan-kemenkominfo');
Route::get('/peraturan-kemenkominfo/download/{id}/{fileName}', [PeraturanKemenkominfoController::class, 'downloadFile'])->name('peraturan-kemenkominfo.download');

Route::get('/peraturan-kemendagri', [PeraturanKemendagriController::class, 'index']);
Route::get('/peraturan-kemendagri/{id}', [PeraturanKemendagriController::class, 'showDetail'])->name('detail-peraturan-kemendagri');
Route::get('/peraturan-kemendagri/download/{id}/{fileName}', [PeraturanKemendagriController::class, 'downloadFile'])->name('peraturan-kemendagri.download');

Route::get('/keputusan-bupati', [KeputusanBupatiController::class, 'index']);
Route::get('/keputusan-bupati/{id}', [KeputusanBupatiController::class, 'showDetail'])->name('detail-keputusan-bupati');
Route::get('/keputusan-bupati/download/{id}/{fileName}', [KeputusanBupatiController::class, 'downloadFile'])->name('keputusan-bupati.download');

Route::get('/peraturan-bupati', [PeraturanBupatiController::class, 'index']);
Route::get('/peraturan-bupati/{id}', [PeraturanBupatiController::class, 'showDetail'])->name('detail-peraturan-bupati');
Route::get('/peraturan-bupati/download/{id}/{fileName}', [PeraturanBupatiController::class, 'downloadFile'])->name('peraturan-bupati.download');

Route::get('/intruksi-presiden', [IntruksiPresidenController::class, 'index']);
Route::get('/intruksi-presiden/{id}', [IntruksiPresidenController::class, 'showDetail'])->name('detail-intruksi-presiden');
Route::get('/intruksi-presideni/download/{id}/{fileName}', [IntruksiPresidenController::class, 'downloadFile'])->name('intruksi-presiden.download');

Route::get('/surat-edaran', [SuratEdaranController::class, 'index']);
Route::get('/surat-edaran/{id}', [SuratEdaranController::class, 'showDetail'])->name('detail-surat-edaran');
Route::get('/surat-edaran/download/{id}/{fileName}', [SuratEdaranController::class, 'downloadFile'])->name('surat-edaran.download');

Route::get('/all-berita', [BeritaController::class, 'allBerita'])->name('berita.all');
Route::get('/berita/{kategori_id}', [BeritaController::class, 'index'])->name('berita.index');
// Route::get('/berita-detail/{id}', [BeritaController::class, 'show'])->name('berita.show');
Route::get('/berita/{slug}/{token}', [BeritaController::class, 'show'])->name('berita.show');


Route::get('/galeri/foto', [GaleriController::class, 'indexFoto'])->name('indexFoto');
Route::get('/galeri/{id}', [GaleriController::class, 'showDetailFoto'])->name('galeri.detail');

Route::get('/frontend/galeri/video', [GaleriController::class, 'indexVideo'])->name('frontend.galeri.video.index');

Route::get('/sejarah', [ProfilController::class, 'indexSejarah']);
Route::get('/struktur', [ProfilController::class, 'indexStruktur']);
Route::get('/visimisi', [ProfilController::class, 'indexVisimisi']);
Route::get('/tugaswewe', [ProfilController::class, 'indexTugaswewe']);
Route::get('/pegawaidanstaff', [ProfilController::class, 'indexPegawaidanstaff']);
Route::get('/moto', [ProfilController::class, 'indexMoto']);
Route::get('/maklumat', [ProfilController::class, 'indexMaklumat']);
Route::get('/detail-pegawaidanstaff/{id}', [ProfilController::class, 'detailPegawaidanstaff'])->name('detail-pegawaidanstaff');
Route::get('/kata-sambutan', [ProfilController::class, 'indexSambutan'])->name('katasambutan');
Route::get('/monografi', [ProfilController::class, 'indexMonografi'])->name('monografi');
Route::get('/inovasi', [ProfilController::class, 'indexInovasi'])->name('inovasi');
Route::get('/prestasi', [ProfilController::class, 'indexPrestasi'])->name('prestasi');

Route::get('/profil-pkk', [PkkController::class, 'indexProfilPkk'])->name('profil-pkk');
Route::get('/sejarah-pkk', [PkkController::class, 'indexSejarahPkk'])->name('sejarah-pkk');
Route::get('/visi-misi-pkk', [PkkController::class, 'indexVisimisiPkk'])->name('visimisi-pkk');
Route::get('/paud-pkk', [PkkController::class, 'indexPaudPkk'])->name('paud-pkk');
Route::get('/kegiatan-pkk', [PkkController::class, 'indexKegiatanPkk'])->name('kegiatan-pkk');
Route::get('/prestasi-pkk', [PkkController::class, 'indexPrestasiPkk'])->name('prestasi-pkk');
Route::get('/data-pokjanal', [PkkController::class, 'indexDataPokjanal'])->name('data-pokjanal');
Route::get('/struktur-pokjanal', [PkkController::class, 'indexStrukturPokjanal'])->name('struktur-pokjanal');
Route::get('/tupoksi-pkk/{slug}', [PkkController::class, 'indexPokja'])->name('pkk.pokja');

Route::get('/layanan-dukcapil/{slug}', [LayananController::class, 'indexDukcapil'])->name('layanan.dukcapil');
Route::get('/layanan-paten/{slug}', [LayananController::class, 'indexPaten'])->name('layanan.paten');
Route::get('/layanan-standar-pelayanan', [LayananController::class, 'indexStandarPelayanan'])->name('layanan.standar-pelayanan');
Route::get('/layanan-alur-pelayanan', [LayananController::class, 'indexAlurPelayanan'])->name('layanan.alur-pelayanan');
Route::get('/layanan-alur-pengaduan', [LayananController::class, 'indexAlurPengaduan'])->name('layanan.alur-pengaduan');

Route::get('/bagian-perencanaan-dan-keuangan', [SeksiBagianController::class, 'tugasKeuangan'])->name('bagian-perencanaan-dan-keuangan');
Route::get('/bagian-umum-dan-kepegawaian', [SeksiBagianController::class, 'tugasKepegawaian'])->name('bagian-umum-dan-kepegawaian');
Route::get('/seksi-pelayanan-umum', [SeksiBagianController::class, 'seksiPelayananUmum'])->name('seksi-pelayanan-umum');
Route::get('/seksi-pemerintahan-umum', [SeksiBagianController::class, 'seksiPemerintahanUmum'])->name('seksi-pemerintahan-umum');
Route::get('/seksi-ketentraman', [SeksiBagianController::class, 'seksiKetentraman'])->name('seksi-ketentraman');
Route::get('/seksi-pemberdayaan', [SeksiBagianController::class, 'seksiPemberdayaan'])->name('seksi-pemberdayaan');
Route::get('/seksi-kesejahteraan-sosial', [SeksiBagianController::class, 'seksiKesejahteraanSosial'])->name('seksi-kesejahteraan-sosial');

Route::get('/basisdata/emailopd', [BasisDataController::class, 'indexEmailopd'])->name('emailopd');
Route::get('/basisdata/bts', [BasisDataController::class, 'indexBTS'])->name('bts');
Route::get('/basisdata/radio', [BasisDataController::class, 'indexRadio'])->name('radio');
Route::get('/basisdata/warnet', [BasisDataController::class, 'indexWarnet'])->name('warnet');
Route::get('/basisdata/blankspot', [BasisDataController::class, 'indexBlankspot'])->name('blankspot');
Route::get('/basisdata/tvkabel', [BasisDataController::class, 'indexTVKabel'])->name('tvkabel');

Route::get('/informasi/pengumuman', [InformasiController::class, 'indexPengumuman'])->name('pengumuman');
Route::get('/informasi/pengumuman/{id}', [InformasiController::class, 'showPengumuman'])
    ->name('pengumuman.show')
    ->middleware('encrypt.id');
Route::get('/agenda', [InformasiController::class, 'indexAgenda'])->name('agenda');
Route::get('/agenda/{id}', [InformasiController::class, 'showAgenda'])
    ->name('agenda.show')
    ->middleware('encrypt.id');
Route::get('/informasi/weblink', [InformasiController::class, 'indexWeblink'])->name('weblink');
Route::get('/informasi/sakip', [InformasiController::class, 'indexSakip'])->name('sakip');
Route::get('/informasi/renstra', [InformasiController::class, 'indexRenstra'])->name('renstra');
Route::get('/informasi/download-file', [InformasiController::class, 'downloadFile'])->name('download-file');
Route::get('/informasi/download-file-ajax', [InformasiController::class, 'downloadFileAjax'])->name('download-file-ajax');



// Route::get('/get-footer-data', [FooterController::class, 'getFooterData'])->name('footer.data');



Route::get('/sekretariat-mapel-detail', [SekretariatController::class, 'showDetail'])->name('sekretariat-mapel-detail');
Route::get('/download/qr/{folderName}/{fileName}', [SekretariatController::class, 'qrDownload'])->name('sekretariat.qr_download');

Route::get('/ptk-mapel-detail', [BidangptkController::class, 'showDetail'])->name('ptk-mapel-detail');
Route::get('/download/qr/{download_link}', [BidangptkController::class, 'qrDownload'])->name('ptk.qr_download');

Route::get('/smp-mapel-detail', [BidangsmpController::class, 'showDetail'])->name('smp-mapel-detail');
Route::get('/download/smp/qr/{download_link}', [BidangsmpController::class, 'qrDownload'])->name('bidangsmp.qr_download');

Route::get('/sd-mapel-detail', [BidangsdController::class, 'showDetail'])->name('sd-mapel-detail');
// Route::get('/download/sd/qr/{download_link}', [BidangsdController::class, 'qrDownload'])->name('bidangsd.qr_download');

Route::get('/paud-mapel-detail', [PauddikmasController::class, 'showDetail'])->name('paud-mapel-detail');

Route::get('/buat-kritik', [KritikController::class, 'create'])->name('beri_saran');
Route::post('/submit', [KritikController::class, 'store'])->name('simpan_kritik');


Route::get('/bukutamu/create', [BukutamuController::class, 'create'])->name('bukutamu.create');
Route::post('/bukutamu', [BukutamuController::class, 'store'])->name('bukutamu.store');


// notifikasi
Route::view('/notification', 'notification')->name('notification');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::get('/search', [KritikController::class, 'search'])->name('kritik.search');
    Route::get('/kritik/{id}', [KritikController::class, 'viewDetail'])->name('kritik.viewDetail');
    Route::get('/export-pdf', [KritikController::class, 'exportPDF'])->name('kritik.exportPDF');

    Route::get('/bukutamu/search', [BukutamuController::class, 'search'])->name('bukutamu.search');
    Route::get('/bukutamu/{id}', [BukutamuController::class, 'viewDetail'])->name('bukutamu.viewDetail');
    Route::get('/export-pdf-bukutamu', [BukutamuController::class, 'exportPDF'])->name('export.pdf.bukutamu');

});
