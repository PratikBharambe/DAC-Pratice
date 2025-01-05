<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body class="m-3 p-4">
	<div>
		<div>
			<h1>Select Products to add to cart</h1>
		</div>
		<div>
			<hr>
		</div>
	</div>
	<div>
		<table class="table">
			<thead>
				<tr>
					<th></th>
					<th>Name</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${plist}">
					<tr>
						<td><input type="checkbox" name="prod" value="${p.id}"
							id="${p.id}"></td>
						<td>${p.name}</td>
						<td>${p.qty}</td>
						<td>${p.price}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2"><button type="submit" name="btn" id="add"
							value="add" class="btn btn-outline-success">Add to Cart</button></td>
					<td colspan="2">
						<button type="submit" name="btn" id="show" value="show" class="btn btn-outline-primary">Show
							Cart</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>