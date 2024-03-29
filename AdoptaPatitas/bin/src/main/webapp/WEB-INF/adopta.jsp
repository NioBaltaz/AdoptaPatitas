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
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
		<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
		 <img src="images/adopta_patitas.png" width="50" height="50" class="d-inline-block align-top" alt="Logo">
		  <a class="navbar-brand" href="/">AdoptaPatitas</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="/">Home<span class="sr-only"></span></a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="/blog">Blog<span class="sr-only"></span></a>
		      </li>	  
		      <li class="nav-item active">
		        <a class="nav-link" href="/apadrina">Apadrina<span class="sr-only"></span></a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="/adopta">Adopta<span class="sr-only"></span></a>
		      </li>	
		      <li class="nav-item active">
		        <a class="nav-link" href="/tienda">AdoptaPatitas Shop<span class="sr-only"></span></a>
		      </li>			      
		      <li class="nav-item">
		        <a class="nav-link" href="/carrito"><i class="fas fa-cart-plus"><label style="color: darkorange">${contador}</label></i>Carrito</a>
		      </li>
		      		 <li>
	       	 			<c:forEach items="${roles}" var="role">
							<c:if test="${role.name.equals('ROLE_ADMIN')}">
								<a class="nav-link" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
	       	 		</li> 
		    </ul> 
			<c:if test="${currentUser == null}">
		   		<a href="/login" class="btn btn-dark">Login/Register</a>
		   </c:if>
		   
		   <c:if test="${currentUser != null}">
			   <form action="/logout" method="POST">
			       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			       <input type="submit" value="Cerrar Sesi�n" class="btn btn-dark"/>
			   </form>
		   </c:if> 
		  </div>
		</nav>
		<div class="container-fluid mt-4">
		<div class="header text-center">
			<img src="/img/Adopta.png" alt="Adopta">
		</div>
		<br>
			<div class=" row text-center mt-4 mb-4 p-3">
				<h1 class="font-weight-lighter text-primary">Mascotitas listas para ser un nuevo Integrante de tu Familia</h1>
			</div>
				<div class="row ">
					<c:forEach items="${pets}" var="pet">				
						<c:if test="${pet.getUser_adopt().getId() == null}">
							<div class="col-4 mt-5 text-center">				
								<c:if test="${not empty pet.image}">					
									<img src="/img/${pet.image}" class="img-fluid mx-auto d-block" style="height: 400px; width: 380px"/>								
								</c:if>								
								<h3 class="text-center mt-4">${pet.name}</h3>
								<h4 class="text-center">Edad: ${pet.age}</h4>
								<h4 class="text-center">Sexo: ${pet.sexo}</h4>
								<h4 class="text-center">Vacunas: ${pet.vaccine}</h4>
								<c:if test="${pet.sexo == 'Hembra'}">
									<h4 class="text-center">Desparasitada: ${pet.deworming}</h4>
								</c:if>
								<c:if test="${pet.sexo == 'Macho'}">
									<h4 class="text-center">Desparasitado: ${pet.deworming}</h4>
								</c:if>
								<h4 class="text-center">Chip: ${pet.chip}</h4>
								<a href="/requisitos/adopcion/${pet.getId()}" class="btn btn-primary mt-4 w-25">Postular</a>	
							</div>			
						</c:if>						
					</c:forEach>			
				</div>

				<br>

			</div>

			<div class="container-fluid py-4 mt-4" style="background-color: #82B8A0">
			<h2 class="text-center">Fundaciones</h2>
			<footer class="d-flex justify-content-between fluid">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" alt="bunny care" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionjacinto//"><img src="/img/fundacion jacinto.jpg" alt="fundacion jacinto" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" alt="fundacion vyra" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" alt="fundacion animalia" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/fundacion adopta .png" alt="fundacion adopta" width="80" height="80" class="ml-2"></a>
			</footer>
		</div>
	
</body>
</html>