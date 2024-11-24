<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Calculator</title>
</head>

<body>
	<div>
		<div>
			<div>
				<h1>Calculator Using JSP</h1>
			</div>
			<div>
				<hr>
			</div>
		</div>
		<div>
			<form action="" method="post">
				<table>
					<tr>
						<td><label for="num1">Enter Number 1 : </label></td>
						<td><input type="number" name="num1" id="num1"
							placeholder="Number 1"></td>
					</tr>
					<tr>
						<td><label for="num2">Enter Number 2 : </label></td>
						<td><input type="number" name="num2" id="num2"
							placeholder="Number 2"></td>
					</tr>
				</table>
				<div>
					<button type="submit" name="button" id="button" value="add">Addition</button>
					<button type="submit" name="button" id="button" value="sub">Subtraction</button>
					<button type="submit" name="button" id="button" value="multi">Multiplication</button>
					<button type="submit" name="button" id="button" value="div">Division</button>
					<button type="submit" name="button" id="button" value="facto">Factorial</button>
				</div>
			</form>
		</div>
	</div>

	<div>
		<%
            // Initialize result
            double result = 0;
            int number1 = 0;
            int number2 = 0;
            boolean hasError = false;

            // Retrieve and parse the input parameters
            try {
                number1 = Integer.parseInt(request.getParameter("num1"));
                number2 = Integer.parseInt(request.getParameter("num2"));
            } catch (NumberFormatException e) {
                hasError = true;
                out.println("<h3 style='color:red;'>Please enter valid numbers!</h3>");
            }

            if (!hasError) {
                String operation = request.getParameter("button");

                // Perform the calculation based on the selected operation
                switch (operation) {
                    case "add":
                        result = number1 + number2;
                        out.println("<h3>Addition: " + result + "</h3>");
                        break;
                    case "sub":
                        result = number1 - number2;
                        out.println("<h3>Subtraction: " + result + "</h3>");
                        break;
                    case "multi":
                        result = number1 * number2;
                        out.println("<h3>Multiplication: " + result + "</h3>");
                        break;
                    case "div":
                        if (number2 != 0) {
                            result = (double) number1 / number2;
                            out.println("<h3>Division: " + result + "</h3>");
                        } else {
                            out.println("<h3 style='color:red;'>Division by zero is not allowed!</h3>");
                        }
                        break;
                    case "facto":
                        result = factorial(number1);
                        out.println("<h3>Factorial: " + result + "</h3>");
                        break;
                }
            }
            
            %>
            
            <%!

            // Factorial function
            int factorial(int n) {
                if (n == 0) {
                    return 1;
                } else {
                    return n * factorial(n - 1);
                }
            }
        %>
	</div>
</body>

</html>
