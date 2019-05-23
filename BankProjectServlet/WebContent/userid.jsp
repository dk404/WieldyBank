<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="./Styles/password.css" type="text/css">
<link rel="stylesheet" href="./Styles/Themess.css">
<link rel="stylesheet" href="./Styles/Fontscss.css">
</head>
<body>
<style>
body{
background-image: url("./Images/final.jpg");
   background-size:cover;
  background-position: inherit;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
<div class="logo">
<img src="./Images/logo.png">

<form action="useridservlet" method="post">
<div class="logins-box">
<h1 align="center">User-ID Update </h1></center> 

	  
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Enter Account Number" name="accountnumber">
  </div>
     
  
  <div class="textbox">
         <i class="fas fa-user"></i>
    <input type="text" placeholder="Current User-ID" name="userid">
  </div>

  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="New User-ID" name="nuserid">
  </div>
  
 <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Confirm User-ID" name="n1userid">
  </div>

  <input type="submit" class="btn" value="Submit">
</div>
</form>
  </body>
</html>




