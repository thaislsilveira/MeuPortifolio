<%-- 
    Document   : portifolio-materias
    Created on : 17/11/2018, 13:00:12
    Author     : Thais Silveira
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <title>Thaís Silveira - Portfolio</title>
        <meta name="description" content="Este é um site de blog pessoal de Thaís Silveira, contando um pouco sobre mim, área de atuação, cursos e currículo.">
        <meta name="keywords" content="thaís, silveira, portfolio, cursos, currículo, atuação, sobre">
        <meta name="robots" content="index, follow">
        <meta name="revisit-after" content="1 month">
        <meta name="language" content="Portuguese">
        <meta name="generator" content="N/A">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <!-- Facebook og meta tags-->
        <meta property="og:image" content="www.thaissilveira.com.br/images/logo/logo-bg.png">
        <meta property="og:image:type" content="image/png">
        <meta property="og:image:width" content="1000">
        <meta property="og:image:height" content="1000">
        <!-- Conteúdo para qualquer idade -->
        <META NAME="RATING" CONTENT="general" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Stylesheets -->
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="css/barra_busca.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="cubeportfolio/css/cubeportfolio.min.css"/>
        <link rel="stylesheet" href="css/owl.theme.css"/> 
        <link rel="stylesheet" href="css/owl.carousel.css"/> 
        <link rel="stylesheet" href="css/colors/red.css" id="color"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/dark.css"/>
        <link rel="icon" href="favicon.ico"/>
        <link rel="shortcut icon" href="favicon.ico"/>


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
            <div class="esquerda">
                <a href="index.jsp"><img src="images/logo/logo-transparente.png" style="width: 200px;" alt="logotipo"></a>     
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Semestres</li>
                </ol>
            </div>
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
                <h1 class="page-title"><span>Semestre</span></h1>
            </section>
            <hr class="col-md-6 bottom_60">
            <div class="cont">
                <section id="portfolio" class="portfolio">
                    <div class="portfolio-filter row">
                        <div data-filter=".2016" class="cbp-filter-item">2016</div>
                        <div data-filter=".2017" class="cbp-filter-item">2017</div>
                        <div data-filter=".2018" class="cbp-filter-item">2018</div>
                        <div data-filter=".2019" class="cbp-filter-item">2019</div>
                        <div data-filter="" class="cbp-filter-item">Todos</div>
                    </div>
                    <div id="grid-container">                                 
                        <!-- Item -->
                        <div class="cbp-item 2016">
                            <a href="semestre?idSemestre=13">
                                <figure class="fig">
                                    <img src="images/work-5.jpg" alt="">
                                    <figcaption>
                                        <h3>1º Semestre</h3>                                      
                                    </figcaption>
                                </figure>
                            </a>
                        </div> 
                        <!-- Item -->
                        <div class="cbp-item 2017">
                            <a href="semestre?idSemestre=14">
                                <figure class="fig">
                                    <img src="images/work-5.jpg" alt="">
                                    <figcaption>
                                        <h3>2º Semestre</h3>                                       
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <!-- Item -->
                        <div class="cbp-item 2017">
                            <a href="semestre?idSemestre=15">
                                <figure class="fig">
                                    <img src="images/work-5.jpg" alt="">
                                    <figcaption>
                                        <h3>3º Semestre</h3>                                    
                                    </figcaption>
                                </figure>
                            </a>
                        </div> 
                        <!-- Item -->
                        <div class="cbp-item 2018">
                            <a href="semestre?idSemestre=16">
                                <figure class="fig">
                                    <img src="images/work-4.jpg" alt="">
                                    <figcaption>
                                        <h3>4º Semestre</h3>                                       
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <!-- Item -->
                        <div class="cbp-item 2018">
                            <a href="semestre?idSemestre=17">
                                <figure class="fig">
                                    <img src="images/work-5.jpg" alt="">
                                    <figcaption>
                                        <h3>5º Semestre</h3>                                        
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <!-- Item -->
                        <div class="cbp-item 2019">
                            <a href="semestre?idSemestre=6">
                                <figure class="fig">
                                    <img src="images/work-5.jpg" alt="">
                                    <figcaption>
                                        <h3>6º Semestre</h3>                                        
                                    </figcaption>
                                </figure>
                            </a>
                        </div>                            
                    </div>                   
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