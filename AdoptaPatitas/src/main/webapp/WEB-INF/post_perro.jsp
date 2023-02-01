<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perros en verano</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid ">
		<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE;">
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
	</div>
	<div class="container text-center">
		<h1>Consejos para cuidar de tu perro en verano</h1>
	</div>
	<div class="container">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="post_content">
					<p>Las altas temperaturas en la epoca de verano es algo que nos preocupa cuando de nuestros perrihijos se trata.En época de verano las temperaturas suelen ser bastantes extremas por lo que es muy importante saber como cuidar a nuestros peluditos para mantenerlos los mas cómodos posibles y así evitar los golpes que calor que son frecuentes en tiempos de calor.</p>
					<h2>7 Consejos para proteger a tu perro de las altas temperaturas</h2>
					<h3>1.- No lo expongas al sol</h3>
					<p>Evita sacarlo a pasear en las horas donde el sol esta pegando más fuerte, prefiere sacarlo en la mañana temprano en en las tardes donde este mas fresco y no se corra el riesgo de quemar sus patitas. Recuerda siempre llevar agua para mantenerlo hidratado.
					<strong>Haz la prueba de la mano,</strong>antes de salir a pasear pon tu mano pegada al suelo si la puedes mantener por más de 5 segundos es seguro para tu peludito salir a pasear, pero, si por el contrario, sientes molestias en tu mano producto del calor del suelo <strong>¡No lo saques!</strong></p>
					<h3>2.- Mojalo</h3>
					<p>Mojar sobre todo en la cabeza y en el tronco puede ayudar a bajar la temperatura del perro. Los perros no sudan como las personas y el agua con la que se mojan, al evaporar, provoca un efecto parecido al sudor.</p>
					<h3>3.-No lo dejes en el auto</h3>
					<p>El automóvil retiene más calor que el área exterior incluso si está estacionado en la sombra. La temperatura de tu perro puede elevarse rápidamente y provocarle casos graves de insolación, colapso y fallecimiento, en menos tiempo del que pensamos.</p>
					<h3>4.- Corta su pelo</h3>
					<p> Cuando se corta el pelo, lo importante es dejar unos 2-3 centímetros aproximados de longitud ya que el pelo en parte protege del calor y de las quemaduras solares. El pelo es una capa protectora muy importante para el cuidado de nuestros perros, por lo que rasurarlo solo crearia mas problemas y lo pondría en peligro de quemaduras.</p>
				</div>
</body>
</html>