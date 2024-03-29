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
		 <img src="/img/adopta_patitas.png" width="50" height="50" class="d-inline-block align-top" alt="Logo">
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
								<a class="nav-link" href="/admins">Zona de Administradores</a>
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
							<label class="mt-2 mb-2">SubTotal:</label>
							<input type="text" value="$.${totalPagar}" readonly class="form-control"/>
						
							<label class="mt-3 mb-2">Descuento:</label>
							<input type="text" value="$.0.0" readonly class="form-control"/>
						
							<label class="mt-3">Total a Pagar:</label>
							<input type="hidden" id="total" value="${totalPagar}" />
							<div id="paypal-payment-button" class="mt-4"></div>
							<br>
							
							
						</div>						
					</div>
				</div>
			</div>
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
		<script src="https://www.paypal.com/sdk/js?client-id=ASSPGFSYUvJDWuiUck87o5WfqEfvRUJ0duITfMtmKtVHwluY6X86wuXsPNcega3PSLATKEdYBDSXgFrI&disable-funding=credit,card"></script>
		<script src="js/paypal.js"></script>
	</body>
</html>
