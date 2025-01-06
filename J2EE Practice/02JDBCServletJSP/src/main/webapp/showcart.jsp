<%@page import="java.util.List"%>
<%@page import="com.demo.beans.CartItem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1>Cart Items</h1>
        </div>
        <hr>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
                    double total = 0;
                    if (cart != null) {
                        for (CartItem c : cart) {
                %>
                <tr>
                    <td><%= c.getPname() %></td>
                    <td><%= c.getOrderQty() %></td>
                    <td><%= c.getPrice() %></td>
                    <td><%= c.getOrderQty() * c.getPrice() %></td>
                </tr>
                <%
                            total += c.getOrderQty() * c.getPrice();
                        }
                    }
                %>
                <tr>
                    <th colspan="3" class="text-end">Total bill amount</th>
                    <td><%= total %></td>
                </tr>
            </tbody>
        </table>
        <div class="d-flex justify-content-between">
            <form action="catagories">
                <button type="submit" class="btn btn-primary" name="btn" id="btn">Add More Products</button>
            </form>
            <form action="payment.jsp">
                <button type="submit" class="btn btn-success" name="btn" id="btn">Payment</button>
            </form>
        </div>
    </div>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
