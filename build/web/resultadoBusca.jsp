<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <title>thais silveira</title>
        <meta charset="UTF-8">
        <meta name="description" content="Thais Laine Neves da Silveira">
        <meta name="keywords" content="personal, portfolio">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/barra_busca.css"/>

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="cubeportfolio/css/cubeportfolio.min.css"/>
        <link rel="stylesheet" href="css/owl.theme.css"/> 
        <link rel="stylesheet" href="css/owl.carousel.css"/> 
        <link rel="stylesheet" href="css/colors/red.css" id="color"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/dark.css"/>

        <!-- Google Web fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800" rel="stylesheet">

        <!-- Font icons -->
        <link rel="stylesheet" href="icon-fonts/fontawesome-5.0.6/css/fontawesome-all.min.css"/>
        <link rel="stylesheet" href="icon-fonts/flaticon/flaticon.css" />


    </head>
    <body>

        <!-- PRELOADER -->
        <div class="preloader">
            <div class="loader">
                <div class="loader-inner"></div>
            </div>
        </div>

        <!-- HEADER -->
        <header>
            <a href="index.jsp"><img src="images/logo/logo-transparente.png" style="width: 200px;" alt="logotipo"></a>
            <div class="nav-icon">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="nav-icon-busca">
                <div id="container-busca">
                    <form action="Search" method="get">
                        <input id="busca" name="busca" type="text" placeholder="Buscar...">
                        <div id="container-search"></div>
                    </form>
                </div>
            </div>   
        </header>
        <!-- FULL MENU -->
        <div class="full-menu">
            <div class="full-inner row">
                <nav class="col-md-8">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="sobre.jsp">Sobre</a></li>
                        <li><a href="semestres.jsp">Semestres</a></li>                     
                    </ul>
                </nav>
                <div class="col-md-4 full-contact">
                    <ul>
                        <li class="title">Contato</li>
                        <li>thais.silveira@fatec.sp.gov.br</li>
                        <li>
                            <div class="social">
                                <a href="https://www.facebook.com/thais.silveira.3517"><i class="fab fa-facebook"></i></a>
                                <a href="https://www.instagram.com/thais_lsilveira/"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                                <a href="https://github.com/thaislsilveira"><i class="fab fa-github" aria-hidden="true"></i></a>
                                <a href="https://br.linkedin.com/in/tha%C3%ADs-laine-neves-da-silveira-455113137"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>  
        <!-- SITE CONTENT -->
        <div class="wrapper">           
            <section class="titlebar">
                <h3 class="title-white">Matérias / Professores</h3>
            </section>
            <hr class="col-md-6 bottom_90">
            <div class="cont">
                <section id="portfolio" class="portfolio"> 
                    <div class="portfolio-filter row materia">
                        <div data-filter=" " class="cbp-filter-item"><a href="javascript:window.history.go(-1)">Voltar ↪</a></div>
                    </div>
                    <c:choose>
                        <c:when test="${not empty materias}">
                            <div class="card-deck card-deck-modifier">
                                <c:forEach var="materia" items="${materias}">
                                    <div class="card border-0">
                                        <div class="card-body text-white" style="background: #FF5C66;padding: 2.5em 0">
                                            <a href="materia?idMateria=${materia.idMateria}">
                                                <h5 class="text-white">${materia.nomeMateria}</h5>
                                                <p class="card-text">Prof(a). ${materia.professor.nomeProfessor}</p>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>            
                        </c:when>

                        <c:otherwise>
                            <div class="cbp-item">
                                <div class="container">
                                    <h3 class="text-white text-center no-animate">Nenhuma matéria ou Professor encontrado.</h3>
                                </div> 
                            </div>
                        </c:otherwise>
                    </c:choose>
                    <section class="titlebar">
                        <h3 class="title-white">Trabalho</h3>
                    </section>
                    <hr class="col-md-6 bottom_90">
                    <c:choose>
                        <c:when test="${not empty trabalhos}">
                            <c:forEach var="trabalho" items="${trabalhos}">
                                <section class="portfolio-single type-1 top_90">
                                    <span><a style="color: #FF5C66" href="javascript:window.history.go(-1)">Voltar</a></span>                                
                                    <h1 class="title bottom_15">${trabalho.nomeTrabalho}</h1>
                                    <hr>
                                    <ul class="information">
                                        <li></li>
                                        <li><span>Matéria:</span> ${materia.nomeMateria}</li>
                                    </ul>

                                    <p>${trabalho.descricao}</p>
                                    <figure class="hero-image">
                                        <img class="text-center img-thumbnail d-inline mr-2 img-fluid" id="imagem" src="${trabalho.imagem != null ? trabalho.imagem : (pageContext.request.contextPath).concat("/imagens/figura.png")}">
                                    </figure>
                                </section>
                                <hr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <div class="cbp-item">
                                <div class="container">
                                    <h3 class="text-white text-center no-animate">Nenhum trabalho encontrado</h3>
                                </div> 
                            </div>
                        </c:otherwise>
                    </c:choose>
                </section>
                <hr class="top_90 bottom_90 col-md-8">           
            </div> <!-- cont end -->
        </div> <!-- wrapper end -->
        <footer>
            <div class="cont">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12 copyright">
                        <img src="images/logo.png" alt="">
                        <p>© 2018 <span style="color: #FF5C66"> Thais Silveira </span> </p>
                    </div>
                    <div class="col-md-4 d-sm-none d-md-block">
                        <div class="social">
                            <a href="https://www.facebook.com/thais.silveira.3517"><i class="fab fa-facebook"></i></a>
                            <a href="https://www.instagram.com/thais_lsilveira/"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                            <a href="https://github.com/thaislsilveira"><i class="fab fa-github" aria-hidden="true"></i></a>
                            <a href="https://br.linkedin.com/in/tha%C3%ADs-laine-neves-da-silveira-455113137"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 d-none d-sm-block getintouch">
                        <a href="mailto:thais.silveira@fatec.sp.gov.br">
                            <strong>Contato</strong><br>
                            <p>thais.silveira@fatec.sp.gov.br</p>
                        </a>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Javascripts -->
        <script src="js/jquery-2.1.4.min.js"></script>    
        <script src="cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
        <script src="js/typed.js"></script>
        <script src="js/particles.js"></script>
        <script src="js/app.js"></script>
        <script src="js/jquery.hover3d.js"></script>
        <script src="twitter-api/tweetie.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>