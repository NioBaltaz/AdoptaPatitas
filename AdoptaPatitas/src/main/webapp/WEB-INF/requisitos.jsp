<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Requisitos de Adopci�n</title>
	</head>
	<body>
		<h1>Aqui ira el formulario y la informaci�n de los requisito</h1>
		<form action="/logout" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Cerrar Sesi�n" class="btn btn-dark"/>
		</form>
	</body>
</html>