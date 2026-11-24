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

@WebServlet("/AddCompanyServlet")
public class AddCompanyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String companyName =
                request.getParameter("companyName");

        String role =
                request.getParameter("role");

        double pkg =
                Double.parseDouble(
                request.getParameter("package"));

        double cgpa =
                Double.parseDouble(
                request.getParameter("cgpa"));

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(
                    "INSERT INTO companies(company_name,role,package,eligibility_cgpa) VALUES(?,?,?,?)");

            ps.setString(1, companyName);
            ps.setString(2, role);
            ps.setDouble(3, pkg);
            ps.setDouble(4, cgpa);

            int row = ps.executeUpdate();

            if(row > 0) {

            	response.sendRedirect("viewCompany.jsp");
            } else {

                response.getWriter().println(
                        "<h2>Company Not Added!</h2>");
            }

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}