<div class="card shadow-sm">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col" class="text-center">No</th>
                        <th scope="col">Judul File</th>
                        <th scope="col" class="d-none d-md-table-cell">Tanggal Upload</th>
                        <th scope="col" class="d-none d-lg-table-cell">Keterangan</th>
                        <th scope="col" class="text-center">Link File</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($fileDownloadDocuments as $index => $file)
                        <tr>
                            <th scope="row" class="text-center">{{ $fileDownloadDocuments->firstItem() + $index }}
                            </th>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="fas fa-file-alt fa-2x text-primary me-3"></i>
                                    <div>
                                        <h6 class="mb-0">{{ $file->judul_file }}</h6>
                                        <small
                                            class="text-muted d-md-none">{{ \Carbon\Carbon::parse($file->created_at)->translatedFormat('d M Y') }}</small>
                                    </div>
                                </div>
                            </td>
                            <td class="d-none d-md-table-cell">
                                {{ \Carbon\Carbon::parse($file->created_at)->translatedFormat('d F Y') }}</td>
                            <td class="d-none d-lg-table-cell">{{ Str::limit($file->keterangan_file, 50) }}</td>
                            <td class="text-center">
                                @if ($file->download_link)
                                    <a href="{{ Storage::url($file->download_link) }}" class="btn btn-sm btn-primary"
                                        download>
                                        <i class="fas fa-download me-1"></i> Download
                                    </a>
                                @else
                                    <span class="badge bg-danger">Tidak tersedia</span>
                                @endif
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="text-center py-4">
                                <img src="{{ asset('assets/images/no-data.svg') }}" alt="No Data"
                                    class="img-fluid mb-3" style="max-width: 200px;">
                                <h5 class="text-muted">Tidak ada data yang ditemukan</h5>
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="d-flex flex-column flex-md-row justify-content-between align-items-center mt-4">
    <div class="mb-3 mb-md-0">
        <p class="text-muted mb-0">
            Menampilkan {{ $fileDownloadDocuments->firstItem() ?? 0 }} sampai
            {{ $fileDownloadDocuments->lastItem() ?? 0 }} dari
            {{ $fileDownloadDocuments->total() }} entri
        </p>
    </div>
    <div>
        {{ $fileDownloadDocuments->appends(['search' => request('search'), 'show' => request('show')])->links('pagination::bootstrap-4') }}
    </div>
</div>
