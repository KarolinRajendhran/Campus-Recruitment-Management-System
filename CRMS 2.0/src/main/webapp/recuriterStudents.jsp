<%@ page import="java.sql.*" %>
<%@ page import="com.crms.utils.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eligible Students</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
    margin:0;
    padding:20px;
}

h1{
    text-align:center;
    color:#1e3a8a;
}

table{
    width:95%;
    margin:auto;
    border-collapse:collapse;
    background:white;
}

th{
    background:#1e3a8a;
    color:white;
    padding:12px;
}

td{
    border:1px solid #ddd;
    padding:10px;
    text-align:center;
}

.back{
    margin-top:30px;
    text-align:center;
}

.back a{
    text-decoration:none;
    background:#1e3a8a;
    color:white;
    padding:10px 20px;
    border-radius:6px;
}

.debug{
    text-align:center;
    color:red;
    margin-bottom:20px;
}

</style>
</head>

<body>

<h1 style="color:red;">
HELLO RECRUITER STUDENTS PAGE
</h1>

<%
try{

    String companyName =
            (String)session.getAttribute("companyName");

    Connection con =
            DBConnection.getConnection();

    PreparedStatement ps1 =
            con.prepareStatement(
            "SELECT eligibility_cgpa FROM companies WHERE company_name=?");

    ps1.setString(1, companyName);

    ResultSet rs1 =
            ps1.executeQuery();

    double requiredCgpa = 0;

    if(rs1.next()){
        requiredCgpa =
                rs1.getDouble("eligibility_cgpa");
    }
%>

<div class="debug">
    Company = <%= companyName %>
    <br>
    Required CGPA = <%= requiredCgpa %>
</div>
<h1 style="color:red;text-align:center;">
    TEST PAGE
</h1>

<table>

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Department</th>
    <th>CGPA</th>
    <th>Skills</th>
    <th>Phone</th>
</tr>

<%

    PreparedStatement ps2 =
            con.prepareStatement(
            "SELECT * FROM students WHERE cgpa >= ?");

    ps2.setDouble(1, requiredCgpa);

    ResultSet rs2 =
            ps2.executeQuery();

    while(rs2.next()){
%>

<tr>
    <td><%= rs2.getInt("id") %></td>
    <td><%= rs2.getString("name") %></td>
    <td><%= rs2.getString("email") %></td>
    <td><%= rs2.getString("department") %></td>
    <td><%= rs2.getDouble("cgpa") %></td>
    <td><%= rs2.getString("skills") %></td>
    <td><%= rs2.getString("phone") %></td>
</tr>

<%
    }

}catch(Exception e){
%>

<h2 style="color:red;text-align:center;">
    Error: <%= e.getMessage() %>
</h2>

<%
}
%>

</table>

<div class="back">
    <a href="recruiterDashboard.jsp">
        Back to Dashboard
    </a>
</div>

</body>
</html>