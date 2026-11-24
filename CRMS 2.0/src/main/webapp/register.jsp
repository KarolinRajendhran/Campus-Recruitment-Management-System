<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

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
    padding:30px;
    width:400px;
    border-radius:15px;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
}
.logo{
    text-align:center;
    color:#1e3a8a;
    margin-bottom:5px;
}

.subtitle{
    text-align:center;
    color:#666;
    margin-bottom:20px;
}

.title{
    text-align:center;
    color:#1e3a8a;
    margin-bottom:25px;
}
.container h2{
    text-align:center;
    color:#1e3a8a;
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
select{
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
    font-size:16px;
}

button:hover{
    background:#2563eb;
}

</style>

</head>
<body>

<div class="container">
<h1 class="logo">CRMS</h1>
<p class="subtitle">Campus Recruitment Management System</p>

<h2 class="title">Student Registration</h2>
<form action="RegisterServlet" method="post">

<div class="input-group">
<label>Name</label>
<input type="text" name="name" required>
</div>

<div class="input-group">
<label>Email</label>
<input type="email" name="email" required>
</div>

<div class="input-group">
<label>Password</label>
<input type="password" name="password" required>
</div>

<div class="input-group">
<label>Department</label>

<select name="department" required>
    <option value="">Select Department</option>
    <option value="CSE">CSE</option>
    <option value="IT">IT</option>
    <option value="ECE">ECE</option>
    <option value="EEE">EEE</option>
    <option value="MECH">MECH</option>
    <option value="CIVIL">CIVIL</option>
</select>

</div>

<div class="input-group">
<label>CGPA</label>
<input type="text" name="cgpa" required>
</div>

<div class="input-group">
<label>Skills</label>
<input type="text" name="skills" required>
</div>

<div class="input-group">
<label>Phone</label>
<input type="text" name="phone" required>
</div>

<button type="submit">Register</button>

</form>

</div>

</body>
</html>