<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
								<a class="nav-item active" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
	       	 		</li> 
		    </ul> 
		    <form action="/logout" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
					</form>
		  </div>
		</nav>
			<br>
			<div class="header text-center">	
				<img src="/img/solicitudes.png" alt="solicitudess">
			</div>
			<br>
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
		</div>
		<div class="container">		
			<h2>Solicitud</h2>
			<br/>
			
			<div class="row justify-content-center">
				<div class="col-6 mb-4">
					<c:if test="${not empty pet.image}">									
						<img src="/img/${pet.image}" class="img-fluid mx-auto d-block" style="height: 450px; width: 380px"/>								
					</c:if>
				</div>
				<div class="col-3 mt-5">
					<h4 class="text-center mb-5">Información de ${pet.name}</h4>
					<table class="table table-bordered text-center">						
							<tr>
								<td>${pet.name}</td>									
							</tr>
							<tr>
								<td>${pet.age}</td>
							</tr>
							<tr>
								<td>${pet.sexo}</td>
							</tr>
							<tr>
								<td>${pet.vaccine}</td>
							</tr>
							<tr>
								<td>${pet.deworming}</td>
							</tr>
							<tr>
								<td>${pet.chip}</td>
							</tr>
					</table>
				</div>
			</div>
			
			<table class="table table-bordered">	
				<thead>
					<tr>
						<th><h2>Información Postulante</h2></th>
						<th></th>
					</tr>
				</thead>
				<tbody>				  	
					<tr>						
						<td><h5>Mascota a la cual está postulando</h5></td>
						<td><h5>${form.nombre_mascota}</h5></td>					
					</tr>
					<tr>
						<td><h5>Nombre del Adoptante</h5></td>
						<td><h5>${form.nombre_adoptante }</h5></td>
					</tr>
					<tr>
						<td><h5>Comuna</h5></td>
						<td><h5>${form.comuna }</h5></td>
					</tr>
					<tr>
						<td><h5>Teléfono</h5></td>
						<td><h5>${form.telefono }</h5></td>
					</tr>
					<tr>
						<td><h5>Correo electrónico</h5></td>
						<td><h5>${form.email }</h5></td>
					</tr>
					<tr>
						<td><h5>Edad</h5></td>
						<td><h5>${form.edad }</h5></td>
					</tr>
					<tr>
						<td><h5>Ocupación</h5></td>
						<td><h5>${form.ocupacion }</h5></td>
					</tr>
					<tr>
						<td><h5>Número de los miembros de la familia</h5></td>
						<td><h5>${form.miembros_familia }</h5></td>
					</tr>
					<tr>
						<td><h5>Usted vive en</h5></td>
						<td><h5>${form.localidad }</h5></td>
					</tr>
					<tr>
						<td><h5>¿Está dispuesto a costear la atención veterinaria, medicamentos y etólogo si fuese necesario?</h5></td>
						<td><h5>${form.costear }</h5></td>
					</tr>
					<tr>
						<td><h5>Está dispuesto a que se realicen las visitas de seguimiento NO programadas?</h5></td>
						<td><h5>${form.visitas }</h5></td>
					</tr>
					<tr>
						<td><h5>¿Pasear al adoptado frecuentemente (perro)?</h5></td>
						<td><h5>${form.paseo }</h5></td>
					</tr>
				</tbody>			
			</table>
			
			<div class="row">
				<div class="col">
					<form action="/aceptar/adopcion/${pet.getId()}/${form.user.getId()}/${form.getId()}" method="POST">
						<input type="submit" class="btn btn-dark" value="Aceptar Solicitud"/>
					</form>
					<!-- <a href="/aceptar/adopcion/${pet.getId()}/${form.user.getId()}/${form.getId()}" class="btn btn-primary">Aceptar Adopción</a> -->											
				</div>
			</div>
			<br>
		</div>
		<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Fundaciones</h2>
			<br>
			<footer class="d-flex justify-content-between">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" alt="bunny care" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionjacinto//"><img src="/img/fundacion jacinto.jpg" alt="fundacion jacinto" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" alt="fundacion vyra" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" alt="fundacion animalia" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/fundacion adopta .png" alt="fundacion adopta" width="80" height="80" class="ml-2"></a>
			
			</footer>
		
		</div>
	</body>
</html>