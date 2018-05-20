<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Pais</title>
<link rel="stylesheet" href="bootstrap-4.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/estilo.css">
<link href="https://fonts.googleapis.com/css?family=Hi+Melody" rel="stylesheet">
<script defer src="fontawesome/svg-with-js/js/fontawesome-all.js"></script>
<link rel="icon" href="CSS/paises_desenvolvimento.ico" type="image/x-icon" />
<link rel="shortcut icon" href="CSS/paises_desenvolvimento.ico" type="image/x-icon" />
</head>
<body>
	<!-- Barra superior com os menus de navegação --> 
		  <c:import url="Menu.jsp"/>
	 <!-- Container Principal -->  
<form class="conteudoA">
<h3><i class="fas fa-globe"></i> PAíS CADASTRADO COM SUCESSO!!</h3>
<h2>PAÍS Id:</h2><p> #${pais.id}</p><br>
<h2>Nome:</h2> <p>${pais.nome}</p><br>
<h2>Poupulação:</h2> <p>${pais.populacao}</p><br>
<h2>Area:</h2> <p>${pais.area}</p>
<br><hr/>
 <a href="CriarPais.jsp" class="btn btn-primary enviar">cadastrar Novamente?</a> 
<br><br>
</form>
<script src="bootstrap-4.1.0/assets/js/vendor/jquery-slim.min.js" ></script>
    <script src="bootstrap-4.1.0/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.1.0/dist/js/bootstrap.min.js"></script>
</body>
</html>