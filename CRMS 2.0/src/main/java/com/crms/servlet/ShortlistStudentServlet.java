package com.crms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crms.utils.DBConnection;

@WebServlet("/ShortlistStudentServlet")
public class ShortlistStudentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int studentId =
                    Integer.parseInt(request.getParameter("id"));

            HttpSession session =
                    request.getSession();

            String companyName =
                    (String) session.getAttribute("companyName");

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(
                    "INSERT INTO shortlisted_students(recruiter_id, student_id) VALUES (?, ?)");

            // Temporary recruiter_id
            ps.setInt(1, 1);

            ps.setInt(2, studentId);

            ps.executeUpdate();

            response.sendRedirect(
            	    "eligibleStudents.jsp?msg=shortlisted");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}