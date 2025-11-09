$(document).ready(function() {
    $('#submit-btn').on('click', function(e) {
        e.preventDefault();

        $('[required]').each(function() {
            const $field = $(this);
            const $errorSpan = $field.closest('label').find('.error-value');

            if ($field.val().trim() === '') {
                $errorSpan.text('This field is required').css('color', 'red');
                $field.addClass('error');
            } else {
                $errorSpan.text('');
                $field.removeClass('error');
            }
        });
    });
});