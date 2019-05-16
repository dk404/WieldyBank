<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./Styles/password.css" type="text/css">
</head>
<body>
<style>
body{
	background-image: url("./Images/final.jpg");
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
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





