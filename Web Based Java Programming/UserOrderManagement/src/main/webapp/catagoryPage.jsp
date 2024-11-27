<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>Catagory Selection Page</h1>
		<hr>
	</div>
	<div>
		<form action="getProducts" method="post">
			<select name="cid" id='cid'>
				<c:forEach var="c" items="${clist}">
					<option value="${c.id}">${c.name}</option>
				</c:forEach>
			</select>
			<div>
				<button type="submit" name="btn" id="btn">Show Products</button>
			</div>
			<div>
				<a href="showcart.jsp">Show cart</a>
			</div>
		</form>
	</div>
</body>
</html>