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
	</head>
	<body>
		<div class="container">
			<h1>Agrega Producto Nuevo</h1>
			<form:form action="/admins/add/product" method="POST" modelAttribute="newProduct" enctype="multipart/form-data">
				<div class="form-group">
					<form:label path="nombre">Nombre:</form:label>
					<form:input path="nombre" class="form-control"/>
					<form:errors path="nombre" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="codigo">Codigo:</form:label>
					<form:input path="codigo" class="form-control"/>
					<form:errors path="codigo" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="precio">Precio:</form:label>
					<form:input path="precio" class="form-control"/>
					<form:errors path="precio" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="existencia">Existencia:</form:label>
					<form:input path="existencia" class="form-control"/>
					<form:errors path="existencia" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="description">Descripción:</form:label>
					<form:input path="description" class="form-control"/>
					<form:errors path="description" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<label>Agrega una imagen</label>
					<input type="file" name="imagen" class="form-control"/>
				</div>
				<input type="submit" value="Añadir Imagen Producto" class="btn btn-info">
			</form:form>
		</div>
	</body>
</html>