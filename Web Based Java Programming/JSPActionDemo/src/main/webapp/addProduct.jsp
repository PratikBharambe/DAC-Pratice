<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new product</title>
</head>
<body>
	<form action="addData.jsp">
		<table>
			<tr>
				<td><label for="id">Enter id : </label></td>
				<td><input type="number" name="id" id="id"></td>
			</tr>
			<tr>
				<td><label for="name">Enter Product Name : </label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label for="qty">Enter Quantity : </label></td>
				<td><input type="number" name="qty" id="qty"></td>
			</tr>
			<tr>
				<td><label for="price">Enter Price : </label></td>
				<td><input type="number" name="price" id="price"></td>
			</tr>
			<tr>
				<td><button type="submit" name="btn" id="btn">Add Product</button></td>
			</tr>
		</table>
	</form>
</body>
</html>