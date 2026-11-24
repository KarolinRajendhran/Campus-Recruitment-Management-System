package com.crms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crms.utils.DBConnection;

@WebServlet("/RecruiterRegisterServlet")
public class RecruiterRegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String companyName = request.getParameter("companyName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "INSERT INTO recruiters(company_name,email,password,role) VALUES(?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, companyName);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);

            int row = ps.executeUpdate();

            if(row > 0) {

                response.sendRedirect("recruiterLogin.jsp");

            } else {

                response.getWriter().println(
                        "<h2>Registration Failed!</h2>");
            }

        } catch(Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                    "<h2>Error : " + e.getMessage() + "</h2>");
        }
    }
}