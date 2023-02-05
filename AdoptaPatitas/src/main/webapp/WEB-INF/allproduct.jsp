<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AllProducts</title>
</head>
<body>
<h1>Tabla productos</h1>
<div class="container">

	<table class="table is-fullwidth is-bordered">
			<thead class="dashtable">
				<tr>
					<td>Producto</td>
					<td>Codigo</td>
					<td>Precio</td>
					<td>Existencia</td>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${products}" var="product">
				<tr>
					<td><a href="//${product.id}">${product.name}</a></td>
					<td>${product.codigo}</td>
					<td>${product.precio}</td>
					<td>${product.existencia}</td>
					<td>
	
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
<a href="/admins/add/product/update" class="btn btn-dark">Editar</a>
</body>
</html>