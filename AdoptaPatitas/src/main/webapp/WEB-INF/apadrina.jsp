<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style> 
        
        	body{
        		background-image: linear-gradient(160deg, #ffd976 0, #f6de76 7.14%, #e9e278 14.29%, #dbe67c 21.43%, #ccea82 28.57%, #bded89 35.71%, #aef092 42.86%, #9df29d 50%, #8bf4a9 57.14%, #78f6b5 64.29%, #62f7c2 71.43%, #48f8d0 78.57%, #1ef9de 85.71%, #00f9ec 92.86%, #00f9fa 100%);
        	}
</style>
</head>
<body>
	<div class="container">
		<header class="row bg-primary">
			<form action="/logout" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="submit" value="Cerrar Sesión" class="btn btn-dark"/>
			</form>
	</header>
		<div class="row">
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/04/Berni.jpg" alt="Berni" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Carancho.jpg" alt="Carancho" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Coco.jpg" alt="Coco" class="img-thumbnail">
			</div>
		</div>
		<div class="row">
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Cristal.jpg" alt="Cristal" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2019/12/Estanislao-Monte.jpg" alt="Estanislao" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Firpa-y-Unhito.jpg" alt="Firpa y Unhito" class="img-thumbnail">
			</div>
		</div>
		<div class="row">
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Linda.jpg" alt="Linda" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/Sacha.jpg" alt="Maico y Sacha" class="img-thumbnail">
			</div>
			<div class ="col">
				<img src="https://pumakawa.org/wp-content/uploads/2020/02/DSC5611-PS-495x400.jpg" alt="Megan" class="img-thumbnail">
			</div>
		</div>
		<div>
			<p class="bg-primary">Aqui van los logos de las fundaciones de apadrinaje</p>
			<a href="https://beacons.ai/bunnylovers"><img alt="https://cdn.beacons.ai/profile_pictures/beacons/bunnylovers.png?t=1610816592830" src="https://cdn.beacons.ai/profile_pictures/beacons/bunnylovers.png?t=1610816592830"></a>
			<a href="https://m.facebook.com/Fundación-Jacinto-106297028748431/"><img alt="" src="https://scontent.fscl1-1.fna.fbcdn.net/v/t39.30808-6/317654356_170541632323970_8826124020592819500_n.jpg?stp=cp0_dst-jpg_e15_p403x403_q65&_nc_cat=104&ccb=1-7&_nc_sid=85a577&_nc_ohc=WSewFg6v0H4AX9MfBlt&_nc_ht=scontent.fscl1-1.fna&oh=00_AfBdAN6iPbIYib-viMNBlc1ehrKAUYLW9yQN5bhnTrDmyA&oe=63D71CA2"></a>
		</div>
	</div>
</body>
</html>