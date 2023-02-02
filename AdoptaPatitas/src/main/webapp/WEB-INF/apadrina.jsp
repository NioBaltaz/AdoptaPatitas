<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style> 
        
        	body{
        		background-image: linear-gradient(160deg, #ffd976 0, #f6de76 7.14%, #e9e278 14.29%, #dbe67c 21.43%, #ccea82 28.57%, #bded89 35.71%, #aef092 42.86%, #9df29d 50%, #8bf4a9 57.14%, #78f6b5 64.29%, #62f7c2 71.43%, #48f8d0 78.57%, #1ef9de 85.71%, #00f9ec 92.86%, #00f9fa 100%);
        	}
        	
</style>
</head>
<body>
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
					<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
				</div>
	  		</div>
		</nav>
		<div>
			<h2>¿Que es Apadrinar?</h2>
			<p>Apadrinar un animal es ayudar monetariamente al animal para que pueda tener una mejor vida</p>
		</div>
		<div class="row">
			<div class ="col">
				<img src="/img/Ramona.jpg" alt="Ramona" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="/img/Kafka.jpg" alt="Kafka" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="/img/Zeta.png" alt="Zeta" class="img-thumbnail">
			</div>
		</div>
		<div class="row">
			<div class ="col">
				<img src="/img/Roy.png" alt="Roy" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2019/12/Estanislao-Monte.jpg" alt="Estanislao" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Firpa-y-Unhito.jpg" alt="Firpa y Unhito" class="img-thumbnail">
			</div>
		</div>
		<div class="row">
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Linda.jpg" alt="Linda" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Sacha.jpg" alt="Maico y Sacha" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/DSC5611-PS-495x400.jpg" alt="Megan" class="img-thumbnail">
			</div>
		</div>
		<div>
			<p class="bg-primary">Aqui van los logos de las fundaciones de apadrinaje</p>
			<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img alt="Fundacion Huella Animal" src="/img/FHA-Blanco.png"></a>
			<a href="https://m.facebook.com/Fundación-Jacinto-106297028748431/"><img alt="SI" src="https://scontent.fscl1-1.fna.fbcdn.net/v/t39.30808-6/317654356_170541632323970_8826124020592819500_n.jpg?stp=cp0_dst-jpg_e15_p403x403_q65&_nc_cat=104&ccb=1-7&_nc_sid=85a577&_nc_ohc=WSewFg6v0H4AX9MfBlt&_nc_ht=scontent.fscl1-1.fna&oh=00_AfBdAN6iPbIYib-viMNBlc1ehrKAUYLW9yQN5bhnTrDmyA&oe=63D71CA2"></a>
		</div>
</body>
</html>