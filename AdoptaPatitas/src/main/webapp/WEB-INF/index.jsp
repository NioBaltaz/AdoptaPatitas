<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adopta Patitas</title>
    <link href="./css/index.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
  <div class="containir">
    <div class="container-fluid ">
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
		</div>
      <div class="Portada">
            <div class="v11_30">
                <img src="img/Salva.png" alt="perrito">
            </div>
      </div>
        <div class="row text-center" id="us">
        <h2> Nosotros</h2>
        <div>
          <p>Nos une el amor por los animales y luchamos por justicia y respeto para ellos. Tenemos a cargo animales rescatados del maltrato, la explotación y el abandono junto con fundaciones en refugios y hogares temporales, donde no solo podrás adoptar un compañero, sino que también apadrinar una vida que necesita de ayuda.
          <br>
          Nuestro objetivo es poder otorgar un canal entre varias fundaciones de distintas regiones de Chile para así poder tener un mayor alcance y salvar más animalitos. No solo ayudamos a perros y gatos, sino que también a conejos con ayuda con fundaciones como Bunny C.A.R.E y Fundación Jacinto.
          <br>
          <Strong>¡Somos felices haciendo lo que amamos!</Strong></p>
        </div>
      </div>
      <br>
      <div>      
          <figure class="caja1">
            <a href="/blogs" target="_blank"></a><img src="img/blog-conejo.png" alt="pr-sample15"  height="280px" width="1100px" />
           <div class="image"><img src="img/blog-conejo.png" alt="pr-sample15"  height="280px" width="1100px" /></div>
           <figcaption>
            <h3>Blogs</h3>
            <p>Informacion sobre tu animalito.</p>
          </figcaption><span class="read-more">
            Ver mas <i class="ion-android-arrow-forward"></i></span>
          <a href="/blogs"></a>
         </figure>
        
         <figure class="caja1">
            <img src="img/apadrina.png" alt="pr-sample15" height="280px" width="1100px"/>
            <div class="image"><img src="img/apadrina.png" alt="pr-sample15" height="280px" width="1100px" /></div>
            <figcaption>
              <h3>Apadrina</h3>
              <p>Te explicamos porqué apadrinar y las fundaciones que cuentan con esto</p>
            </figcaption><span class="read-more">
               
              Ver más <i class="ion-android-arrow-forward"></i></span>
            <a href="/apadrina"></a>
        
          </figure>
          <figure class="caja1">
            <img src="img/adopta.png.png" alt="pr-sample15"height="280px" width="1100px" />
            <div class="image"><img src="img/adopta.png.png" alt="pr-sample15"height="280px" width="1100px" /></div>
            <figcaption>
              <h3>Adopta</h3>
              <p>Aqui encontraras animalitos para adoptar</p>
            </figcaption><span class="read-more">
               
              ver más <i class="ion-android-arrow-forward"></i></span>
            <a href="/adopta"></a>
          </figure>
        <figure class="caja1">
          <img src="img/tienda.png" alt="pr-sample15" height="280px" width="1100px"/>
          <div class="image"><img src="img/tienda.png" alt="pr-sample15" height="280px" width="1100px"/></div>
          <figcaption>
            <h3>Tienda</h3>
            <p>Aqui encontraras articulos para tu mascota.</p>
          </figcaption><span class="read-more">
             
            ver más <i class="ion-android-arrow-forward"></i></span>
          <a href="/tienda"></a>
        </figure>
             
      </div>
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
    </div>
  <script src="js/index.js"></script>
</body>
</html>