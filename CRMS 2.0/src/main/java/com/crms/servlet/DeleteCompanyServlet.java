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

@WebServlet("/DeleteCompanyServlet")
public class DeleteCompanyServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int id = Integer.parseInt(request.getParameter("id"));

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement("DELETE FROM companies WHERE company_id=?");

            ps.setInt(1, id);

            ps.executeUpdate();

            response.sendRedirect(request.getContextPath() + "/viewCompany.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}