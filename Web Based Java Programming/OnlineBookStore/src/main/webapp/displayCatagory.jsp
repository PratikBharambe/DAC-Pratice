<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Catagory</title>
</head>
<body>
	<div>
		<div>
			<h1>Select Catagory Page</h1>
		</div>
		<div>
			<hr>
		</div>
	</div>
	<div>
		<form action="getBooksByCatagory" method="post">
			<select name="id" id='id'>
				<c:forEach var="c" items="${clist}">
					<option value="${c.id}">${c.book}</option>
				</c:forEach>
			</select> <br>
			<div>
				<button type="submit" name="btn" id="btn">Show Books</button>
			</div>
		</form>
		<div>
			<a href="showcart.jsp">Show cart</a>
		</div>
	</div>
</body>
</html>