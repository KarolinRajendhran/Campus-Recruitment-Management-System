<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recruiter Registration</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:linear-gradient(to right,#1e3c72,#2a5298);
}

.container{
    width:450px;
    margin:60px auto;
    background:white;
    padding:40px;
    border-radius:15px;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
}

h1{
    text-align:center;
    color:#1e3a8a;
}

input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:8px;
    box-sizing:border-box;
}

button{
    width:100%;
    padding:12px;
    background:#1e3a8a;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#2563eb;
}

.back{
    text-align:center;
    margin-top:15px;
}

.back a{
    text-decoration:none;
    color:#1e3a8a;
    font-weight:bold;
}

</style>

</head>
<body>

<div class="container">

<h1>Recruiter Registration</h1>

<form action="RecruiterRegisterServlet" method="post">

    <input type="text"
           name="companyName"
           placeholder="Company Name"
           required>

    <input type="email"
           name="email"
           placeholder="Email"
           required>

    <input type="password"
           name="password"
           placeholder="Password"
           required>

    <input type="text"
           name="role"
           placeholder="Role Hiring For"
           required>

    <button type="submit">
        Register Recruiter
    </button>

</form>

<div class="back">
    <a href="index.jsp">← Back to Home</a>
</div>

</div>

</body>
</html>