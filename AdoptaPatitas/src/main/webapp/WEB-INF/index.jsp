<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adopta Patitas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
		 <img src="images/adopta_patitas.png" width="90" height="90" class="d-inline-block align-top" alt="Logo">
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
		<div id="carouselSlidesOnly" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="/img/Salva.png" class="d-block w-100" alt="png">
		    </div>
		    <div class="carousel-item">
		      <img src="/img/Apadrina un compañero.png" class="d-block w-100" alt="Apadrina">
		    </div>
		    <div class="carousel-item">
		      <img src="/img/Conejo adopta.png" class="d-block w-100" alt="adopta">
		    </div>
		  </div>
		</div>
	 
	 		<div class="row text-center">
	 			<h2> Nosotros</h2>
	 			<div>
	 				<p>Nos une el amor por los animales y luchamos por justicia y respeto para ellos. Tenemos a cargo animales rescatados del maltrato, la explotación y el abandono junto con fundaciones en refugios y hogares temporales, donde no solo podrás adoptar un compañero, sino que también apadrinar una vida que necesita de ayuda.
	 				<br>
	 				Nuestro objetivo es poder otorgar un canal entre varias fundaciones de distintas regiones de Chile para así poder tener un mayor alcance y salvar más animalitos. No solo ayudamos a perros y gatos, sino que también a conejos con ayuda con fundaciones como Bunny C.A.R.E y fundación Jacinto.
	 				<br>
	 				<Strong>¡Somos felices haciendo lo que amamos!</Strong></p>
				 </div>
	 
			</div>
		</div>
	
	 <div class="container-fluid py-4" style="background-color: #82B8A0";>
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