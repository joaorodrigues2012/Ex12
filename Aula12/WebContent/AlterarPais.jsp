<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Bandeiras - Alterar Pais</title>

            <link rel="stylesheet" href="bootstrap-4.1.0/dist/css/bootstrap.min.css">
			<link rel="stylesheet" href="CSS/estilo.css">
        </head>

        <body>
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Alterar Pais #${pais.id }</h3>
                    <!-- Formulario para alteração de clientes -->
                    <form class="conteudoA" action="controller.do" method="post">
                        <!-- area de campos do form -->
                        <input type="hidden" name="id" value="${pais.id }" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome do pais" value="${pais.nome }">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="populacao">População</label>
                                <input type="text" class="form-control" name="populacao" id="populacao" placeholder="EX: 71116"  title="somente numeros!!" value="${pais.populacao }">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="Area">Area</label>
                                <input type="text" class="form-control" name="area" id="populacao" placeholder="EX: 54514"  title="somente numeros!!" value="${pais.area }">
                            </div>
                        </div>
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="command" value="AlterarPais">Salvar</button>
                                <a href="index.jsp" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="bootstrap-4.1.0/assets/js/vendor/jquery-slim.min.js" ></script>
    <script src="bootstrap-4.1.0/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.1.0/dist/js/bootstrap.min.js"></script>
        </body>

        </html>