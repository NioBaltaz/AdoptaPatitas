<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Requisitos de Adopción</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
				<img src="/img/zona_de_administradores_3.png" alt="ingresar mascota 3">
			</div>
		</div>
	
	<div class="container">	
	<form:form action="/requisitos/form" method="POST" modelAttribute="newForm">
			<div class="row ml-10">
				<div class="col-6">
					<h1>Requisitos de Adopción Obligatorio</h1>
					<div class="form-group">
						<form:label path="nombre_mascota">Mascota a la cual estás postulando</form:label>
						<form:input path="nombre_mascota" class="form-control" value="${pet.getName()}" readonly="true"/>
						<form:errors path="nombre_mascota" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="nombre_adoptante">Nombre del Adoptante</form:label>
						<form:input path="nombre_adoptante" class="form-control"/>
						<form:errors path="nombre_adoptante" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="comuna">Comuna</form:label>
						<form:input path="comuna" class="form-control"/>
						<form:errors path="comuna" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="telefono">Teléfono</form:label>
						<form:input path="telefono" class="form-control"/>
						<form:errors path="telefono" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="email">Correo electrónico</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="edad">Edad</form:label>
						<form:input path="edad" class="form-control"/>
						<form:errors path="edad" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="ocupacion">Ocupación</form:label>
						<form:input path="ocupacion" class="form-control"/>
						<form:errors path="ocupacion" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="miembros_familia">Número de los miembros de la familia</form:label>
						<form:input path="miembros_familia" class="form-control"/>
						<form:errors path="miembros_familia" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="localidad">Usted vive en</form:label>
						<form:input path="localidad" class="form-control"/>
						<form:errors path="localidad" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="costear">¿Está dispuesto a costear la atención veterinaria, medicamentos y etólogo si fuese necesario?</form:label>
						<form:input path="costear" class="form-control"/>
						<form:errors path="costear" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="visitas">Está dispuesto a que se realicen las visitas de seguimiento NO programadas?</form:label>
						<form:input path="visitas" class="form-control"/>
						<form:errors path="visitas" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="paseo">¿Pasear al adoptado frecuentemente (perro)?</form:label>
						<form:input path="paseo" class="form-control"/>
						<form:errors path="paseo" class="text-danger"/>
					</div>
					<input type="submit" value="Enviar" class="btn btn-dark"/>					
				</div>
			</div>
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
