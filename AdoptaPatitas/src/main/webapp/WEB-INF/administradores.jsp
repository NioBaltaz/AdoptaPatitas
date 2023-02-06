<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
		<style>
			
		</style>
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
		    
		      <li class="nav-item active">
		        <a class="nav-link" href="/admins/new/pet">Agrega Mascota<span class="sr-only"></span></a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="/admins/add/product">Agrega Producto<span class="sr-only"></span></a>
		      </li>	
		      <li class="nav-item active">
		        <a class="nav-link" href="/admins/add/product/allproduct">Productos<span class="sr-only"></span></a>
		      </li>	 
		      <li>
	       	 			<c:forEach items="${roles}" var="role">
							<c:if test="${role.name.equals('ROLE_ADMIN')}">
								<a class="nav-item active" href="/admins">Zona de Administradores</a>
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
			        <input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
			    </form>
		    </c:if> 
		  </div>
		</nav>
		<br>
		<div class= "header text-center">	
				<img src="/img/zona_de_administradores_1.png" alt="zona de administradores_1">
			</div>
			<a href="/admins/new/pet" class="btn btn-dark">Añadir nueva mascota</a>
			<a href="/admins/add/product" class="btn btn-dark">Añadir nuevo producto</a>
			<div class="row">
				<div class="col-8">
					<h1>Solicitudes de Adopción</h1>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Nombre</th>
								<th>Mascota</th>
								<th>Acción</th>
							</tr>
						</thead>
						<tbody>			
							
								<c:forEach items="${forms}" var="form">
									<c:if test="${form.aceptado == null}">
										<tr>
											<td>${form.nombre_adoptante}</td>
											<td>${form.nombre_mascota}</td>
											<td><a href="/solicitud/${form.getId()}/${form.getNombre_mascota()}" class="btn btn-info">Ver Detalles</a></td>									
										</tr>
									</c:if>									
								</c:forEach>											
						</tbody>
					</table>
				</div>
			</div>		
			
			<div class="row">
				<div class="col-8">
					<h1>Mascotas Adoptadas</h1>
					<table class="table table-bordered">
						<thead>
							<tr>							
								<th>Nombre Adoptante</th>
								<th>Nombre Mascota</th>
							</tr>
						</thead>
						<tbody>													
								<c:forEach items="${pets}" var = "pet">
								<tr>
									<c:if test="${pet.getUser_adopt().getId() != null}">									
										<td>${pet.getUser_adopt().getUsername()}</td>	
										<td>${pet.name}</td>	
									</c:if>
								</tr>
								</c:forEach>																												
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="row">				
				<form action="/admins" method="POST">					
					<input type="search" name="pet" placeholder="Mascota">
					<input type="submit" value="Buscar">										
				</form>	
				<c:if test="${errorMessage != null}">
					<p class="text-danger">${errorMessage}</p>
				</c:if>	
				<div class="col-6">
					<h1>Mascotas</h1>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Nombre</th>
								<th>Edad</th>
								<th>Sexo</th>
								<th>N° Vacunas</th>
								<th>Desparasitad@</th>
								<th>Microchip</th>							
							</tr>
						</thead>
						<tbody>						
							<c:forEach items="${pets}" var="p">
								<tr>
									<td><a href="/pet/${p.name}">${p.name}</a></td>
									<td>${p.age}</td>
									<td>${p.sexo}</td>
									<td>${p.vaccine}</td>
									<td>${p.deworming}</td>
									<td>${p.chip}</td>
								</tr>
							</c:forEach>											
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<br>
		<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Nuestras Fundaciones</h2>
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
