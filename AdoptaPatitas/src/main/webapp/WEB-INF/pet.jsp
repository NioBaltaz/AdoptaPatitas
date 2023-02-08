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
	<div class="container-fluid ">

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
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>				
			    </form>
		    </c:if> 
		  </div>
		</div>
	<br>
		<div class="container">
			<div class="row mt-5">
				<div class="col-8">
					<img src="/img/${pet.image}" class="img-fluid mx-auto d-block" style="height: 400px; width: 380px"/>								
					<table class="table table-bordered mt-5">
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
				<div class="col-4 mt-2">
					<h1>Editar Mascota</h1>
					<form:form action="/update/pet" method="POST" modelAttribute="ObjectPet" enctype="multipart/form-data">
						<input type="hidden" name="_method" value="PUT">
						<form:hidden path="id" value="${pet.getId()}" />
						<div class="form-group">
							<form:label path="name">Nombre:</form:label>
							<form:input path="name" class="form-control" value="${pet.getName()}" readonly="true"/>
							<form:errors path="name" class="text-danger"/>
						</div>
						
						<div class="form-group">
							<form:label path="age">Edad:</form:label>
							<form:input path="age" class="form-control" value="${pet.getAge()}"/>
							<form:errors path="age" class="text-danger"/>
						</div>
						
						<div class="form-group">
							<form:label path="sexo">Sexo (Macho / Hembra):</form:label>
							<form:input path="sexo" class="form-control" value="${pet.getSexo()}" readonly="true"/>
							<form:errors path="sexo" class="text-danger"/>
						</div>				
						
						<div class="form-group">
							<form:label path="vaccine">Vacunas:</form:label>
							<form:input path="vaccine" class="form-control" value="${pet.getVaccine()}"/>
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
						<div class="form-group">
							<label>Agrega una imagen</label>
							<input type="file" name="imagen" class="form-control" value="${pet.image}"/>
						</div>	
						<form:hidden path="creator_pet" value="${user.id}"/>
						<input type="submit" value="Actualizar Información" class="btn btn-info mt-4"/>												
					</form:form>
				</div>
			</div>
		</div>
		<br>
		<div class="container-fluid py-4 mt-5" style="background-color: #82B8A0">
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