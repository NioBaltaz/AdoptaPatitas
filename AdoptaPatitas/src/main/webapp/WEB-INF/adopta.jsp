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
		<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE";>
	  		<div class="container-fluid">
	    		<a href="http://localhost:8080"><img src="images/adopta_patitas.png" width="30" height="30" class="d-inline-block align-top" alt="Logo"></a>
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      		<span class="navbar-toggler-icon"></span>
	    		</button>
	    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
	      			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        		<li class="nav-item">
	          		<a class="nav-link active" aria-current="page" href="/blog">Blog</a>
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
	       	 		<li class="nav-item">
	       	 			<c:forEach items="${roles}" var="role">
							<c:if test="${role.name.equals('ROLE_ADMIN')}">
								<a class="nav-link" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
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
		<div class="header text-center">
			<img src="/img/Adopta.png" alt="Adopta">
		</div>
			<div class=" row text-center">
				<h1>Mascotas</h1>
			</div>
				<div class="row">					
					<c:forEach items="${pets}" var="pet">
						<c:if test="${pet.getUser_adopt().getId() == null}">
							<div class="col-4 mt-5 text-center">				
								<c:if test="${not empty pet.image}">					
									<img src="/img/${pet.image}" class="img-fluid mx-auto d-block" style="height: 400px; width: 380px"/>								
								</c:if>
								<h4 class="text-center">${pet.name}</h4>
								<h4 class="text-center">Edad: ${pet.age}</h4>
								<h4 class="text-center">Sexo: ${pet.sexo}</h4>
								<h4 class="text-center">Vacunas: ${pet.vaccine}</h4>
								<h4 class="text-center">Desparasitad@: ${pet.deworming}</h4>
								<h4 class="text-center">Chip: ${pet.chip}</h4>
								<a href="/requisitos/adopcion/${pet.getId()}" class="btn btn-primary">Postular</a>									
							</div>			
						</c:if>						
					</c:forEach>			
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
	</div>
</body>
</html>