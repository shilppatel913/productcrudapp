<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
		<div class="container mt-5">
		<h2 class="text-center">Update Your Product</h2>
		<form action="${pageContext.request.contextPath}/handleAdd" method="post">
		<input type="number" name="id" value="${product.id}" class="form-control" />
		  <div class="form-group">
		    <label for="prodName">Name</label>
		    <input type="text" value="${product.prodName}" name="prodName" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
		  </div>
		  <div class="form-group">
		    <label for="prodDesc">Description</label>
		    <textarea name="prodDesc" class="form-control" id="exampleFormControlTextarea1" rows="3">${product.prodDesc}</textarea>
		  </div>
		  <div class="form-group">
		    <label for="prodPrice">Price</label>
		    <input type="number" name="prodPrice" value="${product.prodPrice}" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
		  </div>
		  <div class="container text-center">
		 	 <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">
		  		Back
		  		</a>
		  		<button type="submit" class="btn btn-primary">Update</button>
		  </div>
		  
		</form>
		</div>
</body>
</html>