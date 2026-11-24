<%@page import="java.sql.*"%>
<%@page import="com.crms.utils.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registered Students</title>

<style>

body{
    font-family:Arial,sans-serif;
    background:#f4f6f9;
    padding:30px;
}

h1{
    text-align:center;
    color:#1e3a8a;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
}

th{
    background:#1e3a8a;
    color:white;
}

th,td{
    border:1px solid #ddd;
    padding:10px;
    text-align:center;
}

</style>

</head>
<body>

<h1>Registered Students</h1>

<table>

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Department</th>
    <th>CGPA</th>
    <th>Skills</th>
    <th>Phone</th>
    <th>Action</th>
</tr>

<%
try{

    Connection con = DBConnection.getConnection();

    Statement st = con.createStatement();

    ResultSet rs = st.executeQuery("SELECT * FROM students");

    while(rs.next()){
%>

<tr>

    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("department") %></td>
    <td><%= rs.getDouble("cgpa") %></td>
    <td><%= rs.getString("skills") %></td>
    <td><%= rs.getString("phone") %></td>
    <td>
    <a href="DeleteStudentServlet?id=<%= rs.getInt("id") %>">
        Delete
    </a>
</td>

</tr>

<%
    }

}catch(Exception e){
    out.println(e);
}
%>

</table>

<br><br>

<a href="recruiterDashboard.jsp">
    Back to Dashboard
</a>

</body>
</html>