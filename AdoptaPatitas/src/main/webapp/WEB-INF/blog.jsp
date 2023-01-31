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
</head>
<body>
	<div class="container-fluid ">
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
					<input type="submit" value="Cerrar Sesi�n" class="btn btn-dark"/>
				</div>
	  		</div>
		</nav>
		<div class= "header text-center">	
			<h1>Blog Patitas</h1>	
		</div>
	</div>
	<div class="container-fluid d-flex justify-content-center item align-items-center">
		<div class="text-center">
			<p>�Est�s a punto de adoptar a tu primer perro?, �Tu conejo sufre con los calores?, �No sabes cual juguete es mejor para tu gato? Pues quedate aqui, en esta secci�n descubriras un monton de datos, tips e informaci�n util para poder mejorar tu vida junto a la de tu mascota.</p>	
		</div>
		<div class="row justify-content-center">
			<div class="post"> 
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row row-cols-1 row-cols-md-2 g-4">
		  <div class="col">
		    <div class="card">
		      <img src="/img/conejo-pequeno.jpg" class="card-img-top" alt="conejo">
		      <div class="card-body">
		        <h5 class="card-title">Mi primer conejo</h5>
		        <p class="card-text">La llegada de un nuevo integrante a la familia nos llena de emoci�n, pero, �sabes que hacer cuando ese integrante es un conejo?.</p>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/perro-verano.jpg" class="card-img-top" alt="perro">
		      <div class="card-body">
		        <h5 class="card-title">Consejos para cuidar de tu perro en verano</h5>
		        <p class="card-text">Las altas temperaturas en la epoca de verano es algo que nos preocupa cuando de nuestros perrihijos se trata.</p>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/gato-negro" class="card-img-top" alt="gato">
		      <div class="card-body">
		        <h5 class="card-title">�Conocias estas curiosidades de los gatos?</h5>
		        <p class="card-text">Los gatos son animales fantasticos, pero tambi�n muy incomprendidos, por eso te ayudaremos con algunas curiosidades sobre ellos para que te sorprendas.</p>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/mascota" class="card-img-top" alt="mascota">
		      <div class="card-body">
		        <h5 class="card-title">Beneficios para la salud:�C�mo el tener una mascota ayuda a nuestra salud?</h5>
		        <p class="card-text">Seg�n m�ltiples estudios realizados a lo largo del tiempo se ha llegado a descubrir como los animales nos ayudan no solo a nuestra salud f�sica, sino que tambi�n mental.</p>
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
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/sociabilizacion.jpg" class="card-img-top" alt="sociabilizacion">
		      <div class="card-body">
		        <h5 class="card-title">Sociabilizaci�n entre conejos</h5>
		        <p class="card-text">Los conejos son animales sociables por lo que se sienten mejor compartiendo con otros conejos.Sin embargo, se tiene que hacer todo un proceso de sociabilizaci�n para que tu nuevo bunny pueda integrarse de la mejor manera al hogar.</p>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/discapacitado.jpg" class="card-img-top" alt="conejo discapacitado">
		      <div class="card-body">
		        <h5 class="card-title">Tengo un conejo discapacitado, �Qu� cuidados debe de tener?</h5>
		        <p class="card-text">Los conejos discapacitados necesitan de cuidados muy especificos para poder mejorar su calidad de vida, aqu� te daremos toda la informaci�n que necesitan para cuidar de tu bunny.</p>
		      </div>
		    </div>
		  </div>
		  <div class="col">
		    <div class="card">
		      <img src="/img/perro jugando" class="card-img-top" alt="jugando">
		      <div class="card-body">
		        <h5 class="card-title">Los mejores juguetes para tu perro</h5>
		        <p class="card-text">Existen multiples opciones a la hora de escoger un jueguete para tu perro, desde tipo, forma, necesidad que tenga tu perro, etc. Sabemos que el juego es fundamental para el desarrollo de tu perro, te ayudaremos a eligir el mejor jueguete para �l.</p>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
		<div class="container-fluid">
		<div class="row p=5" style="background-color: #82B8A0";>
			<div class="col-lg-3">
				<a href="https://www.instagram.com/bunnyloverscl/" class="btn btn"></a>
					<img src="/img/bunnylovers.jpg" class="card-img-top" alt="bunnylovers">
			</div>
			<div class="col-lg-3">
				<img src="/img/bunnycare.jpg" class="card-img-top" alt="bunnycare">
			</div>
			<div class="col-lg-3">
				<img src="/img/fundacion adopta.jpg" class="card-img-top" alt="fundacion adopta">
			</div>
			<div class="col-lg-3">
				<img src="/img/fundacion animalia.jpg" class="card-img-top" alt="fundacion animalia">
			</div>
			<div class="col-lg-3">
				<img src="/img/fundacion jacinto.jpg" class="card-img-top" alt="fundacion jacinto">
			</div>
			<div class="col-lg-3">
				<img src="/img/fundacion vyra.jpg" class="card-img-top" alt="fundacion vyra">
			</div>
		</div>
	</div>
</body>
</html>