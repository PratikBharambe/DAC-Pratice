<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>
</head>
<body>

	<h1>All Avaliable products</h1>
	<hr>

	<table>

		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Quantity</th>
			<th>Product Price</th>
			<th>Product Expiry Date</th>
			<th>Product Catagory ID</th>
			<th>Action</th>
		</tr>

		<c:forEach var="p" items="${plist}">

			<tr>
				<th>${p.id}</th>
				<th>${p.name}</th>
				<th>${p.qty}</th>
				<th>${p.price}</th>
				<th>${p.epiryDate}</th>
				<th>${p.cid}</th>
				<th>
					<a href="/editproduct/${p.id}">edit</a>
					<a href="/deleteproduct/${p.id}">delete</a>
				</th>
			</tr>

		</c:forEach>

	</table>

</body>
</html>