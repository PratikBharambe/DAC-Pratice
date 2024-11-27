<%@page import="com.demo.beans.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<h2>
			User Name : ${user.username} <br> 
			Date : <%=LocalDate.now()%>
		</h2>
	</div>

	<div>

		<table border="2">

			<tr>
				<th>Product id</th>
				<th>Product name</th>
				<th>Order quantity</th>
				<th>Product Price</th>
				<th>Amount</th>
			</tr>

			<%
			double amt = 0;
			List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
			for (CartItem c : cart) {
			%>

			<tr>
				<td><%=c.getPid()%></td>
				<td><%=c.getPname()%></td>
				<td><%=c.getOrderQty()%></td>
				<td><%=c.getPrice()%></td>
				<td><%=c.getPrice() * c.getOrderQty()%></td>
			<tr>
				<%
				amt += c.getPrice() * c.getOrderQty();
				}
				%>
			
			<tr>
				<th colspan="4" align="right">Total bill amount</th>
				<td><%=amt%></td>
			</tr>

		</table>
		
<!-- 		<a href="catagories">add more products</a> -->
		
		<form action="catagories">
			<button type="submit" name="btn" id="btn">Add More Products</button>
		</form>
		
		<form action="payment.jsp">
			<button type="submit" name="btn" id="btn">Payment</button>
		</form>
		
	</div>

</body>
</html>