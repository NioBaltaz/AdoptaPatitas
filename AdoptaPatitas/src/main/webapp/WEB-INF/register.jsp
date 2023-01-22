<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Registro</title>
		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-4">
					<h1>Regístrate</h1>
					<form:form action="/registration" method="POST" modelAttribute="user">
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
		</div>
	</body>
</html>