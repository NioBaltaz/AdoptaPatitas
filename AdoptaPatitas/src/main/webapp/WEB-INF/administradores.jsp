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
	</head>
	<body>
		<div class="container">
			<h1>Zona Administración</h1>
			<form action="/logout" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
			</form>
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
								<tr>
									<td>${form.nombre_adoptante}</td>
									<td>${form.nombre_mascota}</td>
									<td><a href="/solicitud/${form.getId()}/${form.getNombre_mascota()}" class="btn btn-info">Ver Detalles</a></td>									
									</tr>
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
								<th>Nombre</th>
								<th>Mascota</th>
								<th>Acción</th>
							</tr>
						</thead>
						<tbody>			
										
								<c:forEach items="${pets}" var = "pet">
								<tr>
									<c:if test="${pet.getUser_adopt().getId() != null}">
										<td>${pet.name}</td>		
									</c:if>
								</tr>	
								</c:forEach>													
															
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>