<%-- 
    Document   : adm
    Created on : 17/11/2018, 10:45:18
    Author     : Thais Silveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">       
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <title>Sistema de Padaria</title>

        <!-- Bootstrap core CSS -->
        <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
          <!-- Custom styles for this template -->
        <link href="dashboard.css" rel="stylesheet">
    </head>
    <body class="body-adm">
        <%@ include file="cabecalho.jsp"%>   
        <div class="container-fluid">
            <div class="row">           
                <%@ include file="sidebar.jsp"%>             
                <main role="main" class="col-md-12 ml-sm-auto col-lg-9 col-xl-10 pt-3 px-4">
                    <!-- Conteúdo -->
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dados Gerais de Cadastros </h1>                        
                    </div>
                    <div class="row mb-3">
                        <div class="col-xl-3 col-sm-6 py-2">
                            <div class="card bg-success text-white h-100">
                                <div class="card-body bg-success">
                                    <div class="rotate">
                                        <i class="fa fa-user fa-4x"></i>
                                    </div>
                                    <h6 class="text-uppercase">Professsores</h6>
                                    <h1 class="display-4">${qtdProfessor}</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 py-2">
                            <div class="card text-white bg-danger h-100">
                                <div class="card-body bg-danger">
                                    <div class="rotate">
                                        <i class="fa fa-file fa-4x"></i>
                                    </div>
                                    <h6 class="text-uppercase">Trabalhos</h6>
                                    <h1 class="display-4">${qtdTrabalho}</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 py-2">
                            <div class="card text-white bg-info h-100">
                                <div class="card-body bg-info">
                                    <div class="rotate">
                                        <i class="fa fa-book fa-4x"></i>
                                    </div>
                                    <h6 class="text-uppercase">Matérias</h6>
                                    <h1 class="display-4">${qtdMaterias}</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 py-2">
                            <div class="card text-white bg-warning h-100">
                                <div class="card-body">
                                    <div class="rotate">
                                        <i class="fa fa-archive fa-4x"></i>
                                    </div>
                                    <h6 class="text-uppercase">Semestres</h6>
                                    <h1 class="display-4">${qtdSemestre}</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <%@ include file="rodape.jsp" %>
            </div>
        </div>
    </body>
</html>
