<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blogs Patitas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <style> 
  
  </style>
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
								<a class="nav-link" href="/admins">Zona de Administradores</a>
							</c:if>
						</c:forEach>
	       	 		</li> 
		    </ul> 
			<c:if test="${currentUser == null}">
		   		<a href="/login" class="btn btn-dark">Login/Register</a>
		   	</c:if>
		   
		   	<c:if test="${currentUser != null}">
			    <form action="/logout" method="POST">
			        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			        <input type="submit" value="Cerrar Sesi�n" class="btn btn-dark"/>
			    </form>
		   	</c:if> 
		  </div>
		</nav>
			<br>
			<div class="header text-center">	
				<img src="/img/blog-conejo.png" alt="blog patitas">
			</div>
		<br>
		<div class="container-fluid d-flex justify-content-center item align-items-center">
			<div class="text-center">
				<h4 class="font-italic">�Est�s a punto de adoptar a tu primer perro?, �Tu conejo sufre con los calores?, �No sabes cual juguete es mejor para tu gato? Pues quedate aqui, en esta secci�n descubriras un monton de datos, tips e informaci�n util para poder mejorar tu vida junto a la de tu mascota.</h4>	
			</div>
		</div>
		<br>
		<div class="container">
			<div class="row row-cols-1 row-cols-md-2 g-4">
		  		<div class="col">
		    		<div class="card">
		      			<img src="/img/conejo-pequeno.jpg" class="card-img-top" alt="conejo">
		      		<div class="card-body">
		        		<h5 class="card-title">Mi primer conejo</h5>
		        		<p class="card-text">La llegada de un nuevo integrante a la familia nos llena de emoci�n, pero, �sabes que hacer cuando ese integrante es un conejo?.</p>
		        		<a href="#" class="btn btn-primary">Ver post</a>
		      		</div>
		    		</div>
		  		</div>
		  		<div class="col">
		    		<div class="card">
		      			<img src="/img/perro-verano.jpg" class="card-img-top" alt="perro">
		      		<div class="card-body">
		        			<h5 class="card-title">Consejos para cuidar de tu perro en verano</h5>
		        			<p class="card-text">Las altas temperaturas en la epoca de verano es algo que nos preocupa cuando de nuestros perrihijos se trata.</p>
		        			<a href="#" class="btn btn-primary">Ver post</a>
		      		</div>
		    		</div>
		  		</div>
		  		<div class="col">
		    		<div class="card">
		      			<img src="/img/gato-negro.jpg" class="card-img-top" alt="gato">
		      		<div class="card-body">
		        		<h5 class="card-title">�Conocias estas curiosidades de los gatos?</h5>
		        		<p class="card-text">Los gatos son animales fantasticos, pero tambi�n muy incomprendidos, por eso te ayudaremos con algunas curiosidades sobre ellos para que te sorprendas.</p>
		        		<a href="#" class="btn btn-primary">Ver post</a>
		      		</div>
		    		</div>
		  		</div>
		  		<div class="col">
		    		<div class="card">
		      			<img src="/img/mascota.jpg" class="card-img-top" alt="mascota">
		      		<div class="card-body">
		        		<h5 class="card-title">Beneficios para la salud:�C�mo el tener una mascota ayuda a nuestra salud?</h5>
		        		<p class="card-text">Seg�n m�ltiples estudios realizados a lo largo del tiempo se ha llegado a descubrir como los animales nos ayudan no solo a nuestra salud f�sica, sino que tambi�n mental.</p>
		        		<a href="#" class="btn btn-primary">Ver post</a>
		      		</div>
		    		</div>
		  		</div>
				</div>
					<div class="row row-cols-1 row-cols-md-2 g-4">
		  				<div class="col">
		    				<div class="card">
		      					<img src="/img/vacunas.jpg" class="card-img-top" alt="vacunacion">
		      				<div class="card-body">
		        				<h5 class="card-title">Vacunas en perros y gatos</h5>
		        				<p class="card-text">Una parte primordial en el cuidado de nuestros peluditos son las vacunas, pero �sabes cu�les son?, �cu�l le corresponde?, �Para que es cada vacuna? Quedate que aqu� te lo contamos todo para que estes totalmente informado.</p>
		        				<a href="#" class="btn btn-primary">Ver post</a>
		      				</div>
		    				</div>
		  				</div>
		  				<div class="col">
		    				<div class="card">
		      					<img src="/img/sociabilizacion.jpg" class="card-img-top" alt="sociabilizacion">
		      				<div class="card-body">
		        				<h5 class="card-title">Sociabilizaci�n entre conejos</h5>
		        				<p class="card-text">Los conejos son animales sociables por lo que se sienten mejor compartiendo con otros conejos.Sin embargo, se tiene que hacer todo un proceso de sociabilizaci�n para que tu nuevo bunny pueda integrarse de la mejor manera al hogar.</p>
		        				<a href="#" class="btn btn-primary">Ver post</a>
		      				</div>
		    				</div>
		  				</div>
		  				<div class="col">
		    				<div class="card">
		      					<img src="/img/discapacitado.jpg" class="card-img-top" alt="conejo discapacitado">
		      				<div class="card-body">
		        				<h5 class="card-title">Tengo un conejo discapacitado, �Qu� cuidados debe de tener?</h5>
		        				<p class="card-text">Los conejos discapacitados necesitan de cuidados muy especificos para poder mejorar su calidad de vida, aqu� te daremos toda la informaci�n que necesitan para cuidar de tu bunny.</p>
		        				<a href="#" class="btn btn-primary">Ver post</a>
		      				</div>
		    				</div>
		  				</div>
		  				<div class="col">
		    				<div class="card">
		      					<img src="/img/perro jugando.jpg" class="card-img-top" alt="jugando">
		      				<div class="card-body">
		        				<h5 class="card-title">Los mejores juguetes para tu perro</h5>
		        				<p class="card-text">Existen multiples opciones a la hora de escoger un jueguete para tu perro, desde tipo, forma, necesidad que tenga tu perro, etc. Sabemos que el juego es fundamental para el desarrollo de tu perro, te ayudaremos a eligir el mejor jueguete para �l.</p>
		        				<a href="#" class="btn btn-primary">Ver post</a>
		      				</div>
		    				</div>
		  				</div>
				</div>
		</div>
		<br>
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