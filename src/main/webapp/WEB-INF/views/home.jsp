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
	<div class="container text-center mt-3">
		<div class="row">
			<div class="col-md-12">
				<h2>Welcome to The page</h2>
						<table class="table mt-3">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">S.No</th>
				      <th scope="col">Name</th>
				      <th scope="col">Description</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${products}" var="product">
				    <tr>
				      <th scope="row">${product.id}</th>
				      <td>${product.prodName}</td>
				      <td>${product.prodDesc}</td>
				      <td>${product.prodPrice}</td>
				      <td><a href="delete/${product.id}"><i class="fas fa-trash text-danger" aria-hidden="true"></i></a>
				      	<a href="update/${product.id}"><i class="fas fa-pen-nib text-primary" aria-hidden="true"></i></a>
				      </td>
				    </tr>
				   </c:forEach>
				  </tbody>
				</table>
				<div class="container text-center">
					<a href="add-product" class="mt-3 btn btn-success">Add Product</a>
				</div>	
			
			</div>
		</div>
	</div>
</body>
</html>