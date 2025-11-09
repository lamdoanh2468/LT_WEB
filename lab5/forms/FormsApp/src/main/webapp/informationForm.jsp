<%--
  Created by IntelliJ IDEA.
  User: lamdo
  Date: 11/9/2025
  Time: 8:09 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
    <style>
        * {
            margin: 0;
            font-family: Tahoma, sans-serif;
        }

        body {
            background: #DFDFDF;
            display: flex;
            justify-content: center;
        }

        .form-container {
            background: white;
            padding: 20px;
            margin-top: 10px;
            width: 400px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }

        .register-form label {
            color: #8AD734;
            font-size: 13px;
            font-weight: 550;
        }

        .register-form i {
            color: #BABABA;
            padding: 5px 8px;
            font-size: 10px;
            border-right: 1px solid #BABABA;
        }

        .register-form input, button {
            border: none;
            background: #F9F9F9;
            margin-top: 5px;
        }

        .register-form .input-group {
            background: #F9F9F9;
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
            border: 1px solid rgba(186, 186, 186, 0.3);
            border-radius: 3px;
            display: flex;
            align-items: center;
        }

        .register-form input {
            flex: 1;
            padding: 8px;
            border: none;
            outline: none;
            background: transparent;
        }

        .register-form .row {
            display: flex;
            gap: 10px;
        }

        .register-form .dob input {
            width: 50px;
            padding: 5px;
            border: 1px solid rgba(186, 186, 186, 0.3);
            border-radius: 3px;
            text-align: center;
        }

        .register-form .gender {
            display: flex;
            gap: 10px;
        }

        .register-form .gender label {
            color: #555;
            font-weight: 500;
        }

        .register-form .gender input {
            margin-right: 5px;
        }

        .payment-options {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }

        .payment-options label {
            border: 1px solid rgba(186, 186, 186, 0.3);
            padding: 10px;
            border-radius: 3px;
            flex: 1;
            text-align: center;
            cursor: pointer;
            color: #555;
        }

        .payment-options input {
            display: none;
        }

        .terms {
            margin: 20px 0;
            font-size: 13px;
            color: #777;
        }

        .submit-btn {
            width: 100%;
            padding: 10px;
            background: #7ED321;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-weight: bold;
        }

        .submit-btn:hover {
            background: #5bb117;
        }
    </style>
</head>
<body>
<div class="form-container">
    <form class="register-form" action="register" method="post">
        <div class="account-section">
            <label for="account-name">Account</label>
            <div class="input-group">
                <i class="fa fa-user"></i>
                <input id="account-name" type="text" placeholder="Full Name" name="fullname" required>
            </div>
            <div class="input-group">
                <i class="fa fa-envelope"></i>
                <input type="email" placeholder="Email Address" name="email" required>
            </div>
            <div class="input-group">
                <i class="fa fa-key"></i>
                <input type="password" placeholder="Password" name="password" required>
            </div>
        </div>

        <div class="date-section">
            <label>Date of Birth</label>
            <div class="row dob">
                <input type="text" name="day" placeholder="DD" maxlength="2" required>
                <input type="text" name="month" placeholder="MM" maxlength="2" required>
                <input type="text" name="year" placeholder="YYYY" maxlength="4" required>
            </div>

            <label>Gender</label>
            <div class="gender">
                <label><input type="radio" name="gender" value="Male" checked> Male</label>
                <label><input type="radio" name="gender" value="Female"> Female</label>
            </div>
        </div>

        <div class="payment-section">
            <label>Payment Method</label>
            <div class="payment-options">
                <label>
                    <input type="radio" name="payment" value="CreditCard" checked>
                    Credit Card
                </label>
                <label>
                    <input type="radio" name="payment" value="PayPal">
                    PayPal
                </label>
            </div>

            <div class="input-group">
                <i class="fa fa-credit-card"></i>
                <input type="text" name="cardNumber" placeholder="Card Number" required>
            </div>

            <div class="row">
                <div class="input-group" style="flex: 1;">
                    <i class="fa fa-lock"></i>
                    <input id="card-cvc" type="text" name="cvc" placeholder="Card CVC" maxlength="3" required>
                </div>
                <div class="input-group" style="flex: 1;">
                    <input type="text" name="expiry" placeholder="Expiry (MM/YY)" required>
                </div>
            </div>
        </div>

        <div class="terms">
            <label>
                <input type="checkbox" required>
                I accept the terms and conditions.
            </label>
        </div>

        <button type="submit" class="submit-btn">Register</button>
        <script>
            // Xử lý chọn giới tính (toggle active)
            const genderButtons = document.querySelectorAll('input[name="gender"]');
            genderButtons.forEach(btn => {
                btn.addEventListener('change', () => {
                    genderButtons.forEach(b => b.parentElement.style.color = "#555");
                    btn.parentElement.style.color = "#7ED321"; // màu active
                });
            });

            // Xử lý chọn phương thức thanh toán
            const paymentRadios = document.querySelectorAll('input[name="payment"]');
            const paymentLabels = document.querySelectorAll('.payment-options label');
            paymentRadios.forEach((radio, index) => {
                radio.addEventListener('change', () => {
                    paymentLabels.forEach(lab => lab.style.background = "#fff");
                    paymentLabels[index].style.background = "#e9f7e3";
                });
            });

            // Validate trước khi gửi form
            document.querySelector('.register-form').addEventListener('submit', (e) => {
                const fullname = document.querySelector('input[name="fullname"]').value.trim();
                const email = document.querySelector('input[name="email"]').value.trim();
                const password = document.querySelector('input[name="password"]').value.trim();
                const card = document.querySelector('input[name="cardNumber"]').value.trim();
                const cvc = document.querySelector('input[name="cvc"]').value.trim();
                const expiry = document.querySelector('input[name="expiry"]').value.trim();

                let errorMsg = "";

                // Kiểm tra tên
                if (fullname.length < 3) {
                    errorMsg += "⚠️ Full name phải có ít nhất 3 ký tự.\n";
                }

                // Kiểm tra email
                if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
                    errorMsg += "⚠️ Email không hợp lệ.\n";
                }

                // Kiểm tra password
                if (password.length < 6) {
                    errorMsg += "⚠️ Mật khẩu phải có ít nhất 6 ký tự.\n";
                }

                // Kiểm tra số thẻ
                if (!/^\d{12,19}$/.test(card)) {
                    errorMsg += "⚠️ Số thẻ không hợp lệ (12-19 số).\n";
                }

                // Kiểm tra CVC
                if (!/^\d{3}$/.test(cvc)) {
                    errorMsg += "⚠️ CVC phải gồm 3 chữ số.\n";
                }

                // Kiểm tra expiry
                if (!/^\d{2}\/\d{2}$/.test(expiry)) {
                    errorMsg += "⚠️ Expiry phải có dạng MM/YY.\n";
                }

                if (errorMsg) {
                    e.preventDefault(); // chặn submit
                    alert(errorMsg);
                }
            });
        </script>
    </form>
</div>
</body>
</html>
