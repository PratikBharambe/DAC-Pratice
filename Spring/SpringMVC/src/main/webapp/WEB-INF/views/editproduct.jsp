<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>
</head>
<body>
	<form action="/SpringMVC/product/updateProduct" method="post">
	
		Product Id :
		 <input type="text" name="id" id="id" value="${p.id}" readonly><br>

		Product Name :
		 <input type="text" name="name" id="pname" value="${p.name}"><br>

		Product Qty :
		 <input type="text" name="qty" id="qty" value="${p.qty}"><br>

		Product Price :
		 <input type="text" name="price" id="price" value="${p.price}"><br>

		Product Expdate :
		 <input type="text" name="expiryDate" id="expiryDate" value="${p.expiryDate}"><br>

		Product cid :
		 <input type="text" name="cid" id="cid" value="${p.cid}"><br>

		<button type="submit" name="btn" id="insert">Update Product</button>
	
	</form>
</body>
</html>