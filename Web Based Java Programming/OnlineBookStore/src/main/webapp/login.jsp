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
			<h1>login Form</h1>
		</div>
		<div>
			<hr>
		</div>
	</div>
	<div>
		<form action="validateUser" method="post">
			<table>
				<tr>
					<td><label for="username">Enter username : </label></td>
					<td><input type="text" name="username" id="username"></td>
				</tr>
				<tr>
					<td><label for="password">Enter password : </label></td>
					<td><input type="password" name="password" id="password"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" name="btn" id="btn" value="validate">Login</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>