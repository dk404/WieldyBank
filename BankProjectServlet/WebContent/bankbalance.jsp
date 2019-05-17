<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Balance</title>
<h2><marquee>Welcome to Wieldy Bank</marquee></h2>
</head>
<body>
<form action="userid.jsp">
<table align="center" cellpadding="2">
<tr><td>Account Number:</td><td><%=request.getAttribute("accountnumber") %></td></tr>
<tr><td>Balance Amount:</td><td><%=request.getAttribute("account_balance") %></td></tr>
<tr><td><input type="submit" value="Okay"><td></tr>

</table>

</form>
</body>
</html>