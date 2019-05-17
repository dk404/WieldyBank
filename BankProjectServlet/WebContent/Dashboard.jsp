<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navigation bar</title>
<!-- <link rel="stylesheet"  href="./Styles/dash.css" type="text/css"> -->
</head>
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
"background-image: url(./Images/i1.jpg);
   background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;">
<div class="main">
<nav>
<div class="logo">
<img src="./Images/logo.png" alt="No image"  width="150" height="100px">
<ul>
     <li><a href="#">Home</a></li>
     <li><a href="#">Find Branch</a>
<ul> 
<li><a href="#">Andhra Pradesh</a></li>
<li><a href="#">Karnataka</a></li>
   <li><a href="#">Kerala</a></li>
    <li><a href="#">Tamil Nadu</a></li>
</ul>
</li>
<li><a href="#">Personal Banking</a>
<ul>
  <li><a href="Login.jsp">Accounts</a></li>
   <li><a href="#">Insta Bill Payment</a></li>
    <li><a href="#">Loans</a></li>
        <li><a href="#">Transactions</a></li>
</ul>
</li>
<li><a href="#">About us</a></li>
<li><a href="#">Contact us</a></li>
</ul>
</nav>
</body>
</div>
</div>
</html>