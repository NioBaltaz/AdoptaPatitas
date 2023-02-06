<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style> 
             	p{
        	text-align: center;
           font-size:30px;
           margin:20px;
           line-height: 5px;
           img{
           }
</style>
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
			<h2 class= text-center>¿Que es Apadrinar?</h2>
			<p class=text-center>Apadrinar un animal es ayudar monetariamente al animal para que pueda tener una mejor vida</p>
			<br>
		</div>
		<div class="row">
			<div class ="col">

				<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img src="/img/Roy.png" alt="Roy" class="img-thumbnail"width="400" height="400"></a><p>Roy</p>
				
			</div>
			<div class ="col">

				<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img src="/img/Kafka.jpg" alt="Kafka" class="img-thumbnail" width="600" height="600"></a><p>Kafka</p>


			</div>
			<div class ="col">

				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Sacha.jpg" alt="Maico y Sacha" class="img-thumbnail" width="400" height="400"><p>Maico y Sasha</p>

			</div>
		</div>
		<div class="row">
			<div class ="col">
				<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img src="/img/Ramona.jpg" alt="Ramona" class="img-fluid" width="400" height="400"></a><p>Ramona</p>
			</div>
			<div class ="col">

				<img src="https://pumakawa.org/wp-content/uploads/2019/12/Estanislao-Monte.jpg" alt="Estanislao" class="img-thumbnail" width="400" height="400"><p>Estanislao</p>

			</div>
			<div class ="col">

				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Firpa-y-Unhito.jpg" alt="Firpa y Unhito" class="img-thumbnail" width="400" height="400"><p>Firpa y Unhito</p>

			</div>
		</div>
		<div class="row">
			<div class ="col">

				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Linda.jpg" alt="Linda" class="img-thumbnail" width="400" height="400"><p>Linda</p>

			</div>
			<div class ="col">
				
				<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img src="/img/Zeta.png" alt="Zeta" class="img-fluid" width="400" height="400"></a><p>Zeta</p>
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/DSC5611-PS-495x400.jpg" alt="Megan" class="img-fluid"><p>Megan</p>
			</div>
			</div>
		</div>
		<div style="background-color: #87CEFA">
			<br>
			<p style="color: #0000FF">Paginas de apadrinamiento</p>
			<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img alt="Fundacion Huella Animal" src="/img/FHA-Blanco.png"  width="150" height="100"></a>
			<a href="https://m.facebook.com/Fundación-Jacinto-106297028748431/"><img alt="SI" src="/img/FundacionJacinto.jpg"  width="100" height="100"></a>
		</div>
		<br>
		<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Fundaciones</h2>
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