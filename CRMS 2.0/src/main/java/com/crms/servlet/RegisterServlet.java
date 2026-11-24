package com.crms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.crms.utils.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String department = request.getParameter("department");
        double cgpa = Double.parseDouble(request.getParameter("cgpa"));
        String skills = request.getParameter("skills");
        String phone = request.getParameter("phone");

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO students(name,email,password,department,cgpa,skills,phone) VALUES(?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, department);
            ps.setDouble(5, cgpa);
            ps.setString(6, skills);
            ps.setString(7, phone);

            int row = ps.executeUpdate();

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            if (row > 0) {
                response.sendRedirect("success.jsp");
            } else {
                out.println("<h2>Registration Failed!</h2>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
