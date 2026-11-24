package com.crms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crms.utils.DBConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "SELECT * FROM students WHERE email=? AND password=?";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                HttpSession session =
                request.getSession();

                session.setAttribute("name",
                        rs.getString("name"));

                session.setAttribute("department",
                        rs.getString("department"));

                session.setAttribute("cgpa",
                        rs.getDouble("cgpa"));

                session.setAttribute("skills",
                        rs.getString("skills"));

                session.setAttribute("phone",
                        rs.getString("phone"));

                response.sendRedirect("student.jsp");

            }
             else {

                response.getWriter().println(
                "<h2>Invalid Email or Password!</h2>");

            }

        }catch(Exception e) {
            e.printStackTrace();
            response.getWriter().println(
                "<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
