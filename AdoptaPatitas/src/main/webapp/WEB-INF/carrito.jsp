<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Carrito</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>
	
		<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
		 <img src="images/adopta_patitas.png" width="80" height="100" class="d-inline-block align-top" alt="Logo">
		  <a class="navbar-brand" href="http:/localhost:8080">AdoptaPatitas</a>
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
		    <form class="form-inline my-2 my-lg-0 ml">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0 ml-auto" type="submit">Search</button>
		      
		    </form>
		    
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
		<div class= "header text-center">	
				<img src="/img/finaliza_tu_compra.png" alt="finaliza tu compras">
		</div>
		<div class="container mt-4">
			<h3>Carrito</h3>
			<br>
			<div class="row">
				<div class="col-sm-8">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Item</th>
								<th>Nombres</th>
								<th>Descripción</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>SubTotal</th>
								<th>Acción</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${carrito}" var="car">
								<tr>
									<td>${car.getItem()}</td>
									<td>${car.getNombres()}</td>
									<td>Descripción</td>
									<td>${car.getPrecioCompra()}</td>
									<td>${car.getCantidad()}</td>
									<td>${car.getSubTotal()}</td>
									<td>										
										<a href="/remove/${car.getIdProducto()}">Eliminar</a>
									</td>
								</tr>
							</c:forEach>							
						</tbody>
					</table>
				</div>
				
				<div class="col-sm-4">
					<div class="card">
						<div class="card-header">
							<h3>Generar Compra</h3>
						</div>
						
						<div class="card-body">
							<label>SubTotal:</label>
							<input type="text" value="$.${totalPagar}" readonly class="form-control"/>
						
							<label>Descuento:</label>
							<input type="text" value="$.0.0" readonly class="form-control"/>
						
							<label>Total a Pagar:</label>
							<input type="text" value="$.${totalPagar}" readonly class="form-control"/>
							<a href="/orden/${orden.getId()}" class="btn btn-primary">Comprar</a>
						</div>						
					</div>
				</div>
			</div>
		</div>	
		
			<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Nuestras Fundaciones</h2>
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
