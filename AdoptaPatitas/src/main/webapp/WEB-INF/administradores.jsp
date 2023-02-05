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
		<div class="container-fluid">
			
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE";>
	  			<div class="container-fluid">
	    			<a href="/index.jsp/"></a><img src="images/adopta_patitas.png" width="30" height="30" class="d-inline-block align-top" alt="Logo">
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
	       	 		<li>
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
		
			<h1>Zona Administración</h1>
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
	</body>
</html>