<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./Styles/password.css" type="text/css">
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
"background-image: url(./Images/final.jpg);
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
     <li><a href="checkbalance.jsp">Mini Statement</a></li>
<li><a href="#">Transaction</a>
<ul>
  <li><a href="">NEFT</a></li>
   <li><a href="">IMPS</a></li>
</ul>
</li>
<li><a href="loanhome.jsp">Loan</a></li>
<li><a href="#">Update?</a>
<ul>
  <li><a href="Password.jsp">Change Password?</a></li>
   <li><a href="mobile.jsp">Update mobile number</a></li>
      <li><a href="mail.jsp">Update Mail Id</a></li>
   
</ul>
</li>
<li><a href="Logoutservlet">Logout</a></li>
</ul>
</nav>
<form>
<form action="Mailservlet" method="post">
<div class="logins-box">
<h1 align="center">E-mail Update</h1></center> 

	<div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Enter your UserID" name="userid">
  </div>
  <div class="textbox">
    <i class="fas fa-mail-bulk"></i>
    <input type="email" placeholder="Current Email-ID" name="mailid">
  </div>

  <div class="textbox">
    <i class="fas fa-mail-bulk"></i>
    <input type="email" placeholder="New Email-ID" name="nmailid">
  </div>
  <div class="textbox">
    <i class="fas fa-mail-bulk"></i>
    <input type="email" placeholder="New Email-ID" name="n1mailid">
  </div>
   
  <input type="submit" class="btn" value="Submit">
</div>
</form>
  </body>
</html>





