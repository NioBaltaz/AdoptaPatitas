<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Adopta</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>

		<div class="container">

			<a class="button" href="/requisitos">Requisitos de Adopción</a>

			<form action="/logout" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
			</form>
			
			<h1>Mascotas</h1>
			
			<div class="row">
		
			<c:forEach items="${pets}" var="pet">
				<div class="col-2 border border-dark">				
					<c:if test="${not empty pet.image}">
						<img src="/img/${pet.image}" class="img-fluid"/>
					</c:if>
					<h3>${pet.name}</h3>
					<a href="#" class="btn btn-primary">Más Información</a>					
				</div>			
			</c:forEach>			
		</div>
		</div>
</body>
</html>