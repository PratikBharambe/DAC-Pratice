<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Product JSP</title>
</head>
<body>

	<%-- it calls default constructor --%>
	<jsp:useBean id="p" class="com.demo.beans.Product"></jsp:useBean>

	<%-- ProductService p service = new ProductServiceImpl() 
	<jsp:useBean id="p service" class="com.demo.service.ProductServiceImpl" type="com.demo.service.ProductService></jsp:useBean>
	--%>
	
	<%--
	<jsp:setProperty property="id" name="p" value='<%= Integer.parseInt(request.getParameter("id")) %>'/>
	<jsp:setProperty property="name" name="p" value='<%= request.getParameter("name") %>'/>
	<jsp:setProperty property="qty" name="p" value='<%= Integer.parseInt(request.getParameter("qty")) %>'/>
	<jsp:setProperty property="price" name="p" value='<%= Double.parseDouble(request.getParameter("price")) %>'/>
	--%>
	
	<jsp:setProperty property="*" name="p"/>
	
	Product id : <jsp:getProperty property="id" name="p"/><br>
	Product name : <jsp:getProperty property="name" name="p"/><br>
	Product quantity : <jsp:getProperty property="qty" name="p"/><br>
	Product price : <jsp:getProperty property="price" name="p"/><br>
	
</body>
</html>