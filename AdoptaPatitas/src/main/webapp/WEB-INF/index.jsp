<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>AdoptaPatitas</title>
	</head>
	<body>
		<div class="container">
	
			<div class= "header">	
				<h1>Aqui ira el gif</h1>
			</div>
		
			<div class="row">
	
				<a class="button" href="/blog">Blog</a>
				<a class="button" href="/apadrina">Apadrina</a>
				<a class="button" href="/adopta">Adopta</a>
				<a class="button" href="/tienda">Articulos</a>
				<c:forEach items="${roles}" var="role">
					<p>${a.name}</p>
					<c:if test="${role.name.equals('ROLE_ADMIN')}">
						<a href="/administradores">Zona de Administradores</a>
					</c:if>
				</c:forEach>
	
			</div>
	 
	 	<div class="footer">
	 
	 		<h2>Aqui ira los nombres de las fundaciones con sus iconos y el boton que de a sus redes sociales</h2>
		 	
		 </div>
		
		</div>
	</body>
</html>