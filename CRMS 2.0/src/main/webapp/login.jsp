<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:linear-gradient(135deg,#0f172a,#1e3a8a);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.container{
    background:white;
    padding:40px;
    width:400px;
    border-radius:15px;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
}

.logo{
    text-align:center;
    color:#1e3a8a;
}

.subtitle{
    text-align:center;
    color:gray;
    margin-bottom:20px;
}

.input-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:5px;
    font-weight:bold;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:8px;
}

button{
    width:100%;
    padding:12px;
    background:#1e3a8a;
    color:white;
    border:none;
    border-radius:8px;
    cursor:pointer;
}

button:hover{
    background:#2563eb;
}

</style>

</head>
<body>

<div class="container">

<h1 class="logo">CRMS</h1>

<p class="subtitle">
Campus Recruitment Management System
</p>

<h2>Student Login</h2>

<form action="LoginServlet" method="post">

<div class="input-group">
<label>Email</label>
<input type="email" name="email" required>
</div>

<div class="input-group">
<label>Password</label>
<input type="password" name="password" required>
</div>

<button type="submit">Login</button>

</form>

</div>

</body>
</html>