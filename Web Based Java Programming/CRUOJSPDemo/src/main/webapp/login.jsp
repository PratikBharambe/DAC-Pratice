<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
	<div>
        <div>
            <div>
                <h1>Login Form</h1>
            </div>
            <div>
                <hr>
            </div>
        </div>
        <div>
            <form action="validate" method="post">
                <table>
                    <tr>
                        <td><label for="username">Enter Username : </label></td>
                        <td><input type="text" name="username" id="username" placeholder="username"></td>
                    </tr>
                    <tr>
                        <td><label for="password">Enter Password : </label></td>
                        <td><input type="password" name="password" id="password" placeholder="password"></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="btn" id="btn">Login</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>