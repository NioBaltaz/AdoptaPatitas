<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
			<h1>Bienvenid@ ${currentUser.username}!</h1>
			<form action="/logout" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
			</form>
			
			<c:forEach items="${asdasd}" var="a">
				<p>${a.name}</p>
				<c:if test="${a.name.equals('ROLE_ADMIN')}">
					<a href="/administradores">Zona de Administradores</a>
					<a>Prueba1</a>
				</c:if>
			</c:forEach>
		</div>
	</body>
</html>