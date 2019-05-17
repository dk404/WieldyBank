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
<form action="userid.jsp">
<table align="" cellpadding="2">
<tr><td>Account Number:</td><td><%=request.getAttribute("accountnumber") %></td></tr>
<tr><td>User Id:</td><td><%=request.getAttribute("userid") %></td></tr>
<tr><td>Password:</td><td><%=request.getAttribute("password") %></td></tr>
<tr><td><input type="submit" value="Okay"><td></tr>

</table>

</form>
</body>
</html>