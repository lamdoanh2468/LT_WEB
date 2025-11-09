package vn.edu.nlu.fit.formsapp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "InformationController", value = "/info")
public class InformationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String gender = request.getParameter("gender");
        String payment = request.getParameter("payment");
        String cardNumber = request.getParameter("cardNumber");
        String cvc = request.getParameter("cvc");
        String expiry = request.getParameter("expiry");

        PrintWriter out = response.getWriter();
        out.println("<html><body style='font-family:Arial'>");
        out.println("<h2>Registration Info Received:</h2>");
        out.println("<p><strong>Name:</strong> " + fullname + "</p>");
        out.println("<p><strong>Email:</strong> " + email + "</p>");
        out.println("<p><strong>Password:</strong> " + password + "</p>");
        out.println("<p><strong>Date of Birth:</strong> " + day + "/" + month + "/" + year + "</p>");
        out.println("<p><strong>Gender:</strong> " + gender + "</p>");
        out.println("<p><strong>Payment:</strong> " + payment + "</p>");
        out.println("<p><strong>Card Number:</strong> " + cardNumber + "</p>");
        out.println("<p><strong>CVC:</strong> " + cvc + "</p>");
        out.println("<p><strong>Expiry:</strong> " + expiry + "</p>");
        out.println("<a href='informationForm.jsp'>Back</a>");
        out.println("</body></html>");
    }
}
