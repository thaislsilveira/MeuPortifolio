<%-- 
    Document   : sobre
    Created on : 17/11/2018, 12:59:06
    Author     : Thais Silveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/barra_busca.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="cubeportfolio/css/cubeportfolio.min.css" />
        <link rel="stylesheet" href="css/owl.theme.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/colors/red.css" id="color" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/outros.css" /> 
        <link rel="stylesheet" href="css/dark.css" />  
        <link rel="stylesheet" href="css/base.css">  
        <link rel="shortcut icon" href="images/logo/icone-thais.png" />
        <link rel="icon" href="images/logo/icone-thais.png" />


        <!-- Google Web fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800" rel="stylesheet">

        <!-- Font icons -->
        <link rel="stylesheet" href="icon-fonts/fontawesome-5.0.6/css/fontawesome-all.min.css" />
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
                    <li class="breadcrumb-item active" aria-current="page">Sobre</li>
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
            <section class="home">           
                <div class="row section-intro">
                    <div class="col-twelve">        
                        <h5 class="sobre">Sobre</h5> 
                        <div class="intro-info">        
                            <img src="images/profile.jpg" alt="Profile Picture">        
                            <p class="lead">Nasci em Jales, atualmente tenho 21 anos, curso Sistemas para Internet na FATEC Jales
                                tenho grande paixão pela causa animal, estou sempre em busca de conhecimento.
                                <br/>"Desistir ? Jamais!"
                            </p>
                        </div>        
                    </div>
                </div> 
                <br/>
                <div class="row about-content">        
                    <div class="col-six tab-full">            
                        <h3>Perfil</h3>
                        <p class="perfil">Aqui estão listadas as minhas informações pessoais.</p>
                        <br/>
                        <ul class="info-list">
                            <li>
                                <strong>Nome:</strong>
                                <span>Thaís Laine Neves da Silveira</span>
                            </li>
                            <li>
                                <strong>Data de Nascimento:</strong>
                                <span> 21 de junho de 1997</span>
                            </li>                                                          
                            <li>
                                <strong>Email:</strong>
                                <span>thais.silveira@fatec.sp.gov.br</span>
                            </li>        
                        </ul>        
                    </div>                     
                    <div class="col-six tab-full">        
                        <h3>Habilidades</h3>
                        <p class="perfil">Aqui estão listadas as habilidades adquiridas.</p>        
                        <ul class="skill-bars">
                            <li>
                                <div class="progress percent80"><span>80%</span></div>
                                <strong>HTML5</strong>
                            </li>
                            <li>
                                <div class="progress percent80"><span>80%</span></div>
                                <strong>CSS3</strong>
                            </li>
                            <li>
                                <div class="progress percent70"><span>70%</span></div>
                                <strong>JQuery</strong>
                            </li>
                            <li>
                                <div class="progress percent75"><span>75%</span></div>
                                <strong>PHP</strong>
                            </li>
                            <li>
                                <div class="progress percent75"><span>75%</span></div>
                                <strong>Java</strong>
                            </li>        
                        </ul>      
                    </div> 
                </div> 
            </section>       
        </div>
        <div class="wrapper curriculo">
            <section class="home">                         
                <!-- resume Section========== -->
                <div class="limpar"></div>
                <section id="resume" class="grey-section">
                    <div class="row section-intro">
                        <div class="col-twelve">
                            <h5>Currículo</h5>
                            <h1>Mais sobre minhas credênciais.</h1>
                            <p class="lead">Empresas nas quais trabalhei ou faço parte.</p>
                        </div>   		
                    </div>
                    <div class="row resume-timeline">
                        <div class="col-twelve resume-header">
                            <h2>Experiência de trabalho</h2>
                        </div>
                        <div class="col-twelve">
                            <div class="timeline-wrap">
                                <div class="timeline-block">
                                    <div class="timeline-ico">
                                        <i class="fa fa-briefcase"></i>
                                    </div>
                                    <div class="timeline-header">
                                        <h3>Lume Tecnologia</h3>
                                        <p>Novembro 2018 - Presente</p>
                                    </div>
                                    <div class="timeline-content">
                                        <h4>Estágio</h4>
                                        <p class="texto-experiencia">
                                            Monitorar ambientes e execução de testes;
                                        </p>
                                        <p class="texto-experiencia">
                                            Realizar apoio em provisionamento de infraestrutura de virtualização (VMware e Hyper-V);
                                        </p>
                                        <p class="texto-experiencia">
                                            Realizar apoio operacional;
                                        </p>
                                        <p class="texto-experiencia">
                                            Realizar atividades de apoio para sistemas de proteção de dados (Veritas Netbackup e IBM Spectrum Protect);
                                        </p>
                                        <p class="texto-experiencia"> Realizar atividades 
                                            operacionais em banco de dados (IBM DB2 e PostgreSQL); </p> 
                                        <p class="texto-experiencia">
                                            Auxiliar na elaboração de relatórios; 
                                        </p> 
                                        <p class="texto-experiencia">
                                            Auxiliar na manipulação de banco de dados;
                                        </p> 
                                        <p class="texto-experiencia">
                                            Auxiliar nos testes de sistemas;
                                        </p>
                                    </div>
                                </div> 
                                <div class="timeline-block">
                                    <div class="timeline-ico">
                                        <i class="fa fa-briefcase"></i>
                                    </div>
                                    <div class="timeline-header">
                                        <h3>UAB - Polo de Jales</h3>
                                        <p>Julho 2017 - Outubro 2018</p>
                                    </div>
                                    <div class="timeline-content">
                                        <h4>Estágio</h4>
                                        <p class="texto-experiencia">Estágio com atividades relacionadas ao auxílio de tutores no Polo UAB de Jales, como:<br><br></p> 
                                        <p class="texto-experiencia"> - Orientação aos alunos do sistemas e metodologias utilizadas.</p>
                                        <p class="texto-experiencia"> - Montagem e manutenção dos equipamentos relacionados ao sistema de vídeo conferência.</p> 
                                        <p class="texto-experiencia"> - Manutenção dos laboratórios.</p>
                                    </div>
                                </div>
                                <div class="timeline-block">
                                    <div class="timeline-ico">
                                        <i class="fa fa-briefcase"></i>
                                    </div>
                                    <div class="timeline-header">
                                        <h3>Cia de Saneamento Básico do Estado de São Paulo - SABESP</h3>
                                        <p>Julho 2012 - Junho 2014</p>
                                    </div>
                                    <div class="timeline-content">
                                        <h4>Aprendiz</h4>
                                        <p class="texto-experiencia">
                                            Desempenhava trabalhos relacionados no setor administrativo da empresa,
                                            especificamente na Área de Recursos Humanos
                                        </p>
                                        <p class="texto-experiencia">Atendimento a clientes e ao telefone</p>       
                                    </div>
                                </div>                   
                                <div class="timeline-block">
                                    <div class="timeline-ico">
                                        <i class="fa fa-briefcase"></i>
                                    </div>
                                    <div class="timeline-header">
                                        <h3>Estúdio JR Produções</h3>
                                        <p>Julho 2010 - Junho 2012</p>
                                    </div>
                                    <div class="timeline-content">
                                        <h4>Estágio</h4>
                                        <p class="texto-experiencia"> Estágio direcionado em : <br><br></p>
                                        <p class="texto-experiencia"> - Edição de vídeos de rodeio.</p>
                                        <p class="texto-experiencia"> - Criação de clipes de casamento, aniversário, bodas, entre outros. </p>   
                                        <p class="texto-experiencia"> - Edição de vídeos e fotos.</p>
                                        <p class="texto-experiencia">(Conhecimento em Corel Draw, Photoshop, Premiere).</p>
                                    </div>
                                </div>                            			
                            </div>
                        </div>
                    </div>
                </section>
            </section>
        </div>      
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
