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
						</div>						
					</div>
				</div>
			</div>
		</div>
	</body>
</html>