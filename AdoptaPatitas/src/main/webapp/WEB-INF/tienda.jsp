<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Tiendita</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>
		<h1>Aqui estara la tienda</h1>
		
					<div class="row">
		
			<c:forEach items="${products}" var="product">
				<div class="col-4 border border-dark">				
					<c:if test="${not empty product.image}">
						<img src="/img/${product.image}" class="img-fluid"/>
					</c:if>
					<h4>${product.name}</h4>
					<h4>Precio: ${product.precio}</h4>
					<h4>Descripción: ${product.description}</h4>					
				</div>			
			</c:forEach>			
		</div>
		
		
		<form action="/logout" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
		</form>
	</body>
</html>