<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AdoptaPatitas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <style> 
        
        	body{
        		background-image: linear-gradient(160deg, #ffd976 0, #f6de76 7.14%, #e9e278 14.29%, #dbe67c 21.43%, #ccea82 28.57%, #bded89 35.71%, #aef092 42.86%, #9df29d 50%, #8bf4a9 57.14%, #78f6b5 64.29%, #62f7c2 71.43%, #48f8d0 78.57%, #1ef9de 85.71%, #00f9ec 92.86%, #00f9fa 100%);
        	}
            h1 { 
                background-image: url("https://th.bing.com/th/id/R.f347bce976a4afa8cd2e7b33a10ce632?rik=troTyo5aiCVSEg&pid=ImgRaw&r=0"); 
                background-position: center 25%; 
                background-size: cover; 
                height:600px;
                margin: 0 px;
            }
            div.row nav a{
            	margin-left: 30%;
            	font-size: 35px;
            
            }
            div.row nav{
            background-color: transparent;
            }
            
            h2{
            text-align:center;
            font-size:70px;
			padding-top:150px;
            }
            
           .nosotros{
           text-align:center;
           font-size:30px;
           margin:40px;
           line-height: 50px;
           }
			h4{
			background-image: url(LogoAdoptaPatita2.0.jpeg);
    		background-size: cover;
			}
        </style> 
	</head>
	<body>
		<div class="container-fluid">
	
			<div class= "header">
				<h1></h1>
				<h4></h4> 
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
	      					<c:forEach items="${roles}" var="role">
								<c:if test="${role.name.equals('ROLE_ADMIN')}">
									<a class="nav-item nav-link btn btn-info" href="/administradores">Zona de Administradores</a>
								</c:if>
							</c:forEach>
    					</div>
  					</div>
				</nav>	
			</div>
	 
	 		<div class="row">
	 			<h2> Nosotros</h2>
	 			<div>
	 				<p class= "nosotros"> Nos une el amor por los animales y luchamos por justicia y respeto para ellos. Tenemos a cargo animales rescatados del maltrato, la explotación y el abandono en nuestro refugio y hogares temporales,donde podrás apadrinar también. El objetivo de esta página es otorgarles un canal entre varias fundaciones de distintas regiones de Chile. ¡Somos felices haciendo lo que amamos!</p>
				 </div>
	 
			</div>
	
	 		<div class="footer">
	 
	 			<h3>Aqui ira los nombres de las fundaciones con sus iconos y el boton que de a sus redes sociales</h3>
		 	
		 	</div>
		
		</div>
	</body>
</html>