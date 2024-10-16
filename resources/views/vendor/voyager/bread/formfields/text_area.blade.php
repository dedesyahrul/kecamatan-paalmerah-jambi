<textarea {!! $row->required ? 'required' : '' !!} class="form-control tinymce-editor" name="{{ $row->field }}"
    rows="{{ $options->rows ?? 5 }}">{{ old($row->field, $dataTypeContent->{$row->field} ?? ($options->default ?? '')) }}</textarea>

@push('javascript')
    <script>
        // Initialize TinyMCE
        tinymce.init({
            selector: 'textarea.tinymce-editor',
            plugins: 'autolink lists link image charmap print preview anchor',
            toolbar: 'undo redo | formatselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
            menubar: false,
            branding: false,
            // Add any other configuration options you need
        });
    </script>
@endpush
