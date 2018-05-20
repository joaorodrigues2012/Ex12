<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bandeiras - Criar Paises</title>

    <link rel="stylesheet" href="bootstrap-4.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/estilo.css">
</head>

<body>
    <!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 class="page-header">Incluir Pais</h3>
        <!-- Formulario para inclusao de pasises -->
        <form class="conteudoA" action="controller.do" method="post">
           <h3 class="fill"><i class="fas fa-globe"></i> CADASTRO DE PAÍSES</h3>
	<h2>Nome:</h2> <input type="text" name="nome" id="nome" placeholder="EX: Brasil" required pattern="[a-zA-Z\s]+$" title="somente letras!!"><br>
	<h2>População:</h2> <input type="number" name="populacao" id="populacao" placeholder="EX: 71116" required pattern="[0-9]+$" title="somente numeros!!"><br>
	<h2>Area:</h2> <input type="number" name="area" id="area" placeholder="EX: 54514" required pattern="[0-9]+$" title="somente numeros!!">
	<br><br><hr />
	<input class="btn btn-primary enviar" name="command" type="submit" value=CriarPais>
	<input class="btn btn-primary limpar" type="reset" id="limpar" value="limpar">
            
        </form>
    </div>
     <script src="bootstrap-4.1.0/assets/js/vendor/jquery-slim.min.js" ></script>
    <script src="bootstrap-4.1.0/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.1.0/dist/js/bootstrap.min.js"></script>
</body>

</html>