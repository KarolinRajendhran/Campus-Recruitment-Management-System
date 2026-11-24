<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>

body{
    margin:0;
    font-family:Arial,sans-serif;
    background:linear-gradient(135deg,#1e3a8a,#0f172a);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.container{
    background:white;
    width:400px;
    padding:40px;
    border-radius:15px;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
}

h1,h2{
    text-align:center;
    color:#1e3a8a;
}

input{
    width:100%;
    padding:10px;
    margin:10px 0;
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

</style>

</head>
<body>

<div class="container">

<h1>CRMS</h1>
<h2>Admin Login</h2>

<form action="AdminLoginServlet" method="post">

<input type="text"
       name="username"
       placeholder="Enter Username"
       required>

<input type="password"
       name="password"
       placeholder="Enter Password"
       required>

<button type="submit">Login</button>

</form>

</div>

</body>
</html>