<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home loan main page</title>
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
"background-image: url(./Images/mainpage.jpg);
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
<form>
<h1><center>Home Loan</center></h1>
<p>
Getting a home loan from WIELDY Bank is quick and easy. We offer higher eligibility and lower EMIs at attractive interest rates.

Moreover, application processing through our TABLET and Smart phone applications ensures faster approval of your home loan.
</p><center>
<a href="homeloan.jsp"><input type="button" name="button" value="Calculate EMI"></a>
<a href="elihome.jsp"><input type="button" name="button" value="Check eligibility"></a>
<a href="Applyloan.jsp"><input type="button" name="button" value="Apply loan"></a>
</center>
</form>
</body>
</html>