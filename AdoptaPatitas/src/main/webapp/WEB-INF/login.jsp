<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Inicio de Sesión</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
				crossorigin="anonymous">

			<link
				href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
				rel="stylesheet">


			<link rel="stylesheet" href="css/style.css">
			<link
				href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
				rel="stylesheet">
			<link rel="stylesheet" href="css/style.css">
		</head>

		<body>
			<div class="container">
				<div class="row">
					<div class="col-4">
						<h1>Inicia Sesión</h1>
						<c:if test="${errorMessage != null}">
							<p class="text-danger">${errorMessage}</p>
						</c:if>
						<form action="/login" method="POST">
							<div class="form-group">
								<label>Username</label>
								<input type="text" class="form-control" name="username" />
							</div>
							<div class="form-group">
								<label>Password</label>
								<input type="password" class="form-control" name="password" />
							</div>

							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="submit" class="btn btn-dark" value="Iniciar Sesión" />
						</form>
					</div>
				</div>
			</div>
		</body>

		</html>