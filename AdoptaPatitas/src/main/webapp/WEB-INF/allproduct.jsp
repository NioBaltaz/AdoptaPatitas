<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<<<<<<< HEAD
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
=======
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
>>>>>>> branch 'master' of https://github.com/NioBaltaz/AdoptaPatitas.git
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AllProducts</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>	
	body{
	backgroung-color:linear-gradient(to bottom right, #99ff99 0%, #99ffcc 100%);
	}
	
	</style>
</head>
<body>

		<div class="container-fluid">
			
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
	  			<div class="container-fluid">
	    			<a href="http://localhost:8080/%22%3E"></a><img src="images/adopta_patitas.png" width="60" height="60" class="d-inline-block align-top" alt="Logo">
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
	       	 		<li>
	       	 			<c:forEach items="${roles}" var="role">
							<c:if test="${role.name.equals('ROLE_ADMIN')}">
								<a class="nav-link" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
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
		</div>
<h1>Tabla productos</h1>
<div class="container">
	<div class="container-fluid ">
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
	  			<div class="container-fluid">
	    			<a href="http://localhost:8080"><img src="images/adopta_patitas.png" width="80" height="80" class="d-inline-block align-top" alt="Logo"></a>
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      		<span class="navbar-toggler-icon"></span>
	    		</button>
	    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
	      			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        		<li class="nav-item">
	          		<a class="nav-link" href="/blog">blog</a>
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
			<div class= "header text-center">	
				<img src="/img/zona_de_administradores_4.png" alt="ingresar mascota 4">
			</div>
		</div>

	<table class="table is-fullwidth is-bordered">
			<thead class="dashtable">
				<tr>
					<td>Producto</td>
					<td>Codigo</td>
					<td>Precio</td>
					<td>Existencia</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
				<tr>
					<td><a href="//${product.id}">${product.nombre}</a></td>
					<td>${product.codigo}</td>
					<td>${product.precio}</td>
					<td>${product.existencia}</td>
					<td>
	
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
<a href="/admins/add/product/update" class="btn btn-dark">Editar</a>
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