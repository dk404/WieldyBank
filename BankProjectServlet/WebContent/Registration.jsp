<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="./Styles/Registrations.css" type="text/css">

<link rel="stylesheet" href="./Styles/w3.css">
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

<form  name="RegForm" method="post" id="register" action="Bankservlet" onsubmit="return doValidate()">  
<div class="logins-box">
<h1 align="center"><b>Sign Up</b></h1></center> 
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="First name" name="firstname">
  </div>
  
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Last name" name="lastname">
  </div>
  <div class="textbox" >
    <i class="fas fa-birthday-cake"></i>
    <input type="date" placeholder="Date of Birth" name="dob">
  </div>
  
   
   <div class="gender">
   <i class="fas fa-user"></i>
   <input type="radio" name="gender" value="M"/>Male
        <input type="radio" name="gender" value="F"/>Female
    </div>
  <div class="textbox">
    <i class="fas fa-home"></i>
    <input type="text" placeholder="Address" name="address">
  </div>
  
  <div class="gender">
    <i class="fas fa-home"></i>
    <select name="idproof" placeholder="select Idproof">
    <option class="gender" value="select">Select</option>
    <option class="textbox" value="Aadhar card">Aadhar card</option>
    <option  class="textbox" value="Voter Id">Voter Id</option>
    <option class="textbox" value="Pan card">Pan Card</option>
    <option class="textbox" value="Driving License">Driving License</option>
    </select>
  </div>
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Enter proofid" name="idnumber">
  </div>
  
  <div class="gender">
    <i class="fas fa-home"></i>
    <select name="branch_location" placeholder="select branch location" >
    <option class="gender" value="select">Select</option>
    <option class="textbox" value="Medavakkam">Medavakkam</option>
    <option  class="textbox" value="Sholinganallur">Sholinganallur</option>
    <option class="textbox" value="Velachery">Velachery</option>
    <option class="textbox" value="Driving License">Driving License</option>
    </select>
  </div>
   <div class="textbox">
    <i class="fas fa-blender-phone"></i>
    <input type="number" placeholder="Mobile Number" name="mobilenumber">
  </div>
  
   <div class="textbox">
    <i class="fas fa-mail-bulk"></i>
  <input type="email" name="mailid" id="name" placeholder="abc@gmail.com" >
  </div>
<input type="submit" class="btn" value="Sign Up">
</div>
</form>
</body>
<script>
function doValidate()
{

var firstname=document.forms["RegForm"]["firstname"];
var lastname=document.forms["RegForm"]["lastname"];
var dob=document.forms["RegForm"]["dob"];
var gender=document.forms["RegForm"]["gender"];
var address=document.forms["RegForm"]["address"];
var idproof=document.forms["RegForm"]["idproof"];
var idnumber=document.forms["RegForm"]["idnumber"];
var mobilenumber=document.forms["RegForm"]["mobilenumber"];
var mailid=document.forms["RegForm"]["mailid"];

if (firstname.value == "") {
	window.alert("Please enter your first name.");
	firstname.focus();
	return false;
}

if (lastname.value == "") {
	window.alert("Please enter your last name.");
	lastname.focus();
	return false;
}



if (dob.value == "") {
	window.alert("Please enter your DOB");
	dob.focus();
	return false;
}

if (gender.value == "") {
	window.alert("Please select gender.");
	gender.focus();
	return false;
}

if (address.value == "") {
	window.alert("Please enter your address.");
	address.focus();
	return false;
}

if (idproof.selectedIndex < 1) {
	window.alert("Please select the idproof.");
	idproof.focus();
	return false;
}

if (idnumber.value == "") {
	window.alert("Please enter your address.");
	address.focus();
	return false;
}

if((idnumber.value).equals("Aadhar card"))
	{
	
	}

if (mobilenumber.value == "") {
	window.alert("Please enter your mobile number.");
	mobilenumber.focus();
	return false;
}

if (mailid.value == "") {
	window.alert("Please enter your mailid.");
	mailid.focus();
	return false;
}
return true;
}
</script>
</html>
