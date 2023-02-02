<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login y Register - MagtimusPro</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="css/style.css">
</head>
<body>

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
                    <form action="/registration"  modelAttribute="user" method="POST" class="formulario__login">
                        <h2>Iniciar Sesi�n</h2>
                        
                        <input type="text" placeholder="Usuario" class="form-control" name="username">
                        
                        <input type="password" placeholder="Contrase�a" class="form-control" name="password">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" value="Iniciar Sesi�n" class="btn btn-dark">
                    </form>

                    <!--Register-->
                    <form action="" method="POST" class="formulario__register">
                        <h2>Reg�strarse</h2>
                        <input type="text" placeholder="Usuario">
                        <form:password path="password" class="form-control"/>
							<form:errors path="password" class="text-danger"/>
                        
                        <input type="password" placeholder="Contrase�a">
                        <form:password path="password" class="form-control"/>
							<form:errors path="password" class="text-danger"/>
                        
                        <input type="password" placeholder="Contrase�a">
                        <form:password path="passwordConfirmation" class="form-control"/>
							<form:errors path="passwordConfirmation" class="text-danger"/>
                        
                            <input type="submit" value="Reg�strarme" class="btn btn-dark">
                    </form>
                </div>
            </div>  

        </main>

        <script src="js/funtionlogin.js"></script>
</body>
</html>