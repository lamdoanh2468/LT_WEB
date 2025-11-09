<%--
  Created by IntelliJ IDEA.
  User: lamdo
  Date: 11/9/2025
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: Tahoma, sans-serif;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Arial, sans-serif;
            background: #f5f5f5;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        h1 {
            font-size: 32px;
            text-align: center;
            color: #333;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .contact-form {
            background: white;
            padding: 50px;
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }

        .contact-form .content-block {
            margin-bottom: 25px;
            background: rgb(247, 247, 247);
            border-radius: 10px;
            border: 1px solid #F3F3F3;
        }

        .contact-form .content-block #service-menu {
            font-weight: bold;
            position: relative;
        }

        .contact-form .email-phone {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 25px;
        }

        .contact-form label {
            display: block;
            font-size: 11px;
            font-weight: 600;
            color: #666;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            text-align: left;
            padding: 10px 15px;
        }

        .contact-form input[type="text"],
        .contact-form input[type="email"],
        .contact-form select,
        .contact-form textarea {
            width: 100%;
            padding: 14px 16px;
            outline: none;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            color: #333;
            background: rgb(247, 247, 247);
        }

        .contact-form input::placeholder,
        .contact-form textarea::placeholder {
            color: #ccc;
            font-weight: 550;

        }

        .contact-form input:focus,
        .contact-form select:focus,
        .contact-form textarea:focus {
            outline: none;
            border-color: #333;
        }

        .contact-form textarea {
            resize: vertical;
            min-height: 120px;
            font-family: inherit;
            background: white;

        }

        .contact-form select {
            appearance: none;
            padding-right: 40px;
            cursor: pointer;
        }

        .contact-form button[type='submit'] {
            width: 100%;
            padding: 16px;
            background: #333;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
        }

        .contact-form button[type='submit'] {
            width: 100%;
            padding: 20px 30px;
            background: #333333;
            color: white;
            border: none;
            border-radius: 100px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
        }

        .contact-form button[type='submit']:hover {
            background: #1a1a1a;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .fa.fa-arrow-right {
            margin-left: 8px;
        }

        .error {
            border: 1px solid red !important;
        }
    </style>
</head>
<body>
<form action="contact" method="get" class="contact-form">
    <h1>Contact Us</h1>
    <div class="content-block">
        <label for="text-input">FULL NAME*<span class="error-value"></span></label>
        <input type="text" id="text-input" placeholder="Enter your name" name="name" required>
    </div>
    <div class="email-phone">
        <div class="content-block">
            <label fo   r="email-input">EMAIL*<span class="error-value"></span></label>
            <input type="email" id="email-input" placeholder="Enter your Email" name="email" required>
        </div>
        <div class="content-block">
            <label for="phone-input">PHONE</label>
            <input type="text" id="phone-input" placeholder="Enter Number Phone" name="phone">
        </div>
    </div>
    <div class="content-block">
        <label for="service-menu">NEEDED SERVICES*<span class="error-value"></span>
        </label>
        <select required id="service-menu" about="" name="service">
            <option value=""> Please chooses</option>
            <option value="Microservices" class="service-selection">Micro Services</option>
            <option value="AWS" class="service-selection">Amazon Web Server</option>
        </select>
    </div>
    <div class="content-block" style="background: white">
        <label for="message-input">MESSAGE</label>
        <textarea id="message-input" placeholder="Your message here..." name="message"></textarea>
    </div>
    <button id="submit-btn" type="submit">Submit<i class="fa fa-arrow-right" aria-hidden="true"></i>
    </button>
</form>

</body>
</html>
