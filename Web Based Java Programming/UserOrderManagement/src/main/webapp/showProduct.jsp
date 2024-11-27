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
		<h1>Select Product</h1>
	</div>
	<div>
		<form action="addorshowcart">

			<table>

				<tr>
					<th></th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
				</tr>

				<c:forEach var="p" items="${plist}">

					<tr>
						<td><input type="checkbox" name="prod" value="${p.id}" id="${p.id}"></td>
						<td>${p.name}</td>
						<td>${p.price}</td>
						<td><input type="number" name="p${p.id}" id="${p.id}"></td>
					</tr>

				</c:forEach>

				<tr>
					<td colspan="2"><button type="submit" name="btn" id="add"
							value="add">Add to Cart</button></td>
					<td colspan="2">
						<button type="submit" name="btn" id="show" value="show">Show
							Cart</button>
					</td>
				</tr>

			</table>

		</form>
	</div>
</body>
</html>