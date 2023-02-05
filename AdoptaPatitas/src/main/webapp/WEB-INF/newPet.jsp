<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<style>
	
	body{
	backgroung-color:linear-gradient(to bottom right, #99ff99 0%, #00ffcc 100%);
	}
	
	</style>
	</head>
	<body>
		<div class="container-fluid ">
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
	  			<div class="container-fluid">
	    			<a href="http://localhost:8080"><img src="images/adopta_patitas.png" width="80" height="80" class="d-inline-block align-top" alt="Logo"></a>
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      		<span class="navbar-toggler-icon"></span>
	    		</button>
	    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
	      			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        		<li class="nav-item">
	          		<a class="nav-link" href="/blog">blog</a>
	        		</li>
	        		<li class="nav-item">
	          		<a class="nav-link" href="/apadrina">Apadrina</a>
	        		</li>
	        		<li class="nav-item dropdown">
	          		<a class="nav-link" href="/adopta">Adopta</a>
	        		</li>
	       	 		<li class="nav-item">
	          		<a class="nav-link" href="/tienda">Articulos</a>
	       	 		</li>
	      			</ul>
	    		</div>
	    		<div>
					<form action="/logout" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
					</form>
				</div>
	  		</div>
			</nav>
			<div class= "header text-center">	
				<img src="/img/zona_de_adminstradores_2.png" alt="ingresar mascota 2">
			</div>
		</div>
		<div class="container">
			<h1>Agrega una nueva Mascota</h1>
			<form:form action="/admins/create/pet" method="POST" modelAttribute="newPet" enctype="multipart/form-data">
				<div class="form-group">
					<form:label path="name">Nombre:</form:label>
					<form:input path="name" class="form-control"/>
					<form:errors path="name" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="age">Edad:</form:label>
					<form:input path="age" class="form-control"/>
					<form:errors path="age" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="sexo">Sexo (Macho / Hembra):</form:label>
					<form:input path="sexo" class="form-control"/>
					<form:errors path="sexo" class="text-danger"/>
				</div>				
				
				<div class="form-group">
					<form:label path="vaccine">Vacunas:</form:label>
					<form:input path="vaccine" class="form-control"/>
					<form:errors path="vaccine" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="deworming">Desparacitado:</form:label>
					<c:forEach items="${options}" var="option">
						<form:label path="deworming">${option}</form:label>
					    <form:radiobutton path="deworming" value="${option}"/>
					    
					</c:forEach>
				</div>
				
				<div class="form-group">
					<form:label path="chip">Chip:</form:label>
					<c:forEach items="${options}" var="option">
						<form:label path="chip">${option}</form:label>
					    <form:radiobutton path="chip" value="${option}"/>					    
					</c:forEach>
				</div>
				
				<div class="form-group">
					<label>Agrega una imagen</label>
					<input type="file" name="imagen" class="form-control"/>
				</div>
				<form:hidden path="creator_pet" value="${user.id}"/>
				<input type="submit" value="Añadir Mascota" class="btn btn-info">
			</form:form>
		</div>
		<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Nuestras Fundaciones</h2>
			<footer class="d-flex justify-content-between">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" alt="bunny care" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionjacinto//"><img src="/img/fundacion jacinto.jpg" alt="fundacion jacinto" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" alt="fundacion vyra" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" alt="fundacion animalia" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/adoptafundacion.png" alt="fundacion adopta" width="80" height="80" class="ml-2"></a>
			
			</footer>
		
		</div>
	</body>
</html>