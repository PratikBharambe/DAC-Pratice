<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="kp" uri = "/mytaglib" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom tag demo</title>
</head>
<body>

	<div>
		<div><h1>Custom Tag Demo</h1></div>
		<div><hr></div>
	</div>
	<div>
	<kp:welcome name="Pratik Bharambe"></kp:welcome>
	<br><br>
		<kp:hello lastName="Pratik" firstName="Bharambe"></kp:hello>	
		<kp:calculate num2="2" num1="10"></kp:calculate>
	</div>
	
	<br>
	<br>
	
	<kp:printtable num1="8"></kp:printtable>

</body>
</html>