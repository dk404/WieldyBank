<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home loan Eligibility</title>
<script>
function check()
{

	var x=document.getElementById("s").value;
	if(x<25000)
	{
	alert("not eligible");
	}
	else
	{
	alert("you are eligible to apply loan");
	}

	}



</script>




</head>
<body style="background-image: url(./image/mainpage.jpg);
webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;

width: 100%;
height: auto;
position: fixed;
min-height: 100%;
min-width: 1024px">
<table cellpadding="10" cellsapcing="5" align="center">
<tr><td align="center"><h1>Home Loan Eligibility </h1></td></tr>
<tr><td >Age of Applicant<td>above 18 years</td></tr>
<tr><td >Work Experience for Salaried<td>13 years and above</td></tr>

<tr><td >Business Stability for Self Employed<td>5 years and above</td></tr>


<tr><td >Minimum CIBIL Score<td>650</td></tr>

<tr><td >Maximum Loan on Property Value<td>Up to 90%</td></tr>


<tr><td >Maximum EMI as percent of income<td>65%</td></tr>


<tr><td >Eligibility with Co-applicant<td>Up to 3 earning family members may be added to get higher loan eligibility</td></tr>
<tr><td>name:<td><input type="text" id="name"></td></tr>
<tr><td>salary:<td><input type="number" id="s"></td></tr>
<tr><td>Company name:<td><input type="text" name="c"></td></tr>
<tr><td><center><input type="button" value="Eligiblity check" onclick="check()"></center></td></tr>


</table>



<a href="loanhome.jsp"><input type="button" name="button" value="back"></a>



</body>
</html>