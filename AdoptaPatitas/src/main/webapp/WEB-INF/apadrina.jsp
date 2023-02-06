<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE";>
	  			<div class="container-fluid">
	    			<a href="http://localhost:8080"><img src="images/adopta_patitas.png" width="30" height="30" class="d-inline-block align-top" alt="Logo"></a>
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
					</form>
				</div>
	  		</div>
		</nav>
		<div>
			<h2>�Que es Apadrinar?</h2>
			<p>Apadrinar un animal es ayudar monetariamente al animal para que pueda tener una mejor vida</p>
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
				<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img src="/img/Ramona.jpg" alt="Ramona" class="img-thumbnail" width="400" height="400"></a><p>Ramona</p>
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
				
				<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img src="/img/Zeta.png" alt="Zeta" class="img-thumbnail" width="400" height="400"></a><p>Zeta</p>
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/DSC5611-PS-495x400.jpg" alt="Megan" class="img-thumbnail"><p>Megan</p>
			</div>
		</div>
		<div style="background-color: #87CEFA">
			<p style="color: #0000FF">Paginas de apadrinamiento</p>
			<a href="https://fundacionhuellaanimal.cl/apadrina-un-animal-rescatado/"><img alt="Fundacion Huella Animal" src="/img/FHA-Blanco.png"  width="150" height="100"></a>
			<a href="https://m.facebook.com/Fundaci�n-Jacinto-106297028748431/"><img alt="SI" src="/img/FundacionJacinto.jpg"  width="100" height="100"></a>
		</div>
		<div class="container-fluid">
					<div class="row p=5" style="background-color: #82B8A0">
						<div class="col-lg-3">
							<a href="https://www.instagram.com/bunnyloverscl/"><img src="/img/bunnylovers.jpg" width="50" height="50" class="d-inline-block align-center" alt="bunnylovers"></a>
						</div>
						<div class="col-lg-3">
							<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" width="50" height="50" class="d-inline-block align-center" alt="bunnycare"></a>
						</div>
						<div class="col-lg-3">
						 	<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/fundacion adopta .png" width="50" height="50" class="d-inline-block align-center" alt="fundacion adopta"></a>
						</div>
						<div class="col-lg-3">
							<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" width="50" height="50" class="d-inline-block align-center" alt="fundacion animalia"></a>
						</div>
						<div class="col-lg-3">
							<a href="https://www.instagram.com/fundacionjacinto/"><img src="/img/fundacion jacinto.jpg" width="50" height="50" class="d-inline-block align-center" alt="fundacion jacinto"></a>
						</div>
						<div class="col-lg-3">
							<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" width="50" height="50" class="d-inline-block align-center" alt="fundacion vyra"></a>
						</div>
					</div>
				</div>
</body>
</html>