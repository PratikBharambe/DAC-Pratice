<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.demo.beans.Product,java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
        <div>
            <div><h1>edit Product</h1></div>
            <div><hr></div>
        </div>
        <div>
        <%
   			Product p=(Product)request.getAttribute("prod");
		%>
            <form action="updateprod" method="post">
                <table>
                	<tr>
                        <td><label for="id">Product id : </label></td>
                        <td><input type="text" name="id" id="id" value="<%= p.getId() %>" readonly></td>
                    </tr>
                    <tr>
                        <td><label for="name">Enter Product Name : </label></td>
                        <td><input type="text" name="name" id="name" value="<%= p.getName() %>"></td>
                    </tr>
                    <tr>
                        <td><label for="quantity">Enter Quantity : </label></td>
                        <td><input type="number" name="quantity" id="quantity" value="<%= p.getQuantity() %>"></td>
                    </tr>
                    <tr>
                        <td><label for="price">Enter Price : </label></td>
                        <td><input type="number" name="price" id="price" value="<%= p.getPrice() %>"></td>
                    </tr>
                    <tr>
                        <td><label for="date">Select Expiry Date : </label></td>
                        <td><input type="text" name="date" id="date" value="<%= p.getExpiryDate() %>"></td>
                    </tr>
                    <tr>
                        <td><label for="cid">Enter Catagory id : </label></td>
                        <td><input type="number" name="cid" id="cid" value="<%= p.getCid() %>"></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="btn" id="btn">Update Product</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>