<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-6">
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
								<tr>
									<td>${pet.name}</td>
									<td>${pet.age}</td>
									<td>${pet.sexo}</td>
									<td>${pet.vaccine}</td>
									<td>${pet.deworming}</td>
									<td>${pet.chip}</td>
								</tr>	
						</tbody>
					</table>
				</div>
				<div class="col-4">
					<h1>Editar Mascota</h1>
					<form:form action="/update/pet" method="POST" modelAttribute="ObjectPet">
						<input type="hidden" name="_method" value="PUT">
						<form:hidden path="id" value="${pet.getId()}" />
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
							<form:select path="deworming" class="form-control">
								<c:forEach items="${options}" var="option">
									<c:choose>
										<c:when test="${option.equals(pet.deworming)}">
											<option selected value="${option}">${option}</option>
										</c:when>
										<c:otherwise>
											<option value="${option}">${option}</option>
										</c:otherwise>
									</c:choose>				   
								</c:forEach>
							</form:select>						
						</div>
						
						<div class="form-group">
							<form:label path="chip">Chip:</form:label>
							<form:select path="chip" class="form-control">
								<c:forEach items="${options}" var="option">
									<c:choose>
										<c:when test="${option.equals(pet.chip)}">
											<option selected value="${option}">${option}</option>
										</c:when>
										<c:otherwise>
											<option value="${option}">${option}</option>
										</c:otherwise>
									</c:choose>				   
								</c:forEach>
							</form:select>	
						</div>
						
						<!--  <div class="form-group">
							<label>Agrega una imagen</label>
							<input type="file" name="imagen" class="form-control"/>
						</div>
						-->
						<input/ type="submit" value="Añadir Mascota" class="btn btn-info">
					</form:form>
				</div>
			</div>
		</div>
	</body>
</html>