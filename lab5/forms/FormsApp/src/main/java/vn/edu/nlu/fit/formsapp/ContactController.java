package vn.edu.nlu.fit.formsapp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "contactController", value = "/contact")
public class ContactController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String service = request.getParameter("service");
        String message = request.getParameter("message");

        // Thiết lập encoding để tránh lỗi tiếng Việt
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // In ra kết quả (demo)
        PrintWriter out = response.getWriter();
        out.println("<html><body style='font-family: Arial, sans-serif;'>");
        out.println("<h2>✅ Form Submitted Successfully!</h2>");
        out.println("<p><strong>Name:</strong> " + name + "</p>");
        out.println("<p><strong>Email:</strong> " + email + "</p>");
        out.println("<p><strong>Phone:</strong> " + phone + "</p>");
        out.println("<p><strong>Service:</strong> " + service + "</p>");
        out.println("<p><strong>Message:</strong> " + message + "</p>");
        out.println("<a href='contactForm.jsp' style='display:inline-block;margin-top:20px;'>Back</a>");
        out.println("</body></html>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}