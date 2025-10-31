$(document).ready(function() {
    $('.sign-in-form').on('submit', function(e) {
        e.preventDefault();
        let valid = true;

        // Xóa thông báo lỗi cũ
        $('.error-msg').remove();
        $('input').removeClass('error-border');

        // Username/Email check
        const username = $('#username-input');
        if ($.trim(username.val()) === '') {
            username.after('<span class="error-msg">Username or email is required</span>');
            username.addClass('error-border');
            valid = false;
        }

        // Password check
        const password = $('#password-input');
        if ($.trim(password.val()) === '') {
            password.after('<span class="error-msg">Password is required</span>');
            password.addClass('error-border');
            valid = false;
        }

        // Nếu hợp lệ
        if (valid) {
            alert('Login successful!');
            // Có thể xử lý logic đăng nhập ở đây
        }
    });

    // Khi nhập lại -> xóa lỗi tự động
    $('input').on('input', function() {
        $(this).removeClass('error-border');
        $(this).siblings('.error-msg').remove();
    });
});