<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agregar nuevo producto</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<style>
	
	body{
	backgroung-color:linear-gradient(to bottom right, #99ff99 0%, #00ffcc 100%);
	}
	
	</style>
	</head>
	<body>
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
				 <img src="/img/adopta_patitas.png" width="90" height="90" class="d-inline-block align-top" alt="Logo">
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
				      <li class="nav-item">
				        <a class="nav-link" href="/carrito"><i class="fas fa-cart-plus"><label style="color: darkorange">${contador}</label></i>Carrito</a>
				      </li>
				      		  <li>
			       	 			<c:forEach items="${roles}" var="role" >
									<c:if test="${role.name.equals('ROLE_ADMIN')}">
										<a class="nav-link " href="/admins">Zona de Administradores</a>
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
				<div class="container-fluid">
		<br>
			<div class= "header text-center">	
				<img src="/img/ingresa_producto.png" alt="ingresar producto">
			</div>
		</div>
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
					<form:label path="stock">Stock:</form:label>
					<form:input path="stock" class="form-control"/>
					<form:errors path="stock" class="text-danger"/>
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
		<a href="/admins/add/product/allproduct" class="btn btn-dark">Ver Productos</a>
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
