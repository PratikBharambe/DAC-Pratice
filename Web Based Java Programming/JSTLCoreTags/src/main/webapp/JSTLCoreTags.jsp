<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>
	<c:set var="i" value="25"/>
	The value of i is : <c:out value="${i}"/>
	</h1>
	
	<c:if test="${i > 5}">Value of i is greater than 5</c:if>
	<br><br><br>
	
	<c:forEach var = "j" begin="1" end="10" step="1">
		${j} x 6 =  ${6*j} <br>
	</c:forEach>
	<br><br>
	
	<c:choose>
		<c:when test="$j == 5 }">Sunday</c:when>
		<c:when test="$j == 15 }">Monday</c:when>
		<c:when test="$j == 25 }">Tuesday</c:when>
		<c:when test="$j == 35 }">Wednesday</c:when>
		<c:when test="$j == 45 }">Friday</c:when>
		<c:otherwise >Saturday</c:otherwise>
	</c:choose>
	
</body>
</html>