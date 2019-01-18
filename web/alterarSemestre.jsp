<%-- 
    Document   : alterarSemestre
    Created on : 29/11/2018, 00:09:35
    Author     : thais.silveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar os Trabalhos</title>
    </head>
    <body class="body-adm">
        <%@ include file="cabecalho.jsp"%>   
        <div class="container-fluid">
            <div class="row">           
                <%@ include file="sidebar.jsp"%>             
                <main role="main" class="col-md-12 ml-sm-auto col-lg-9 col-xl-10 pt-3 px-4">
                    <!-- Conteúdo -->
                    <div class="row">
                        <div class="col-md-5">
                            <h3>Alterar o Semestre</h3>
                            <hr>
                            <p class="p-geral">
                                Em cadastro de Semestre é necessário o cadastro do semestre
                                exemplo: 1º Semestre.
                            </p>
                        </div>
                        <div class="col-md-7">
                            <div class="card">
                                <div class="card-body b-b">
                                    <div class="row">
                                        <div class="col col-xs-6">
                                            <h4>Formulário</h4>
                                        </div>                                        
                                    </div>
                                    <form  name="alterarsemestre" action="AlterarSemestre" 
                                           method="POST">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="idSemestre" id="idSemestre" class="form-control" value="${semestre.idSemestre}" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="nomeSemestre" id="nomeSemestre" class="form-control" value="${semestre.nomeSemestre}" >
                                            </div>
                                        </div>                                     
                                        <div class="form-group">                                          
                                            <input type="submit" class="btn btn-primary" name="alterar" 
                                                   id="cadastrar" value="Cadastrar" />
                                            <input type="reset" class="btn btn-secondary" name="limpar" 
                                                   id="limpar" value="Limpar" />                                           
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Fim do conteúdo -->
                </main>
            </div>
        </div>
        <%@ include file="rodape.jsp" %>
    </body>
</html>