<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login y Register - MagtimusPro</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/stylelogin.css">
</head>
<body>
        <main>
            <div class="contenedor__todo">
                <div class="caja__trasera">
                    <div class="caja__trasera-login">
                        <h3>¿Ya tienes cuenta?</h3>
                        <p>Inicia sesión para entrar en la página.</p>
                        <button id="btn__iniciar-sesion">Iniciar Sesión</button>
                    </div>
                    <div class="caja__trasera-register">
                        <h3>¿Aún no tienes cuenta?</h3>
                        <p>Regístrate para que puedas iniciar sesión.</p>
                        <button id="btn__registrarse">Regístrarse</button>
                    </div>
                </div>

                <!--Formulario de Login y registro-->
                <div class="contenedor__login-register">
                    <!--Login-->                    
                    <form action="/login" method="POST" class="formulario__login">
                    	<c:if test="${errorMessage != null}">
                        	<p class="text-danger">${errorMessage}</p>
                    	</c:if>
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username"/>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password"/>
                        </div>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" class="btn btn-dark" value="Iniciar Sesión"/>
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
							<form:label path="passwordConfirmation">Confirmación</form:label>
							<form:password path="passwordConfirmation" class="form-control"/>
							<form:errors path="passwordConfirmation" class="text-danger"/>
						</div>
						
						<input type="submit" value="Registrarme" class="btn btn-dark"/>
					</form:form>
                </div>
            </div>  
        </main>
        <script src="js/login_register.js"></script>
</body>
</html>