$(document).ready(function () {
    function showError(input, message) {
        // Xóa thông báo lỗi cũ (nếu có)
        $(input).siblings(".error-msg").remove();
        // Thêm viền đỏ và thông báo lỗi
        $(input).css("border", "1px solid red");
        $(input).after('<span class="error-msg" style="color:red; font-size:11px; margin-left:5px;">' + message + '</span>');
    }

    function clearError(input) {
        $(input).css("border", "1px solid rgba(186,186,186,0.3)");
        $(input).siblings(".error-msg").remove();
    }

    $(".register-form").on("submit", function (e) {
        e.preventDefault();
        let valid = true;

        // Full Name
        let name = $("input[name='fullname']");
        if (name.val().trim() === "") {
            showError(name, "Required");
            valid = false;
        } else clearError(name);

        // Email
        let email = $("input[name='email']");
        let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email.val())) {
            showError(email, "Invalid email");
            valid = false;
        } else clearError(email);

        // Password
        let password = $("input[name='password']");
        if (password.val().length < 6) {
            showError(password, "At least 6 characters");
            valid = false;
        } else clearError(password);

        // Card number
        let card = $("input[placeholder='Card Number']");
        let cardPattern = /^[0-9]{16}$/;
        if (!cardPattern.test(card.val())) {
            showError(card, "16 digits required");
            valid = false;
        } else clearError(card);

        // CVC
        let cvc = $("#card-cvc");
        let cvcPattern = /^[0-9]{3}$/;
        if (!cvcPattern.test(cvc.val())) {
            showError(cvc, "3 digits required");
            valid = false;
        } else clearError(cvc);

        // Terms checkbox
        let terms = $(".terms input[type='checkbox']");
        if (!terms.is(":checked")) {
            alert("Please accept the terms and conditions");
            valid = false;
        }

        if (valid) {
            alert("Registration successful!");
        }
    });

    // Khi người dùng nhập lại → tự động xóa lỗi
    $("input").on("input", function () {
        clearError(this);
    });
});