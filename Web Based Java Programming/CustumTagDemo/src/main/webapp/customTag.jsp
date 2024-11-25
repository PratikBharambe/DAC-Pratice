<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="pratik" uri="/myTagLib"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Tag demo</title>
</head>
<body>

	<%
	String firstName = "Pratik";
	String lastName = "Bharambe";
	%>

	<h1>Custom Tag Demo</h1>

	<pratik:hello firstName="<%=firstName%>" lastName="<%=lastName%>"></pratik:hello>

	<br>
	<br>

	<pratik:addition
		num1='<%=Integer.parseInt(request.getParameter("num1"))%>'
		num2='<%=Integer.parseInt(request.getParameter("num2"))%>'></pratik:addition>

</body>
</html>