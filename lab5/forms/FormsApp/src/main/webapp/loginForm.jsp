<%--
  Created by IntelliJ IDEA.
  User: lamdo
  Date: 11/9/2025
  Time: 6:50 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Tahoma, sans-serif;
            text-align: center;
            background-image: url("img/win11_theme.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        .sign-in-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 60px auto;
            border-radius: 15px;
            width: 320px;
            height: 520px;
            background: #fff;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
        }

        .sign-in-form h1 {
            font-size: 22px;
            padding: 20px;
            color: #333;
        }

        .custom-input {
            padding: 10px;
            width: 80%;
        }

        .custom-input input {
            width: 100%;
            border: 1px solid #cccccc;
            border-radius: 50px;
            height: 35px;
            padding: 5px 20px;
            font-size: 14px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            outline: none;
        }

        .custom-input input::placeholder {
            font-weight: bold;
            color: #999;
        }

        .sign-in-bttn {
            background: linear-gradient(135deg, #C86DD7, #7E57C2);
            border: none;
            border-radius: 100px;
            font-size: 15px;
            color: white;
            padding: 10px 50px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
            margin: 20px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .sign-in-bttn:hover {
            transform: scale(1.05);
        }

        .sign-up-bttn {
            border: none;
            background: transparent;
            border-radius: 100px;
            font-size: 15px;
            font-weight: 600;
            color: #555;
            position: relative;
            top: 90px;
            cursor: pointer;
        }

        .alternative-way p {
            color: #B8B8B8;
            margin: 15px;
        }

        .social-media {
            display: flex;
            justify-content: center;
            gap: 25px;
        }

        .social-media a {
            border: none;
            border-radius: 50%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            padding: 8px;
            transition: transform 0.3s ease;
        }

        .social-media a:hover {
            transform: scale(1.1);
        }

        .social-media img {
            width: 30px;
            height: auto;
        }

        .error {
            color: indianred;
        }
    </style>
</head>
<body>

<form action="login" method="post" class="sign-in-form">
    <%
        String error = request.getAttribute("error") != null ? request.getAttribute("error").toString() : "";
        String username = request.getAttribute("username")!=null?request.getAttribute("username").toString():"";
    %>
    <h1>Sign In</h1>

    <div class="custom-input">
        <input id="username-input" name="username" placeholder="Username or Email" value="<%=username%>" required>
    </div>
    <div class="custom-input">
        <input id="password-input" name="password" type="password" placeholder="Password" required>
    </div>
    <span class="error"><%=error%></span>
    <button class="sign-in-bttn" type="submit">SIGN IN</button>

    <div class="alternative-way">
        <p>Or login with</p>
        <div class="social-media">
            <a href="https://www.facebook.com/" target="_blank">
                <img alt="Facebook" src="${pageContext.request.contextPath}/img/facebook.png"/>
            </a>
            <a href="https://www.google.com/" target="_blank">
                <img alt="Google" src="${pageContext.request.contextPath}/img/search.png"/>
            </a>
        </div>
    </div>

    <button class="sign-up-bttn" type="button">Sign Up</button>
</form>

<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
