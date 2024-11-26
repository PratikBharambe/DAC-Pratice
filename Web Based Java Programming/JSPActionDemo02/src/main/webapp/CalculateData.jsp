<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Perform Addition</title>
</head>
<body>

	<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	String msg = "Addtion is : " + (n1 + n2);
	%>
	
	<jsp:forward page="DisplayAddtion.jsp">
		<jsp:param name="msg" value="<%= msg %>"/>
	</jsp:forward>

</body>
</html>