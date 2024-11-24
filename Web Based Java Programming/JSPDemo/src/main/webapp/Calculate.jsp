<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!public int myfactorial(int n) {
		int f = 1;
		for (int i = 1; i <= n; i++) {
			f = f * i;
		}
		return f;
	}%>

	<%
	String opr = request.getParameter("btn");

	if (opr.equals("add")) {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		int add = num1 + num2;
	%>
	Addition is : <%=add%>
	<%
	}

	if (opr.equals("fact")) {
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int facto = myfactorial(num1);
	%>
	factorial is :
	<%=facto%>
	<%
	}
	%>
</body>
</html>