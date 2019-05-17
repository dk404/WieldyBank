<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./Styles/password.css" type="text/css">
<link rel="stylesheet" href="./Styles/Themess.css">
<link rel="stylesheet" href="./Styles/Fontscss.css">
</head>
<body 
>
<style>
*{
	font-family:Times New Roman;
	margin:0;
	padding:0;
	
}
.main{
	width:100%;
	height:100%;	
}
.logo{
	
   margin-top:-10px;
    margin-left: 1px;
    height: 100px;
    transition: .5%;
    background-color:#0001; 
    filter: saturation (90 deg);
}

nav ul li{
	   float:left;
	   width:170px;
	   height:40px;
	   background-color:#0000;   
	 opacity:0.8;
	 line-height:100px;
	 text-align:center;
	display:inline-table;
	transition:0.5s all;
	font-size: 20px;
}
nav ul li ul li{
	
	line-height:40px;
	height:40px;
	
}
nav ul li ul li a{
	display: inline-table;
	}
nav ul{
	margin:0px;
	padding:0px;
	list-style:none;
	float:right;
}
 
nav ul li a{
	text-decoration: none;
	color:black;
	padding:10px;
	font-size: medium;
    font-family: fantasy;
}
nav ul li:hover{
	background-color:#eee3ca;
}
nav ul li ul li{
	display: none;
}
nav ul li:hover ul li{
	display: block;
}
</style>
<body style=
"background-image: url(./Images/bgimage.jpg);
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;">
<div class="main">
<nav>
<div class="logo">
<img src="./Images/logo.png" alt="No image"  width="150" height="100px">
<ul>
     <li><a href="#">My Profile</a></li>
     <li><a href="#">Mini Statement</a></li>
<li><a href="#">Transaction</a>
<ul>
  <li><a href="Login.jsp">NEFT</a></li>
   <li><a href="#">IMPS</a></li>
</ul>
</li>
<li><a href="#">Loan</a></li>
<li><a href="#">Update?</a></li>
<li><a href="#">Logout</a></li>
</ul>
</nav>

<form action="Passwordservlet" method="post">
<div class="logins-box">
<h1 align="center">Change Password</h1></center> 

	<div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Enter your userid" name="userid">
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Current Password" name="cpwd">
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="New Password" name="npwd">
  </div>
  
 <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Confirm Password" name="n1pwd">
  </div>

  <input type="submit" class="btn" value="Submit">
</div>
</form>
  </body>
</html>
