<%-- 
    Document   : sidebar
    Created on : 11/11/2018, 20:10:11
    Author     : Thais Silveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg d-none d-lg-block sidebar col-2">
            <!-- Painel do usuário -->
            <div class="user-panel p-3 light mb-2">
                <div>
                    <div class="float-left image">
                        <img class="user_avatar" src="imagens/avatar.png" alt="User Image">
                    </div>
                    <div class="float-left info">
                        <h6 class="font-weight-light mt-2 mb-1">Thaís Laine</h6>
                        <a href="#"><i class="icon-circle text-primary blink"></i> Online</a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- menu -->
            <div class="menu sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <div class="btn-group dropright">
                            <a class="btn btn-light" href="Painel"> 
                                <span data-feather="home"></span>
                                Home
                            </a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="btn-group dropright">
                            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span data-feather="users"></span>
                                Professores
                            </button>
                            <div class="dropdown-menu" x-placement="right-start" style="position: absolute; transform: translate3d(154px, 0px, 0px); top: 0px; left: 0px; will-change: transform;">
                                <a class="dropdown-item" href="professorCadastrar.jsp">Cadastrar</a>
                                <a class="dropdown-item" href="ListarProfessor">Listar</a>                                
                            </div>
                        </div>                      
                    </li>
                    <li class="nav-item">
                        <div class="btn-group dropright">
                            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span data-feather="book"></span>
                                Matérias
                            </button>
                            <div class="dropdown-menu" x-placement="right-start" style="position: absolute; transform: translate3d(154px, 0px, 0px); top: 0px; left: 0px; will-change: transform;">
                                <a class="dropdown-item" href="Materia">Cadastrar</a>
                                <a class="dropdown-item" href="ListarMateria">Listar</a>                                
                            </div>
                        </div>                      
                    </li>
                    <li class="nav-item">
                        <div class="btn-group dropright">
                            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span data-feather="file"></span>
                                Trabalhos
                            </button>
                            <div class="dropdown-menu" x-placement="right-start" style="position: absolute; transform: translate3d(154px, 0px, 0px); top: 0px; left: 0px; will-change: transform;">
                                <a class="dropdown-item" href="Trabalho">Cadastrar</a>
                                <a class="dropdown-item" href="ListarTrabalho">Listar</a>                                
                            </div>
                        </div>                      
                    </li> 
                     <li class="nav-item">
                        <div class="btn-group dropright">
                            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span data-feather="folder"></span>
                                Semestres
                            </button>
                            <div class="dropdown-menu" x-placement="right-start" style="position: absolute; transform: translate3d(154px, 0px, 0px); top: 0px; left: 0px; will-change: transform;">
                                <a class="dropdown-item" href="semestreCadastrar.jsp">Cadastrar</a>
                                <a class="dropdown-item" href="ListarSemestre">Listar</a>                                
                            </div>
                        </div>                      
                    </li>          
                </ul>
            </div>
        </nav>
        <!-- Icons -->
        <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
        <script>
            feather.replace()
        </script>
    </body>
</html>
