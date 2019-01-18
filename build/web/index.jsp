<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
	<title>Thais Portifolio</title>
	<meta charset="UTF-8">
	<meta name="description" content="Thaís Laine Neves da Silveira">
	<meta name="keywords" content="personal, portfolio">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="cubeportfolio/css/cubeportfolio.min.css"/>
    <link rel="stylesheet" href="css/colors/red.css" id="color"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/outros.css"/>
    <link rel="stylesheet" href="css/dark.css"/>
    <link rel="shortcut icon" href="images/logo/icone-thais.png" />
    <link rel="icon" href="images/logo/icone-thais.png" />

    <!-- Google Web fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Waiting+for+the+Sunrise" rel="stylesheet" type="text/css"/>

    <!-- Font icons -->
    <link rel="stylesheet" href="icon-fonts/fontawesome-5.0.6/css/fontawesome-all.min.css"/>
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
        <img src="images/logo/logo-transparente.png" style="width: 200px;" alt="logotipo">
        <div class="nav-icon">
            <span></span>
            <span></span>
            <span></span>
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
        <section class="home">
            <div id="particles-js"></div>
            <div class="home-content">
                <div id="typedtext"></div>                    
                <div class="social">
                    <a class="text">redes sociais</a>
                    <div class="line"></div>
                    <a href="https://www.facebook.com/thais.silveira.3517"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.instagram.com/thais_lsilveira/"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                    <a href="https://github.com/thaislsilveira"><i class="fab fa-github" aria-hidden="true"></i></a>
                    <a href="https://br.linkedin.com/in/tha%C3%ADs-laine-neves-da-silveira-455113137"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                </div>
            </div>
        </section>
    </div>
    <footer>
       <div class="cont">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12 copyright">                   
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
    <script src="js/main.js"></script>
    <script src="js/interacoes.js"></script>
</body>
</html>