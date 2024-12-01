<%@page import="com.demo.beans.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books cart</title>
</head>
<body>

	<div>
		<h2>User Name : ${user.username}</h2>
		<h2>
			Date :
			<%=LocalDate.now()%></h2>
	</div>

	<div>
		<table>
			<tr>
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Book Order Quantity</th>
				<th>Book Price</th>
				<th>Amount</th>
			</tr>

			<%
			double amount = 0;
			List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
			for (CartItem c : cart) {
			%>

			<tr>
				<td><%=c.getPid()%></td>
				<td><%=c.getPname()%></td>
				<td><%=c.getOrderQty()%></td>
				<td><%=c.getPrice()%></td>
				<td><%=c.getPrice() * c.getOrderQty()%></td>
			</tr>

			<%
			amount += c.getPrice() * c.getOrderQty();
			}
			%>

			<tr>
				<td colspan="4" align="right">Total Amount</td>
				<td><%=amount%></td>
			</tr>

		</table>

		<form action="catagories">
			<button type="submit" name="btn" id="btn">Add More Books</button>
		</form>
		<form action="payment.jsp">
			<button type="submit" name="btn" id="btn">Payment</button>
		</form>

	</div>

</body>
</html>