<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Que hacer cuando adoptas a tu primer conejo</title>
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
	<div class="container">
		<div class="row align-items-start">
			<div class="post_box">
				<div class="post_head">
					<img src="/img/conejo-pequeno.jpg" class="card-img-top" alt="conejo">
				<div class="post_text-center">
					<h2 class="text-center">Mi primer conejo</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="post_content">
					<p>Sin duda el tener una mascota nos llena de emoción y alegría, pero ¿Como es cuando es la primera vez que adoptas a un conejito? por eso aqui te damos una guía práctica de que hacer cuando adoptas a tu primer conejo. La finalidad de poder entregar este bunny tip es lograr que tanto tu como tu conejito puedan tener una mejor experiencia en sus primeros dias de convivencia. Contando también con información directa de la fundación Bunny Lovers aseguramos que los consejos aquí presentes serán de total utilidad.</p>
					<h2>
						<strong>Primero que nada, ¿Qué es mejor?, ¿Adoptar o comprar un conejito?</strong>
					</h2>
					<p>Al igual que con los perros de razas, al comprar un conejo para tenerlo como compañero se contribuye a que siga creciendo la demanda por ellos, por lo que lugares como criaderos se seguirian manteniendo en pie y con ello el abuso y maltrato que estos hacen sobre estas criaturas, además que en criaderos no se asegura una "compra responsable" de los conejos por lo que no se estaria asegurando el bienestar de estos mismo en las manos de quienes los adquieren por compra. Es por esto que <strong>Siempre es recomendable la adopción</strong> y con esto también le das una oportunidad a estas criaturas de llegar a un hogar con familia responsable y comprometida con esta nueva vida.</p>
					<p>Existen fundaciones dedicadas a las adopciones responsables de conejos, asi como también del rescate de estos, como lo son Bunny C.A.R.E y Fundación Jacinto, las cuales tienen formularios de adopción a los que pueden acceder quienes quieran adoptar un conejito, ellos se aseguran que estas criaturas caigan en las mejores manos posibles y puedan vivir una vida con una familia responsable de todas las necesidades que este necesitaria.</p>
					<h2>Los cuidados basicos que se debe de tener</h2>
					<p>Se debe de tener en cuenta la edad de tu conejito ya que en cada etapa se tienen cuidados diferentes.</p>
					<h3>Alimentacion</h3>
					<p>Es indispensable tener heno y agua siempre a la disposicion de tu conejo ya que con el heno ellos desgastan sus dientes los cuales siempre estan en crecimiento.
					Si tu bunny tiene menos de 6 meses de edad el heno que le debes de dar en esa etapa de su vida es </p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>