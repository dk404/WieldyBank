<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./Styles/Login.css" type="text/css">
<link rel="stylesheet" href="./Styles/Themess.css">
<link rel="stylesheet" href="./Styles/Fontscss.css">
</head>
<body style="font-family:sans-serif;
text-indent:inherit;
color:white;
font-size:x-large;
min-height: 100%;
min-width: 1024px;
width: 100%;
height: auto;
position: fixed;
top: auto;
left: 0;
background-image: url(Images/final.jpg);
 background-repeat: no-repeat;

 -webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;"
>

<form action="Passwordservlet" method="post">
<div class="login-box">
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
