<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Company</title>

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
    width:450px;
    padding:35px;
    border-radius:15px;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
}

h1{
    text-align:center;
    color:#1e3a8a;
    margin-bottom:25px;
}

.input-group{
    margin-bottom:15px;
}

label{
    display:block;
    font-weight:bold;
    margin-bottom:5px;
}

input{
    width:100%;
    padding:10px;
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
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    color:#1e3a8a;
    font-weight:bold;
}

</style>
</head>

<body>

<div class="container">

<h1>Add Company</h1>

<form action="AddCompanyServlet" method="post">

<div class="input-group">
<label>Company Name</label>
<input type="text" name="companyName" required>
</div>

<div class="input-group">
<label>Role</label>
<input type="text" name="role" required>
</div>

<div class="input-group">
<label>Package (LPA)</label>
<input type="text" name="package" required>
</div>

<div class="input-group">
<label>Eligibility CGPA</label>
<input type="text" name="cgpa" required>
</div>

<button type="submit">Add Company</button>

</form>

<a href="adminDashboard.jsp" class="back">
    &larr; Back to Dashboard
</a>
</div>

</body>
</html>