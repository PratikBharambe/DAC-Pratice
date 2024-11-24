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
        <div>
            <div><h1>Add New Product</h1></div>
            <div><hr></div>
        </div>
        <div>
            <form action="addprod" method="post">
                <table>
                    <tr>
                        <td><label for="name">Enter Product Name : </label></td>
                        <td><input type="text" name="name" id="name"></td>
                    </tr>
                    <tr>
                        <td><label for="quantity">Enter Quantity : </label></td>
                        <td><input type="number" name="quantity" id="quantity"></td>
                    </tr>
                    <tr>
                        <td><label for="price">Enter Price : </label></td>
                        <td><input type="number" name="price" id="price"></td>
                    </tr>
                    <tr>
                        <td><label for="date">Select Expiry Date : </label></td>
                        <td><input type="date" name="date" id="date"></td>
                    </tr>
                    <tr>
                        <td><label for="cid">Enter Catagory id : </label></td>
                        <td><input type="number" name="cid" id="cid"></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="btn" id="btn">Add Product</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>