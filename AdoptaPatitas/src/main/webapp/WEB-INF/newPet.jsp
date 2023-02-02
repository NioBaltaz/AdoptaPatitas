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
			<h1>Agrega una nueva Mascota</h1>
			<form:form action="/admins/create/pet" method="POST" modelAttribute="newPet" enctype="multipart/form-data">
				<div class="form-group">
					<form:label path="name">Nombre:</form:label>
					<form:input path="name" class="form-control"/>
					<form:errors path="name" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="age">Edad:</form:label>
					<form:input path="age" class="form-control"/>
					<form:errors path="age" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="sexo">Sexo (Macho / Hembra):</form:label>
					<form:input path="sexo" class="form-control"/>
					<form:errors path="sexo" class="text-danger"/>
				</div>				
				
				<div class="form-group">
					<form:label path="vaccine">Vacunas:</form:label>
					<form:input path="vaccine" class="form-control"/>
					<form:errors path="vaccine" class="text-danger"/>
				</div>
				
				<div class="form-group">
					<form:label path="deworming">Desparacitado:</form:label>
					<c:forEach items="${options}" var="option">
						<form:label path="deworming">${option}</form:label>
					    <form:radiobutton path="deworming" value="${option}"/>
					    
					</c:forEach>
				</div>
				
				<div class="form-group">
					<form:label path="chip">Chip:</form:label>
					<c:forEach items="${options}" var="option">
						<form:label path="chip">${option}</form:label>
					    <form:radiobutton path="chip" value="${option}"/>					    
					</c:forEach>
				</div>
				
				<div class="form-group">
					<label>Agrega una imagen</label>
					<input type="file" name="imagen" class="form-control"/>
				</div>
				<input/ type="submit" value="Añadir Mascota" class="btn btn-info">
			</form:form>
		</div>
	</body>
</html>