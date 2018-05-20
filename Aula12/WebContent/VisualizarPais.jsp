<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>bandeiras - Visualizar Pais</title>

            <link rel="stylesheet" href="bootstrap-4.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/estilo.css">
        </head>

        <body>
                <!-- Modal -->
                <div class="modal" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h4 class="modal-title" id="modalLabel">Excluir Pais</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Deseja realmente excluir este pais?
                            </div>
                            <div class="modal-footer">
                                <form action="controller.do" method="post">
                                    <input type="hidden" name="id" value="${pais.id }" />
                                    <button type="submit" class="btn btn-primary" name="command" value="ExcluirPais">Sim</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Visualizar Paises #${pais.id }</h3>
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="page-header"><strong style="font-size:60px">Nome</strong></h3>
                            
                            <p>
                                ${pais.nome }
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="page-header"><strong style="font-size:60px">População</strong></h3>
                            
                            <p>
                                ${pais.populacao }
                            </p>
                        </div>
                        <div class="col-md-6">
                            <h3 class="page-header"><strong style="font-size:60px">Area</strong></h3>
                            
                            <p>
                                ${pais.area }
                            </p>
                        </div>
                    </div>
                    <hr / style="margin-top: 0rem; margin-bottom:0rem;">
                    <div id="actions" class="row conteudoB">
                        <div class="col-md-12" style="text-align: right;">
                            <a href="controller.do?command=EditarPais&id=${pais.id }" class="btn btn-primary">Editar</a>
                            <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                            <a href="index.jsp" class="btn btn-default">Voltar</a>
                        </div>
                    </div>
                </div>
                <script src="bootstrap-4.1.0/assets/js/vendor/jquery-slim.min.js" ></script>
    <script src="bootstrap-4.1.0/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.1.0/dist/js/bootstrap.min.js"></script>
        </body>

        </html>