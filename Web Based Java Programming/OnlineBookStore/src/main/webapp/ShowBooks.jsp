<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Books</title>
</head>
<body>
	<div>
		<div>
			<h1>Select Books</h1>
		</div>
		<div>
			<hr>
		</div>
	</div>
	<div>
		<form action="addtocart" method="post">

			<table>
				<tr>
					<th></th>
					<th>Book Name</th>
					<th>Book Auther Name</th>
					<th>Book Price</th>
					<th>Enter Quantity</th>
				</tr>
				<c:forEach var="b" items="${blist}">

					<tr>
						<td><input type="checkbox" name="book" value="${b.id}"
							id="${b.id}"></td>
						<td>${b.name}</td>
						<td>${b.auther}</td>
						<td>${b.price}</td>
						<td><input type="number" name="b${b.id}" id="${b.id}"></td>
					</tr>

				</c:forEach>

				<tr>
					<td colspan="2"><button type="submit" name="btn" id="add"
							value="add">Add to Cart</button></td>
					<td colspan="3">
						<button type="submit" name="btn" id="show" value="show">Show
							Cart</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>