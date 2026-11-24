<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

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
h2{
    color:#1e3a8a;
}

.btn{
    display:inline-block;
    background:#1e3a8a;
    color:white;
    padding:12px 20px;
    text-decoration:none;
    border-radius:8px;
    margin-bottom:10px;
    min-width:180px;
    text-align:center;
    font-weight:bold;
}

.btn:hover{
    background:#2563eb;
}

h2{
    color:#1e3a8a;
}

</style>

</head>
<body>

<div class="header">
    <h1>CRMS Admin Dashboard</h1>
</div>

<div class="container">

<div class="card">

<div style="display:flex; justify-content:space-between; align-items:center;">
    <h2>Welcome Admin</h2>

    
</div>

<p>
Manage students, placements and system records.
</p>
<br><br>

<a href="viewStudents.jsp" class="btn">
    View All Students
</a>
<br><br>

<a href="addCompany.jsp" class="btn">
    Add Company
</a>

<br><br>

<a href="viewCompany.jsp" class="btn">
    View Companies
</a>

<hr style="margin:30px 0;">

<a href="LogoutServlet"
   class="btn"
   style="background:#dc2626;">
   Logout
</a>
<br><br>



</div>

</div>

</body>
</html>