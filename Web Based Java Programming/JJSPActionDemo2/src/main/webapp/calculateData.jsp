<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CalculateData.jsp</title>
</head>
<body>
	<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	String msg = "Addition is : " + (n1 + n2);
	%>
	<jsp:forward page="displaydata.jsp">
		<jsp:param value="<%= msg %>" name="msg"/>
	</jsp:forward>
</body>
</html>