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
		<div class="container-fluid">
			
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
		     <li>
	       	 			<c:forEach items="${roles}" var="role">
							<c:if test="${role.name.equals('ROLE_ADMIN')}">
								<a class="nav-item active" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
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
		    </ul> 
		    <form action="/logout" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
					</form>
		 </div>
		</nav>
		</div>
			<div class= "header text-center">	
				<img src="/img/ingresar_mascota_.png" class="img-thumbnail float-right center" alt="ingresar mascota" width="600" height="600">
			</div>
		
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
				<br>
				<div class="form-group">
					<label>Agrega una imagen</label>
					<input type="file" name="imagen" class="form-control"/>
				</div>
				<br>
				<form:hidden path="creator_pet" value="${user.id}"/>
				<input type="submit" value="Añadir Mascota" class="btn btn-info">
			</form:form>
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
