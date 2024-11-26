<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display addition page</title>
</head>
<body>

	<h2>Number 01 : <%= request.getParameter("num1") %></h2><br>
	<h2>Number 02 : <%= request.getParameter("num2") %></h2><br>
	<h2>Message : <%= request.getParameter("msg") %></h2><br>
	
</body>
</html>