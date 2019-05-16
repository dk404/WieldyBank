<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Mobilenumber</title>
<link rel="stylesheet" href="./Styles/password.css" type="text/css">
<link rel="stylesheet" href="./Styles/Themess.css">
<link rel="stylesheet" href="./Styles/Fontscss.css">
</head>
<body >
<style>
body{
background-image: url("./Images/final.jpg");
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
<form action="mobileservlet" method="post">
<div class="logins-box">
<h1 align="center">Mobile Number Update </h1></center> 

	<div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Enter your userid" name="userid">
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Current Mobile Number" name="cmob">
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="New Mobile Number" name="n1mob">
  </div>
  
 <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Confirm Mobile Number" name="n2mob">
  </div>

  <input type="submit" class="btn" value="Submit">
</div>
</form>
  </body>
</html>







