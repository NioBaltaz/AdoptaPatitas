<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Tiendita</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE";>
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
				</div>
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
					<a href="//${product.getId()}" class="btn btn-primary">Añadir al carrito</a>						
				</div>			
			</c:forEach>			
		</div>
		</div>
		<form action="/logout" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
		</form>
	<div class="container-fluid">
		<div class="row p=5" style="background-color: #82B8A0";>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/bunnyloverscl/"><img src="/img/bunnylovers.jpg" class="card-img-top" alt="bunnylovers"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" class="card-img-top" alt="bunnycare"></a>
			</div>
			<div class="col-lg-3">
			 	<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/fundacion adopta.jpg" class="card-img-top" alt="fundacion adopta"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpg" class="card-img-top" alt="fundacion animalia"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/fundacionjacinto/"><img src="/img/fundacion jacinto.jpg" class="card-img-top" alt="fundacion jacinto"></a>
			</div>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpg" class="card-img-top" alt="fundacion vyra"></a>
			</div>
		</div>
	</div>
	</body>
</html>