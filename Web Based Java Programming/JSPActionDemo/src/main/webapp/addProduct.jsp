<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new product</title>
</head>
<body>
	<div>
        <div>
            <div><h1>Add new product</h1></div>
            <div><hr></div>
        </div>
        <div>
            <form action="AddData.jsp">
                <table>
                    <tr>
                        <td><label for="id">Enter id : </label></td>
                        <td><input type="number" name="id" id="id"></td>
                    </tr>
                    <tr>
                        <td><label for="name">Enter name : </label></td>
                        <td><input type="text" name="name" id="name"></td>
                    </tr>
                    <tr>
                        <td><label for="qty">Enter quantity : </label></td>
                        <td><input type="number" name="qty" id="qty"></td>
                    </tr>
                    <tr>
                        <td><label for="price">Enter price : </label></td>
                        <td><input type="number" name="price" id="price"></td>
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