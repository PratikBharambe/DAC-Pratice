<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add data jsp page</title>
</head>
<body>

	<%-- Calls default constructor of Product bean --%>
	<jsp:useBean id="p" class="com.demo.beans.Product"></jsp:useBean>
	
	<%-- ProductService productService = new ProductServiceImpl(); 
	<jsp:useBean id="productService" class="com.demo.service.ProductServiceImpl" type="com.demo.service.ProductService"></jsp:useBean>
	--%>
	
	<%-- Calling setter methods 
	<jsp:setProperty property="pid" name="p" value='<%= Integer.parseInt(request.getParameter("pid")) %>'/>
	<jsp:setProperty property="pname" name="p" value='<%= request.getParameter("pname") %>'/>
	<jsp:setProperty property="qty" name="p" value='<%= Integer.parseInt(request.getParameter("qty")) %>'/>
	<jsp:setProperty property="price" name="p" value='<%= Double.parseDouble(request.getParameter("price")) %>'/>
	--%>
	
	
	 <jsp:setProperty property="*" name="p" />
	
	<%-- Calling getter methods --%>
	Product id : <jsp:getProperty property="pid" name="p"/>
	Product name : <jsp:getProperty property="pname" name="p"/>
	Product quantity : <jsp:getProperty property="qty" name="p"/>
	Product price : <jsp:getProperty property="price" name="p"/>
	
</body>
</html>