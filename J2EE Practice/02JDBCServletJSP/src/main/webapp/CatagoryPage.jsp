<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body class="m-3 p-4">
	<div>
		<h1>Category Selection Page</h1>
		<hr>
	</div>
	<div>
		<form action="getproducts" method="post">
			<select class="form-select w-25" name="cid" id="cid">
				<option value="0">Select our choice</option>
				<c:forEach var="c" items="${clist}">
					<option value="${c.id}">${c.cname}</option>
				</c:forEach>
			</select> <br> <br>
			<div>
				<button type="submit" class="btn btn-primary" name="btn" id="btn">Show
					Products</button>
			</div>
			<br>
			<div>
				<a href="showcart.jsp" class="btn btn-outline-primary">Show cart</a>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>