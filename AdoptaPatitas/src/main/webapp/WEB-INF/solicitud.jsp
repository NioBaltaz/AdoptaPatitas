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
		<div class="container">		
			<h2>Solicitud</h2>
			<br/>
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
						<td><h4>${form.nombre_adoptante }</h4></td>
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
					<a href="/aceptar/adopcion/${pet.getId()}/${form.user.getId()}" class="btn btn-primary">Aceptar Adopción</a>											
				</div>
			</div>
		</div>
	</body>
</html>