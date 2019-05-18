<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<style>
*{
margin:0;
padding:0;
font-family: sans-serif;

}
body{
background-image: url('./Images/final.jpg');
background-position: center;
background-attachment: fixed;
background-size:cover; 
}
.login-box{
background:rgba(0,0,0,0.1);
width:500px;
height:520px;
margin-left:60%;
margin-top: 50px;
border-radius:10px;
}
h1{
text-align:center;
padding-top:20px;
margin-bottom:20px;
}
.inner{
margin-left:40px;
}
.ip{
width:200px;
height:40px;
background:transparent;
border:2px solid #000;
border-radius:5px;
text-align: center;
}
.ip1{
width:200px;
height:40px;
margin-left:10px;
background:transparent;
border:2px solid #000;
border-radius:5px;
text-align: center;
}
.add{
width:420px;
height:40px;
background:transparent;
border:2px solid #000;
border-radius:5px;
text-align: center;
}
.sel{
width:205px;
height:45px;
background:transparent;
border:2px solid #000;
border-radius:5px;
text-align:center;
}
.sellong{
width:205px;
height:45px;
background:transparent;
border:2px solid #000;
border-radius:5px;
}
.btn{
width:420px;
height:45px;
background:#CF3A24;
border: 1px solid transparent;
border-radius: 5px;
font-size: large;
font-weight: bolder;
cursor: pointer;
}
.btn:hover{
background:#2ecc71;
}
::placeholder{
color: #000;
text-align: center;
}
.rad{
margin-left:20px;
}

.cust{
position: absolute;
margin-left:17px;
margin-top:15px;
}
.custa{
position: absolute;
margin-left:24px;
margin-top:15px;
}
select {
	color: #000;
	text-align: center;
	text-align-last: center;
}
#dt{
	color: #000;
	text-align: center;
	text-align-last: center;
}
</style>
</head>
<body>
<form  name="RegForm" action="Bankservlet" method="post" id="register"  onsubmit="return doValidate()">  
<div class="login-box">
<h1><b>Sign Up</b></h1> 
  <div class="inner">
    <i class="fas fa-user cust"></i>
    <input type="text" placeholder="First name" name="firstname" class="ip">
    <i class="fas fa-user custa"></i>
    <input type="text" placeholder="Last name" name="lastname" class="ip1">
  	<br><br>
 	<i class="fas fa-birthday-cake cust"></i>
    <input type="date" placeholder="Date of Birth" name="dob" class="ip" id="dt">
   <input type="radio" name="gender" value="M"  class="rad"/><b>Male</b>
   <input type="radio" name="gender" value="F"/><b>Female</b>

    <br><br>
    <i class="fas fa-home cust"></i>
    <input type="text" placeholder="Address" name="address" class="add">
    <br><br>
    <i class="fas fa-address-card cust"></i>
    <select name="idproof" placeholder="select Idproof" class="sel" >
    <option class="gender" value="select">Select</option>
    <option class="textbox" value="Aadhar card">Aadhar card</option>
    <option  class="textbox" value="Voter Id">Voter Id</option>
    <option class="textbox" value="Pan card">Pan Card</option>
    <option class="textbox" value="Driving License">Driving License</option>
    </select>
    <i class="fas fa-address-card custa"></i>
    
    
    <input type="text" placeholder="Enter proofid" name="idnumber" class="ip1">
  	<br><br>
    <i class="fas fa-map-marked-alt cust"></i>
    <select name="branch_location" placeholder="select branch location" class="sellong" >
    <option class="gender" value="select">Select</option>
    <option class="textbox" value="Medavakkam">Medavakkam</option>
    <option  class="textbox" value="Sholinganallur">Sholinganallur</option>
    <option class="textbox" value="Velachery">Velachery</option>
    <option class="textbox" value="Driving License">Driving License</option>
    </select>
     <i class="fas fa-blender-phone custa"></i>
    <input type="number" placeholder="Deposit Initial Amount" name="account_balance" class="ip1">
  <br><br>
   <i class="fas fa-blender-phone custa"></i>
  <input type="text" name="mobilenumber" id="name" placeholder="Mobile Number" class="add">
 <br><br>
  
    <i class="fas fa-mail-bulk cust"></i>
  <input type="email" name="mailid" id="name" placeholder="abc@gmail.com" class="add">
 <br><br>
<input type="submit" class="btn" value="Sign Up">
</div>
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
	if(!(idproof.value).equals("Aadhar card"))
	{
	if(!(idnumber.value).length()==12)
	window.alert("Enter the valid aadhar card number.");
	idproof.focus();
		
	return false;
	}
	return false;
}

if (idnumber.value == "") {
	window.alert("Please enter your address.");
	address.focus();
	return false;
}



if (mobilenumber.value == "") {
	window.alert("Please enter your mobile number.");
	mobilenumber.focus();
	return false;
}
var phoneno = /^\d{10}$/;
alert(phoneno);
if((mobilenumber.value )==phoneno)
{  
	alert('Not a valid Phone Number');
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

