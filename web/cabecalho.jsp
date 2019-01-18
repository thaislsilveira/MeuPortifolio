<%-- 
    Document   : cabecalho
    Created on : 11/11/2018, 20:10:04
    Author     : Thais Silveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="images/logo/icone-thais.png" />
        <link rel="icon" href="images/logo/icone-thais.png" />

        <title>Cabecalho</title>
    </head>
    <body>
        <nav class="cabecalho navbar navbar-dark p-2">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index.jsp"><img src="imagens/logo/logo-transparente.png" style="width: 150px;"></a>     
            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse text-center d-lg-none" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
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
    </nav>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>

