<%
if(session.getAttribute("name") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
%>
<%
String name = (String)session.getAttribute("name");
String department = (String)session.getAttribute("department");
Double cgpa = (Double)session.getAttribute("cgpa");
String skills = (String)session.getAttribute("skills");
String phone = (String)session.getAttribute("phone");
%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

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
    padding:25px;
    border-radius:15px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
}

.card h2{
    color:#1e3a8a;
}

.info{
    margin:15px 0;
    font-size:20px;
}
.logout{
    display:inline-block;
    margin-top:20px;
    padding:10px 20px;
    background:red;
    color:white;
    text-decoration:none;
    border-radius:8px;
}

</style>

</head>
<body>

<div class="header">
    <h1>CRMS Dashboard</h1>
</div>

<div class="container">

<div class="card">

<h2>Welcome Student</h2>

<div class="info">
<strong>Name:</strong> <%= name %>
</div>

<div class="info">
<strong>Department:</strong> <%= department %>
</div>

<div class="info">
<strong>CGPA:</strong> <%= cgpa %>
</div>

<div class="info">
<strong>Skills:</strong><%= skills %> 
</div>

<div class="info">
<strong>Phone:</strong> <%= phone %>
</div>

<a href="LogoutServlet" class="logout">
    Logout
</a>

</div>

</div>

</body>
</html>