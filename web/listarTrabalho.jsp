<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : listarTrabalho
    Created on : 15/11/2018, 22:29:43
    Author     : thais.silveira
--%>

<%@page import="br.com.crudPortifolio.model.Trabalho"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros</title>
    </head>
    <body class="body-adm">
        <%@ include file="cabecalho.jsp" %>
        <div class="container-fluid">
            <div class="row">  
                <%@ include file="sidebar.jsp" %>
                <main role="main" class="col-md-12 ml-sm-auto col-lg-9 col-xl-10 pt-3 px-4">
                    <!-- Conteúdo -->
                    <div class="row">
                        <div class="col col-xs-6">
                            <div class="input-group d-block mx-auto  m-2">
                                <h2>Trabalhos</h2>
                            </div>
                        </div>  
                        <div class="col col-xs-6 text-right">
                            <div class="input-group d-block mx-auto">
                                <a href="Trabalho" class="btn btn-primary m-2"><i class=" fa fa-user-plus"></i> Adicionar</a>                                                
                            </div>                                               
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th class="text-center">Nome</th>
                                    <th class="text-center">Descrição</th>
                                    <th class="text-center">Imagem</th>
                                    <th class="text-center">Matéria</th>
                                    <th class="text-center">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="trabalho" items="${trabalhos}">
                                    <tr>
                                        <td class="text-center">${trabalho.idTrabalho}</td>                     
                                        <td class="text-center">${trabalho.nomeTrabalho}</td>                  
                                        <td class="text-center">${trabalho.descricao}</td>  
                                        <td class="text-center">
                                            <img class="text-center img-thumbnail d-inline w-25 mr-2" id="imagem" src="${trabalho.imagem != null ? trabalho.imagem : (pageContext.request.contextPath).concat("/imagens/figura.png")}">
                                        </td>
                                        <td class="text-center">${trabalho.materia.nomeMateria}</td>   
                                        <td class="text-center">
                                            <a class="btn btn-default"  href="CarregarTrabalho?idTrabalho=${trabalho.idTrabalho}"><em class="fa fa-pencil"></em></a>
                                            <a class="btn btn-danger" href="ExcluirTrabalho?idTrabalho=${trabalho.idTrabalho}"><em class="fa fa-trash"></em></a>
                                        </td>                                             
                                    </tr>         
                                </c:forEach>                          
                            </tbody>
                        </table>
                    </div>                   
                    <!-- Fim do conteúdo -->
                </main>
                <%@ include file="rodape.jsp" %>
            </div>
        </div>       
    </body>
</html>