package vn.edu.nlu.fit.formsapp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if ("lamdoanh2468".equals(username) && "123".equals(password)) {
            response.sendRedirect("index.jsp");
        } else {
            String errorMessage = "Incorrect username or password";
             request.setAttribute("username",username);
            request.setAttribute("error",errorMessage);
            request.getRequestDispatcher("loginForm.jsp").forward(request, response);
        }

    }
}