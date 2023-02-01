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
		<h1>Aqui ira el formulario y la información de los requisito</h1>
		<form action="/logout" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
		</form>
		
		<form:form action="/requisitos/form" method="POST" modelAttribute="newForm">
			<div class="row">
				<div class="col-6">
				
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
	</body>
</html>