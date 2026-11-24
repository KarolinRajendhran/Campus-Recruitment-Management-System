<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRMS - Campus Recruitment Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#f4f6f9;
}

/* NAVBAR */

.navbar{
    background:#071633;
    padding:20px 70px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    color:#4ade80;
    font-size:40px;
    font-weight:bold;
}

.nav-links a{
    color:white;
    text-decoration:none;
    margin-left:35px;
    font-size:18px;
    font-weight:600;
}

.nav-links a:hover{
    color:#60a5fa;
}

/* HERO */

.hero{
    height:100vh;

    background:
    linear-gradient(
        rgba(0,0,0,0.65),
        rgba(0,0,0,0.65)
    ),
    url("images/placement-bg.jpg");

    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
}

.hero-content h1{
    font-size:75px;
    margin-bottom:20px;
}

.hero-content p{
    font-size:24px;
    margin-bottom:40px;
}

.btn{
    text-decoration:none;
    background:#2563eb;
    color:white;
    padding:15px 35px;
    border-radius:10px;
    margin:10px;
    font-size:18px;
    font-weight:bold;
}

.btn:hover{
    background:#1d4ed8;
}

/* STATS */

.stats{
    display:flex;
    justify-content:center;
    gap:30px;
    padding:80px 40px;
}

.card{
    background:white;
    width:250px;
    padding:30px;
    text-align:center;
    border-radius:15px;
    box-shadow:0 0 15px rgba(0,0,0,0.1);
}

.card h2{
    color:#1e3a8a;
    font-size:40px;
}

/* FEATURES */

.features{
    padding:80px 40px;
    text-align:center;
}

.features h1{
    color:#1e3a8a;
    margin-bottom:40px;
}

.feature-box{
    display:flex;
    justify-content:center;
    gap:25px;
    flex-wrap:wrap;
}

.feature{
    width:260px;
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 0 15px rgba(0,0,0,0.1);
}

/* ABOUT */

.about{
    padding:80px;
    background:white;
    text-align:center;
}

.about h1{
    color:#1e3a8a;
    margin-bottom:20px;
}

.about p{
    max-width:900px;
    margin:auto;
    line-height:1.8;
    font-size:18px;
}

/* FOOTER */

.footer{
    background:#071633;
    color:white;
    text-align:center;
    padding:25px;
}

</style>
</head>

<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">CRMS</div>

<div class="nav-links">

<a href="index.jsp">Home</a>

<a href="company.jsp">Companies</a>
<a href="register.jsp">
Student Register
</a>
<a href="recruiterRegister.jsp">
    Recruiter Register
</a>

<a href="#about">About</a>

<a href="#contact">Contact</a>

<a href="login.jsp">Login</a>

</div>

</div>

<!-- HERO -->

<div class="hero">

<div class="hero-content">

<h1>Campus Recruitment<br>Management System</h1>

<p>
Connecting Students With Career Opportunities
</p>

<a href="login.jsp" class="btn">Student Login</a>

<a href="admin.jsp" class="btn">Admin Login</a>
<a href="recruiterLogin.jsp" class="btn">
    Recruiter Login
</a>

</div>

</div>

<!-- STATS -->

<div class="stats">

<div class="card">
<h2>150+</h2>
<p>Students Registered</p>
</div>

<div class="card">
<h2>30+</h2>
<p>Recruiting Companies</p>
</div>

<div class="card">
<h2>80+</h2>
<p>Successful Placements</p>
</div>

</div>

<!-- FEATURES -->

<div class="features">

<h1>Our Features</h1>

<div class="feature-box">

<div class="feature">
<h3>Student Registration</h3>
<p>Maintain student details and profiles.</p>
</div>

<div class="feature">
<h3>Company Management</h3>
<p>Add and manage recruiting companies.</p>
</div>

<div class="feature">
<h3>Eligibility Checker</h3>
<p>Filter companies based on CGPA.</p>
</div>

<div class="feature">
<h3>Placement Tracking</h3>
<p>Monitor student placement status.</p>
</div>

</div>

</div>

<!-- ABOUT -->

<div class="about" id="about">

<h1>About CRMS</h1>

<p>
Campus Recruitment Management System is a web-based platform
designed to simplify placement activities by connecting students
with recruiters. It helps manage student records, company details,
eligibility criteria and placement tracking efficiently.
</p>

</div>

<!-- FOOTER -->

<div class="footer" id="contact">

<p>© 2026 Campus Recruitment Management System</p>

</div>

</body>
</html>