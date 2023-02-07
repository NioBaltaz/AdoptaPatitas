<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Requisitos de Adopci�n</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    	<link rel="stylesheet" href="/css/stylelogin.css">
	</head>
	<body>
			<div class="container-fluid ">
			<nav class="navbar navbar-expand-lg" style="background-color: #D9F0DE">
		 <img src="images/adopta_patitas.png" width="50" height="50" class="d-inline-block align-top" alt="Logo">
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
					<input type="submit" value="Cerrar Sesi�n" class="btn btn-dark"/>
					</form>
		  </div>
		</nav>
			<br>
			<div class= "header text-center">	

				<img src="/img/requisitos_de_adopcion.png" alt="requisitos de adopcion">

		</div>
	</div>
	
	<c:if test="${currentUser == null}">
		 <main>
            <div class="contenedor__todo">
                <div class="caja__trasera">
                    <div class="caja__trasera-login">
                        <h3>�Ya tienes cuenta?</h3>
                        <p>Inicia sesi�n para entrar en la p�gina.</p>
                        <button id="btn__iniciar-sesion">Iniciar Sesi�n</button>
                    </div>
                    <div class="caja__trasera-register">
                        <h3>�A�n no tienes cuenta?</h3>
                        <p>Reg�strate para que puedas iniciar sesi�n.</p>
                        <button id="btn__registrarse">Reg�strarse</button>
                    </div>
                </div>

                <!--Formulario de Login y registro-->
                <div class="contenedor__login-register">
                    <!--Login-->
                    <c:if test="${errorMessage != null}">
                        <p class="text-danger">${errorMessage}</p>
                    </c:if>
                    <form action="/login" method="POST" class="formulario__login">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username"/>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password"/>
                        </div>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" class="btn btn-dark" value="Iniciar Sesi�n"/>
                    </form>

                    <!--Register-->
                    <form:form action="/registration" method="POST" modelAttribute="user" class="formulario__register">
						<div class="form-group">
							<form:label path="username">Username</form:label>
							<form:input path="username" class="form-control"/>
							<form:errors path="username" class="text-danger"/>
						</div>
						
						<div class="form-group">
							<form:label path="password">Password</form:label>
							<form:password path="password" class="form-control"/>
							<form:errors path="password" class="text-danger"/>
						</div>
						
						<div class="form-group">
							<form:label path="passwordConfirmation">Confirmaci�n</form:label>
							<form:password path="passwordConfirmation" class="form-control"/>
							<form:errors path="passwordConfirmation" class="text-danger"/>
						</div>
						
						<input type="submit" value="Registrarme" class="btn btn-dark"/>
					</form:form>
                </div>
            </div>  
        </main>
	</c:if>

	<c:if test="${currentUser != null}">
		<div class="container">	
	<form:form action="/requisitos/form" method="POST" modelAttribute="newForm">
			<div class="row mt-5 ml-10 d-flex justify-content-center">
				<div class="col-6">

					<h1>Requisitos de Adopci�n </h1>

					<div class="form-group">
						<form:label path="nombre_mascota">Mascota a la cual est�s postulando</form:label>
						<form:input path="nombre_mascota" class="form-control" value="${pet.getName()}" readonly="true"/>
						<form:errors path="nombre_mascota" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="nombre_adoptante">Nombre del Adoptante</form:label>
						<form:input path="nombre_adoptante" class="form-control"/>
						<form:errors path="nombre_adoptante" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="comuna">Comuna</form:label>
						<form:input path="comuna" class="form-control"/>
						<form:errors path="comuna" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="telefono">Tel�fono</form:label>
						<form:input path="telefono" class="form-control"/>
						<form:errors path="telefono" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="email">Correo electr�nico</form:label>
						<form:input path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="edad">Edad</form:label>
						<form:input path="edad" class="form-control"/>
						<form:errors path="edad" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="ocupacion">Ocupaci�n</form:label>
						<form:input path="ocupacion" class="form-control"/>
						<form:errors path="ocupacion" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="miembros_familia">N�mero de los miembros de la familia</form:label>
						<form:input path="miembros_familia" class="form-control"/>
						<form:errors path="miembros_familia" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="localidad">Usted vive en</form:label>
						<form:input path="localidad" class="form-control"/>
						<form:errors path="localidad" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="costear">�Est� dispuesto a costear la atenci�n veterinaria, medicamentos y et�logo si fuese necesario?</form:label>
						<form:input path="costear" class="form-control"/>
						<form:errors path="costear" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="visitas">Est� dispuesto a que se realicen las visitas de seguimiento NO programadas?</form:label>
						<form:input path="visitas" class="form-control"/>
						<form:errors path="visitas" class="text-danger"/>
					</div>
					
					<div class="form-group">
						<form:label path="paseo">�Pasear al adoptado frecuentemente (perro)?</form:label>
						<form:input path="paseo" class="form-control"/>
						<form:errors path="paseo" class="text-danger"/>
					</div>
					<input type="submit" value="Enviar" class="btn btn-dark"/>					
				</div>
			</div>
		</form:form>
		<br>
		</div>		
		<div class="container-fluid py-4" style="background-color: #82B8A0">
			<h2 class="text-center">Nuestras Fundaciones</h2>
			<br>
			<footer class="d-flex justify-content-between">
				<a href="https://www.instagram.com/bunnycarecl/"><img src="/img/bunnycare.jpg" alt="bunny care" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionjacinto//"><img src="/img/fundacion jacinto.jpg" alt="fundacion jacinto" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionvyra/"><img src="/img/fundacion vyra.jpeg" alt="fundacion vyra" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacionanimalia/"><img src="/img/fundacion animalia.jpeg" alt="fundacion animalia" width="80" height="80" class="ml-2"></a>
				<a href="https://www.instagram.com/fundacion_adopta/"><img src="/img/adoptafundacion.png" alt="fundacion adopta" width="80" height="80" class="ml-2"></a>
			
			</footer>
		</div>
	</c:if>
	<!--  -->
		<script type="text/javascript">
		
		//Ejecutando funciones
		document.getElementById("btn__iniciar-sesion").addEventListener("click", iniciarSesion);
		document.getElementById("btn__registrarse").addEventListener("click", register);
		window.addEventListener("resize", anchoPage);

		//Declarando variables
		var formulario_login = document.querySelector(".formulario__login");
		var formulario_register = document.querySelector(".formulario__register");
		var contenedor_login_register = document.querySelector(".contenedor__login-register");
		var caja_trasera_login = document.querySelector(".caja__trasera-login");
		var caja_trasera_register = document.querySelector(".caja__trasera-register");

		    //FUNCIONES

		function anchoPage(){

		    if (window.innerWidth > 850){
		        caja_trasera_register.style.display = "block";
		        caja_trasera_login.style.display = "block";
		    }else{
		        caja_trasera_register.style.display = "block";
		        caja_trasera_register.style.opacity = "1";
		        caja_trasera_login.style.display = "none";
		        formulario_login.style.display = "block";
		        contenedor_login_register.style.left = "0px";
		        formulario_register.style.display = "none";   
		    }
		}

		anchoPage();


		    function iniciarSesion(){
		        if (window.innerWidth > 850){
		            formulario_login.style.display = "block";
		            contenedor_login_register.style.left = "10px";
		            formulario_register.style.display = "none";
		            caja_trasera_register.style.opacity = "1";
		            caja_trasera_login.style.opacity = "0";
		        }else{
		            formulario_login.style.display = "block";
		            contenedor_login_register.style.left = "0px";
		            formulario_register.style.display = "none";
		            caja_trasera_register.style.display = "block";
		            caja_trasera_login.style.display = "none";
		        }
		    }

		    function register(){
		        if (window.innerWidth > 850){
		            formulario_register.style.display = "block";
		            contenedor_login_register.style.left = "410px";
		            formulario_login.style.display = "none";
		            caja_trasera_register.style.opacity = "0";
		            caja_trasera_login.style.opacity = "1";
		        }else{
		            formulario_register.style.display = "block";
		            contenedor_login_register.style.left = "0px";
		            formulario_login.style.display = "none";
		            caja_trasera_register.style.display = "none";
		            caja_trasera_login.style.display = "block";
		            caja_trasera_login.style.opacity = "1";
		        }
		}
		</script>
	</body>
</html>
