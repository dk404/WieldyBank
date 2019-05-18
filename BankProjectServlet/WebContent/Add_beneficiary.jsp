<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add_Beneficiary</title>
<style>
.sub{
border:none;
text-decoration: underline;
}

.tdd
{
text-align: left;
width: 20%;
}
</style>
</head>
<body>
<form name="AddBef" action="Addbeneficiaryservlet" method="post" onsubmit="return doValidate()">
<table align="center" cellpadding="1">
 
<tr><td>Beneficiary Short Name</td> <td><input type="text" name="b_sname">
<tr><td>Beneficiary Name</td> <td><input type="text" name="b_name">
<tr><td>Beneficiary Account Number</td>  <td><input type="text" name="b_accno"></td></tr>
<tr><td>Confirm Account Number</td>  <td><input type="text" name="c_accno"></td></tr>
<tr><td>IFSC Code</td>  <td><input type="text" name="ifsc"></td></tr>
<tr><td>Bank Name</td>  <td><input type="text" name="bankname"></td></tr>
<tr><td>Branch Name</td>  <td><input type="text" name="branchname"></td></tr>
<tr><td><input type="submit" value="Submit" class="sub" name="action"></td>
<td><input type="button" value="Clear" class="sub"></td></tr>
</table>
</form>
</body>
<script type="text/javascript">

function doValidate()
{
var b_sname=document.forms["AddBef"]["b_sname"];
var bef_name=document.forms["AddBef"]["bef_Name"];
var acc_type=document.forms["AddBef"]["acc_type"];
var bef_accNo=document.forms["AddBef"]["bef_AccNo"];
var con_accNo=docuemnt.forms["AddBef"]["Con_AccNo"];
var ifsc=document.forms["AddBef"]["ifsc"];



if (bef_name.value == "") {
	window.alert("Please Enter Beneficiary Name");
	bef_name.focus();
	return false;
}

if (acc_type.value == "") {
	window.alert("Please Enter Beneficiary Account Type");
	acc_type.focus();
	return false;
}

if(bef_accNo.value == ""){
	window.alert("Please Enter Beneficiary Account Number");
	bef_accNo.focus();
	return false;
}

if (con_accNo.value == "") {
	window.alert("Please Enter Confirm Account Number");
	con_accNo.focus();
	return false;
}




if (ifsc.value == "") {
	window.alert("Please Enter Beneficiary IFSC");
	ifsc.focus();
	return false;
}


return true;
}

</script>
</html>