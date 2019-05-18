<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<h2><marquee>Welcome to Wieldy Bank</marquee></h2>
</head>
<body>
<form action="NEFT.jsp">
<table align="" cellpadding="2">
<tr><td>Beneficiary Shortname:</td><td><%=request.getAttribute("beneficiary_short_name") %></td></tr>
<tr><td>Beneficiary Name:</td><td><%=request.getAttribute("beneficiary_name") %></td></tr>
<tr><td>Account Number:</td><td><%=request.getAttribute("account_no") %></td></tr>
<tr><td>IFSC code:</td><td><%=request.getAttribute("ifsc_code") %></td></tr>
<tr><td>Bank Name:</td><td><%=request.getAttribute("bank_name") %></td></tr>
<tr><td>Branch Name:</td><td><%=request.getAttribute("branch_name") %></td></tr>
<tr><td><input type="submit" value="Okay"><td></tr>

</table>

</form>
</body>
</html>