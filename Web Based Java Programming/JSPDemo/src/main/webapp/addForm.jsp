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
            <div>
                <h1>Simple Calculator</h1>
            </div>
            <div><hr></div>
        </div>
        <div>
            <form action="Calculate.jsp" method="post">
                <table>
                    <tr>
                        <td><label for="num1">Enter numbger 1 : </label></td>
                        <td><input type="number" name="num1" id="num1"></td>
                    </tr>
                    <tr>
                        <td><label for="num2">Enter number 2 : </label></td>
                        <td><input type="number" name="num2" id="num2"></td>
                    </tr>
                </table>
                <div>
                    <button type="submit" name="btn" value="add" id="btn">Addition</button>
                    <button type="submit" name="btn" value="fact" id="btn">Factorial</button>
                </div>
            </form>
        </div>
    </div>
  </body>
</html>