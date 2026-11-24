<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recruiter Dashboard</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#f4f6f9;
}

.header{
    background:#1e3a8a;
    color:white;
    padding:20px;
    text-align:center;
}

.container{
    width:80%;
    margin:30px auto;
}

.card{
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
}

.btn{
    display:inline-block;
    background:#1e3a8a;
    color:white;
    padding:12px 20px;
    text-decoration:none;
    border-radius:8px;
    margin:10px;
}

.btn:hover{
    background:#2563eb;
}

</style>

</head>
<body>

<div class="header">
    <h1>Recruiter Dashboard</h1>
</div>

<div class="container">

<div class="card">

<h2>
Welcome
<%= session.getAttribute("companyName") %>
</h2>
<p style="color:red;">
Session Company =
<%= session.getAttribute("companyName") %>
</p>

<p>
Manage recruitment activities here.
</p>

<br>

<a href="eligibleStudents.jsp" class="btn">
    View Eligible Students
</a>

<a href="LogoutServlet" class="btn"
style="background:#dc2626;">
Logout
</a>

</div>

</div>

</body>
</html>