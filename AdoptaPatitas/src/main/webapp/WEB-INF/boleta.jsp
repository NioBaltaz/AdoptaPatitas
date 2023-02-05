<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
		 <img src="images/adopta_patitas.png" width="50" height="50" class="d-inline-block align-top" alt="Logo">
		  <a class="navbar-brand" href="#">AdoptaPatitas</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      		      <li class="nav-item active">
		        <a class="nav-link" href="/index">Home<span class="sr-only"></span></a>
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
		        <a class="nav-link" href="/carrito"><i class="fas fa-cart-plus">(<label style="color: darkorange">${contador}</label>)</i>Carrito</a>
		      </li>
		    </ul>
		    
		    <ul class="navbar-nav">
		    	<li class="nav-item dropdown">
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <div class="dropdown-divider"></div>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>

		
		<form:form action="/finalizar_compra" method="POST" modelAttribute="newBoleta">
			<div class="row">
				<div class="col-6">
				
					<div class="form-group">
						<form:label path="nombre">Nombre</form:label>
						<form:input path="nombre_adoptante" class="form-control"/>
						<form:errors path="nombre_adoptante" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="apellido">Apellido</form:label>
						<form:input path="apellido" class="form-control"/>
						<form:errors path="apellido" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="rut">Rut</form:label>
						<form:input path="rut" class="form-control"/>
						<form:errors path="rut" class="text-danger"/>
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
						<form:label path="residencia">Dirección</form:label>
						<form:input path="residencia" class="form-control"/>
						<form:errors path="residencia" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="especificacion">N° de Casa / Departamento / Oficina  (opcional)</form:label>
						<form:input path="especificacion" class="form-control"/>
						<form:errors path="especificacion" class="text-danger"/>
					</div>
					
				 	<div class="form-group col-md-4">
      					<form:label for="inputState" path="region">Region</form:label>
      						<select id="inputState" class="form-control">
        					<option selected>Choose...</option>
        					<option>Región de Arica y Parinacota</option>
        					<option>Región de Tarapacá</option>
        					<option>Región de Atacama</option>
        					<option>Región de Coquimbo</option>
        					<option>Región de Valparaíso</option>
        					<option>Región Metropolitana de Santiago</option>
        					<option>Región del Libertador General Bernardo O'Higgins	</option>
        					<option>Región del Maule</option>
        					<option>Región de Ñuble</option>
        					<option>Región del Biobío</option>
        					<option>Región de La Araucanía</option>
        					<option>Región de Los Ríos</option>
        					<option>Región de Aysén del General Carlos Ibáñez del Campo</option>
        					<option>Región de Los Lagos </option>
        					<option>Región de Magallanes y de la Antártica Chilena</option>
      						</select>
      					<div class="form-group">
						<form:label path="comuna">Comuna</form:label>
						<form:input path="comuna" class="form-control"/>
						<form:errors path="comuna" class="text-danger"/>
					</div>
					<div class="form-group">
  						<label for="nota">Alguna nota que quieras dejar:</label>
  						<textarea class="form-control" rows="5" id="comment"></textarea>
					</div>
      					
   					 </div>
   					 <input type="submit" value="Enviar" class="btn btn-dark"/>					
				</div>
			</div>
		</form:form>
		
		
		<div class="card-body">
		<h4>Detalle Compra</h4>
							<label>SubTotal:</label>
							<input type="text" value="$.${totalPagar}" readonly class="form-control"/>
						
							<label>Descuento:</label>
							<input type="text" value="$.0.0" readonly class="form-control"/>
						
							<label>Total a Pagar:</label>
							<input type="text" value="$.${totalPagar}" readonly class="form-control"/>
							<a href="/orden/${orden.getId()}" class="btn btn-primary">Comprar</a>
						</div>				
		
		
		
		
		<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Nuestras Fundaciones</h2>
			<footer class="d-flex justify-content-between">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" alt="bunny care" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionjacinto//"><img src="/img/fundacion jacinto.jpg" alt="fundacion jacinto" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" alt="fundacion vyra" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" alt="fundacion animalia" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/adoptafundacion.png" alt="fundacion adopta" width="80" height="80" class="ml-2"></a>
			
			</footer>
		
		</div>
</body>
</html>