<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition page</title>
</head>
<body>
	<form action="customTag.jsp">
		<table>
			<tr>
				<td><label for="num1">Enter number 1 : </label></td>
				<td><input type="number" name="num1" id="num1"></td>
			</tr>
			<tr>
				<td><label for="num2">Enter number 2 : </label></td>
				<td><input type="number" name="num2" id="num2"></td>
			</tr>
			<tr>
				<td><button type="submit" name="btn" id="btn" value="add">Perform Addition</button></td>
			</tr>
		</table>
	</form>
</body>
</html>