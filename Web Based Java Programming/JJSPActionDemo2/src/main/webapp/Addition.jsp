<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition Page</title>
</head>
<body>
	<div>
		<div>
			<h1>Addition Page</h1>
			<hr>
		</div>
		<div>
			<form action="calculateData.jsp">
				<table>
					<tr>
						<td><label for="num1">Number 01 : </label></td>
						<td><input type="number" name="num1" id="num1"></td>
					</tr>
					<tr>
						<td><label for="num2">Number 02 : </label></td>
						<td><input type="number" name="num2" id="num2"></td>
					</tr>
					<tr>
						<td><button type="submit" id="btn" name="btn" value="add">Addition</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>