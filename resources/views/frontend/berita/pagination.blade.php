@if ($paginator->hasPages())
    <nav aria-label="Page navigation" class="pagination-wrapper">
        <ul class="pagination pagination-modern">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="page-item disabled" aria-disabled="true">
                    <span class="page-link">&lsaquo;</span>
                </li>
            @else
                <li class="page-item">
                    <a class="page-link" href="{{ $paginator->previousPageUrl() }}" rel="prev">&lsaquo;</a>
                </li>
            @endif

            {{-- Pagination Elements --}}
            @php
                $start = $paginator->currentPage() - 1;
                $end = $paginator->currentPage() + 1;
                if ($start < 1) {
                    $start = 1;
                    $end += 1;
                }
                if ($end >= $paginator->lastPage()) {
                    $end = $paginator->lastPage();
                }
            @endphp

            @if ($start > 1)
                <li class="page-item">
                    <a class="page-link" href="{{ $paginator->url(1) }}">1</a>
                </li>
                @if ($start > 2)
                    <li class="page-item disabled" aria-disabled="true"><span class="page-link">...</span></li>
                @endif
            @endif

            @for ($i = $start; $i <= $end; $i++)
                @if ($i == $paginator->currentPage())
                    <li class="page-item active" aria-current="page"><span class="page-link">{{ $i }}</span>
                    </li>
                @else
                    <li class="page-item"><a class="page-link" href="{{ $paginator->url($i) }}">{{ $i }}</a>
                    </li>
                @endif
            @endfor

            @if ($end < $paginator->lastPage())
                @if ($end < $paginator->lastPage() - 1)
                    <li class="page-item disabled" aria-disabled="true"><span class="page-link">...</span></li>
                @endif
                <li class="page-item">
                    <a class="page-link"
                        href="{{ $paginator->url($paginator->lastPage()) }}">{{ $paginator->lastPage() }}</a>
                </li>
            @endif

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <li class="page-item">
                    <a class="page-link" href="{{ $paginator->nextPageUrl() }}" rel="next">&rsaquo;</a>
                </li>
            @else
                <li class="page-item disabled" aria-disabled="true">
                    <span class="page-link">&rsaquo;</span>
                </li>
            @endif
        </ul>
    </nav>
@endif

<style>
    .pagination-wrapper {
        display: flex;
        justify-content: center;
        margin-top: 2rem;
    }

    .pagination-modern {
        display: flex;
        list-style: none;
        padding: 0;
        margin: 0;
        background-color: #fff;
        border-radius: 30px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .pagination-modern .page-item {
        margin: 0;
    }

    .pagination-modern .page-link {
        border: none;
        background-color: transparent;
        color: #333;
        font-weight: 500;
        padding: 10px 15px;
        transition: all 0.3s ease;
    }

    .pagination-modern .page-link:hover {
        background-color: #f0f0f0;
        color: #007bff;
    }

    .pagination-modern .page-item.active .page-link {
        background-color: #007bff;
        color: #fff;
        border-radius: 50%;
    }

    .pagination-modern .page-item.disabled .page-link {
        color: #ccc;
        cursor: not-allowed;
    }

    @media (max-width: 576px) {
        .pagination-modern .page-link {
            padding: 8px 12px;
            font-size: 0.9rem;
        }
    }
</style>
