<%@page import="java.sql.*"%>
<%@page import="com.crms.utils.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Companies</title>

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

<h1>Available Companies</h1>

<table>

<tr>
<th>ID</th>
<th>Company Name</th>
<th>Role</th>
<th>Package</th>
<th>Eligibility CGPA</th>
</tr>

<%
try{

Connection con = DBConnection.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * FROM companies");

while(rs.next()){
%>

<tr>
<td><%= rs.getInt("company_id") %></td>
<td><%= rs.getString("company_name") %></td>
<td><%= rs.getString("role") %></td>
<td><%= rs.getDouble("package") %></td>
<td><%= rs.getDouble("eligibility_cgpa") %></td>
</tr>

<%
}
}catch(Exception e){
    out.println(e);
}
%>

</table>

<br><br>

<a href="index.jsp">
Back to Home
</a>

</body>
</html>