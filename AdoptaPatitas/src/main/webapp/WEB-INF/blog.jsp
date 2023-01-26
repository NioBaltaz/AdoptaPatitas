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
	<div class="container">
	
			<div class= "header">	
				<h1>Blog Patitas</h1>	
			</div>
		
			<div class="row">
				<nav class="navbar navbar-expand-lg navbar-light">
  					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    					<span class="navbar-toggler-icon"></span>
  					</button>
  					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    					<div class="navbar-nav">
      						<a class="nav-item nav-link btn btn-outline-info " href="/blog">Blog</a>
      						<a class="nav-item nav-link btn btn-outline-info " href="/apadrina">Apadrina</a>
      						<a class="nav-item nav-link btn btn-outline-info " href="/adopta">Adopta</a>
      						<a class="nav-item nav-link btn btn-outline-info " href="/tienda">Articulos</a>
    					</div>
  					</div>
				</nav>	
			</div>
	</div>
	<div class="row justify-content-center">
		<p>¿Estás a punto de adoptar a tu primer perro?, ¿Tu conejo sufre con los calores?, ¿No sabes cual juguete es mejor para tu gato? Pues quedate aqui, en esta sección descubriras un monton de datos, tips e información util para poder mejorar tu vida junto a la de tu mascota.</p>	
	</div>
	<div class="row justify-content-center">
		<div class="post"> 
	aqui va la imagen
		</div>
		<div class="post_txt">
			<p class="post_categoria">Consejos</p>
			<h2 class="post_tittle">Que hacer cuando adoptas a tu primer conejo</h2>
			<p class="post_intro"></p>
			<p>Sin duda el tener una mascota nos llena de emoción y alegría, pero ¿Como es cuando es la primera vez que adoptas a un conejito? por eso aqui te damos una guía práctica de que hacer cuando adoptas a tu primer conejo.</p>
		</div>
			<form action="/logout" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
	</div>
</body>
</html>