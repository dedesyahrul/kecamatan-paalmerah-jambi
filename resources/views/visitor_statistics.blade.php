<div class="widget mb-4 pb-2">
    <h5 class="widget-title border-bottom pb-2 mb-3">Statistik Pengunjung</h5>
    <div class="mt-4">
        <ul class="list-unstyled">
            <li class="d-flex align-items-center mb-3">
                <span class="me-3">👤</span>
                <div class="flex-grow-1">
                    <div class="d-flex justify-content-between">
                        <span>Hari ini</span>
                        <strong>{{ $today }}</strong>
                    </div>
                </div>
            </li>
            <li class="d-flex align-items-center mb-3">
                <span class="me-3">👥</span>
                <div class="flex-grow-1">
                    <div class="d-flex justify-content-between">
                        <span>Kemarin</span>
                        <strong>{{ $yesterday }}</strong>
                    </div>
                </div>
            </li>
            <li class="d-flex align-items-center mb-3">
                <span class="me-3">📅</span>
                <div class="flex-grow-1">
                    <div class="d-flex justify-content-between">
                        <span>Bulan ini</span>
                        <strong>{{ $month }}</strong>
                    </div>
                </div>
            </li>
            <li class="d-flex align-items-center">
                <span class="me-3">📊</span>
                <div class="flex-grow-1">
                    <div class="d-flex justify-content-between">
                        <span>Total Kunjungan</span>
                        <strong>{{ $total }}</strong>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
