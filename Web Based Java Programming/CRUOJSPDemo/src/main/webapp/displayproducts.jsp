<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.List,com.demo.beans.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Product> plist = (List<Product>) request.getAttribute("plist");
	%>
	<table border=2>
		<tr>
			<th>Product id</th>
			<th>Product name</th>
			<th>Product quantity</th>
			<th>Product price</th>
			<th>Product Expiry date</th>
			<th>Product cid</th>
			<th>actions</th>
		</tr>
		<%
		for (Product p : plist) {
		%>
		<tr>
			<td><%=p.getId() %></td>
			<td><%=p.getName() %></td>
			<td><%=p.getQuantity()%></td>
			<td><%=p.getPrice()%></td>
			<td><%=p.getExpiryDate()%></td>
			<td><%=p.getCid()%></td>
			<td><a href="editprod?id=<%=p.getId()%>">edit</a>/ <a
				href="deletprod?id=<%=p.getId()%>">delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="addproduct.jsp">Add new product</a>
</body>
</html>