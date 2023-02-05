<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Tiendita</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
	  			<div class="container-fluid">
	    			<img src="images/adopta_patitas.png" width="30" height="30" class="d-inline-block align-top" alt="Logo">
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      		<span class="navbar-toggler-icon"></span>
	    		</button>
	    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
	      			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        		<li class="nav-item">
	          		<a class="nav-link active" aria-current="page" href="/blog">Blog</a>
	        		</li>
	        		<li class="nav-item">
	          		<a class="nav-link" href="/apadrina">Apadrina</a>
	        		</li>
	        		<li class="nav-item dropdown">
	          		<a class="nav-link" href="/adopta">Adopta</a>
	        		</li>
	       	 		<li class="nav-item">
	          		<a class="nav-link" href="/tienda">Articulos</a>
	       	 		</li>
	      			</ul>
	    		</div>
	    		<div>
					<form action="/logout" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
					</form>
				</div>
	  		</div>
		</nav>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="#">AdoptaPatitas</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Ofertas</a>
		      </li>		      
		      <li class="nav-item">
		        <a class="nav-link" href="/carrito"><i class="fas fa-cart-plus">(<label style="color: darkorange">${contador}</label>)</i>Carrito</a>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		    </form>
		    
		    <ul class="navbar-nav">
		    	<li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Iniciar Sesión
		        </a>
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
		<h1>Adopta Patitas Shop</h1>
		<div class="container">
		<div class="row">
		
			<c:forEach items="${products}" var="product">
				<div class="col-4 border border-dark">				
					<c:if test="${not empty product.image}">
						<img src="/img/${product.image}" class="img-fluid"/>
					</c:if>
					<h4>${product.nombre}</h4>
					<h4>Precio: ${product.precio}</h4>
					<h4>Descripción: ${product.description}</h4>
					<a href="/agregarCarrito/${product.getId()}" class="btn btn-outline-info">Agregar a Carrito</a>					
				<a href="/comprar/${product.getId()}" class="btn btn-danger">Comprar</a>
				</div>			
			</c:forEach>
			<a href="/cart" class="btn btn-primary">Ir a Carrito</a>			
		</div>
		</div>
		<form action="/logout" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
		</form>
	<div class="container-fluid">
		<div class="row p=5" style="background-color: #82B8A0">
			<div class="col-lg-3">
				<a href="https://www.instagram.com/bunnyloverscl/"><img src="/img/bunnylovers.jpg" width="50" height="50" class="d-inline-block align-center" alt="bunnylovers"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" width="50" height="50" class="d-inline-block align-center" alt="bunnycare"></a>
			</div>
			<div class="col-lg-3">
			 	<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/fundacion adopta .png" width="50" height="50" class="d-inline-block align-center" alt="fundacion adopta"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" width="50" height="50" class="d-inline-block align-center" alt="fundacion animalia"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/fundacionjacinto/"><img src="/img/fundacion jacinto.jpg" width="50" height="50" class="d-inline-block align-center" alt="fundacion jacinto"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" width="50" height="50" class="d-inline-block align-center" alt="fundacion vyra"></a>
			</div>
		</div>
	</div>
	</body>
</html>