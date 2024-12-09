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

	<table border="1">

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
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.qty}</td>
				<td>${p.price}</td>
				<td>${p.expiryDate}</td>
				<td>${p.cid}</td>
				<td><a href="editproduct/${p.id}">edit</a>&nbsp;/&nbsp; 
				<a href="deleteproduct/${p.id}">delete</a></td>
			</tr>
		</c:forEach>

	</table>
	<br>
	<form action="addnewproduct" method="post">
		<button type="submit" name="btn" id="add">Add New Product</button>
	</form>

</body>
</html>