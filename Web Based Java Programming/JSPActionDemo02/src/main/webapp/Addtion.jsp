<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add two numbers</title>
</head>
<body>
	<div>
        <div>
            <div><h1>Addition Demo</h1></div>
            <div><hr></div>
        </div>
        <div>
            <form action="CalculateData.jsp">
                <table>
                    <tr>
                        <td><label for="num1">Enter number 01 : </label></td>
                        <td><input type="number" name="num1" id="num1"></td>
                    </tr>
                    <tr>
                        <td><label for="num2">Enter number 02 : </label></td>
                        <td><input type="number" name="num2" id="num2"></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="btn" id="btn">Perform Addition</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>