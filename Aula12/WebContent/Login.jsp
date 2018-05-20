<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="bootstrap-4.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/estilo.css">
<link href="https://fonts.googleapis.com/css?family=Hi+Melody" rel="stylesheet">
<script defer src="fontawesome/svg-with-js/js/fontawesome-all.js"></script>
<link rel="icon" href="CSS/paises_desenvolvimento.ico" type="image/x-icon" />
<link rel="shortcut icon" href="CSS/paises_desenvolvimento.ico" type="image/x-icon" />
</head>

<body>

    <!-- Barra superior com os menus de navegacao -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    <div id="main" class="container">
       <h3 class="page-header">Login</h3>
       <!-- Formulario de Login -->
        <form class="conteudoA" action="controller.do" method="post" style="padding-top:30px; padding-bottom:70px;">
				<% String mensagem = (String) request.getAttribute("mensagem");
					if(mensagem != null){
						%><div class="row col-md-8" style="padding-bottom: 20px; float: right;">
					<text style="text-align:center; color:red; margin-left:-15px;"> <% out.println(mensagem); %> </text>
					</div> <% }
					else{		
						out.println("Por favor digite seu login e senha!");
				}%>
				 <!--  <div class="row col-md-9" style="padding-bottom: 20px; float: right;">
				<text style="text-align:center;">Por favor digite seu login e senha!</text>
				</div>-->
				<br>
				<br>
				
				
				<div class="row col-md-11">
				<div class="form-group">
					
					<div class="input-group col-md-11">
					   <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true">Email:&nbsp&nbsp</span></div> 
					   <input type="email" name="username" id="username" class="form-control" maxlength="60" placeholder="E-mail" required/>
					</div>
					
				</div>
				<div class="form-group">
					<div class="input-group col-md-11">
					   <div class="input-group-addon"><span class="glyphicon glyphicon-option-horizontal" aria-hidden="true">Senha:&nbsp</span></div> 
					   <input type="password" name="password" id="password" class="form-control" placeholder="Senha" required/>
					</div>
				</div>
				</div>
				<div class="row col-md-7" style="padding-bottom: 20px; float: right;">
					<button type="submit" class="btn btn-primary" name="command" value="FazerLogin"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Ok</button>
				</div>
			</form>    
			</div>
			
			
   <script src="bootstrap-4.1.0/assets/js/vendor/jquery-slim.min.js" ></script>
    <script src="bootstrap-4.1.0/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.1.0/dist/js/bootstrap.min.js"></script>
     
</body>

</html>