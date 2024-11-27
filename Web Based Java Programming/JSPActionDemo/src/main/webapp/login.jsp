<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 300px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            outline: none;
        }

        .input-group input:focus {
            border-color: #4CAF50;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            font-size: 12px;
            margin-top: 10px;
        }

        .forgot-password {
            margin-top: 10px;
            font-size: 14px;
            color: #555;
        }

        .forgot-password a {
            text-decoration: none;
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form method="post" action="login.jsp">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required />
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required />
            </div>
            <button type="submit" class="btn">Login</button>
            <div class="forgot-password">
                <a href="#">Forgot password?</a>
            </div>
        </form>
        
        <%
            // JSP Server-Side Handling (Example)
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Simple login validation example (you should validate against a database)
            if (username != null && password != null) {
                if ("admin".equals(username) && "password123".equals(password)) {
                    out.println("<p>Login successful!</p>");
                } else {
                    out.println("<p class='error'>Invalid username or password</p>");
                }
            }
        %>
    </div>
</body>
</html>
