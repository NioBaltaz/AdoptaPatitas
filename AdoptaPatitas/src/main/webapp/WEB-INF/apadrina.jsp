<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apadrina</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
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
		      <li class="nav-item">
		        <a class="nav-link" href="/carrito"><i class="fas fa-cart-plus"><label style="color: darkorange">${contador}</label></i>Carrito</a>
		      </li>
		      		 <li>
	       	 			<c:forEach items="${roles}" var="role">
							<c:if test="${role.name.equals('ROLE_ADMIN')}">
								<a class="nav-item active" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
	       	 		</li> 
		    </ul> 
		    <form action="/logout" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
					</form>
		  </div>
		</nav>
		<br>
		<div class="container-fluid">
		<div>
			<h4 class= "text-center font-italic text-info">¿Qué es Apadrinar?</h4>
			<br>
		</div>
		<p class="text-center text-info  text-info " >Primero te queremos contar que somos una comunidad que busca la inclusión de varias Fundaciones y Organizaciones.
			 Algunos de los animales de unas fundaciones están en recuperación y tienen una historia. Generalmente, son historias en las que los humanos los hemos descuidado, extrayéndolos de su hábitat y convertidos en mascotas.
			 Entonces pata nosotros Apadrinar un animal es ayudar monetariamente al animal para que pueda tener una mejor vida</p>
			<br>
		<div class="row row-cols-1 row-cols-md-3 g-4">
		  <div class="col">
		    <div class="card">
		      <img src="/img/Oliver.png" class="card-img-top" alt="Oliver">
		      <div class="card-body">
		        <h5 class="card-title"><strong>Nombre:</strong>Oliver</h5>
		        <a href="https://www.instagram.com/p/CjjSLM4pqWU/" class="btn btn-primary">¡Apadriname!</a>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/Suni.png" class="card-img-top" alt="Suni">
		      <div class="card-body">
		        <h5 class="card-title"><strong>Nombre:</strong>Suni</h5>
		        <a href="https://www.instagram.com/p/ClhRlQoO98P/" class="btn btn-primary">¡Apadriname!</a>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/Chayanne.png" class="card-img-top" alt="Chayanne">
		      <div class="card-body">
		        <h5 class="card-title"><strong>Nombre:</strong>Chayanne</h5>
		       <a href="https://www.instagram.com/p/CkLyhgWJJyL/" class="btn btn-primary">¡Apadriname!</a>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="row row-cols-1 row-cols-md-3 g-4">
		  <div class="col">
		    <div class="card">
		      <img src="/img/Lucy.png" class="card-img-top" alt="Lucy">
		      <div class="card-body">
		        <h5 class="card-title"><strong>Nombre:</strong> Lucy</h5>
		        <a href="https://www.instagram.com/p/CjjSLM4pqWU/" class="btn btn-primary">¡Apadriname!</a>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/Miranda.png" class="card-img-top" alt="Miranda">
		      <div class="card-body">
		        <h5 class="card-title"><strong>Nombre:</strong>Suni</h5>
		        <a href="https://www.instagram.com/p/ClhRlQoO98P/" class="btn btn-primary">¡Apadriname!</a>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/Yiya.png" class="card-img-top" alt="Yiya">
		      <div class="card-body">
		        <h5 class="card-title"><strong>Nombre:</strong> Yiya</h5>
		       <a href="https://www.instagram.com/p/CkLyhgWJJyL/" class="btn btn-primary">¡Apadriname!</a>
		      </div>
		    </div>
		  </div>
		</div>
		</div>
		<br>
		 <div class="card mb-3 ml-4" style="max-width: 540px;">
		  <div class="row g-0">
		    <div class="col-md-4">
		      <img src="/img/bunnycare.jpg" class="img-fluid rounded-start" alt="bunnycare">
		    </div>
		    <div class="col-md-8">
		      <div class="card-body">
		        <h5 class="card-title">Cuenta para donaciones</h5>
		        <p class="card-text"><strong>Nombre:</strong> Bunny CARE
		        					 <br>
		        					 <strong>Banco:</strong> Santander
		        					 <br>
		        					 <strong>Tipo Cuenta:</strong>Vista
		        					 <br>
		        					 <strong>Número cuenta</strong>71001552389
		        					 <br>
		        					 <strong>RUT:</strong>19.772.862-0
		        					 <br>
		        					 <strong>Email:</strong> donaciones@bunnylovers.cl</p>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="card mb-3 ml-4" style="max-width: 540px;">
		  <div class="row g-0">
		    <div class="col-md-4">
		      <img src="/img/arca.png" class="img-fluid rounded-start" alt="arca">
		    </div>
		    <div class="col-md-8">
		      <div class="card-body">
		        <h5 class="card-title">Cuenta para donaciones</h5>
		        <p class="card-text"><strong>Nombre:</strong> Chris Quelle
		        					 <br>
		        					 <strong>Banco:</strong> Estado
		        					 <br>
		        					 <strong>Tipo Cuenta:</strong> Cuenta Rut
		        					 <br>
		        					 <strong>Número cuenta</strong>19.207.372-3
		        					 <br>
		        					 <br>
		        					 <strong>Email:</strong> donaciones@bunnylovers.cl</p>
		      </div>
		    </div>
		  </div>
		</div>
		
		  <div class="container-fluid py-4" style="background-color: #82B8A0">
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