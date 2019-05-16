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
<body 
>
<style>
body{
background-image: url("./Images/final.jpg");
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
<form>
<div class="logo">
<img src="./Images/logo.png">
<div class="login-box">
<img src="./Images/avatar.png" class="avatar">

<h3 align="center">Login Here</h3> 
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Username" name="userid">  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Password" name="password">
  </div>

  <input type="submit" class="btn" value="Sign in">
  <table cellspacing="15"><td><a align="left" href="#">Forgot password?</a><span></td><td><a href="Registration.jsp"> New Register?</a></span></td>
 </table>
 </div>
</form>
  </body>
</html>
