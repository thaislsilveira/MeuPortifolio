<%-- 
    Document   : alterarTrabalho
    Created on : 29/11/2018, 00:52:54
    Author     : thais.silveira
--%>

<%@page import="br.com.crudPortifolio.model.Trabalho"%>
<%@page import="br.com.crudPortifolio.model.Materia"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros Fatec</title>
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
                            <h3>Alterar Trabalhos</h3>
                            <hr>
                            <p class="p-geral">
                                O cadastro de Trabalhos precisa conter o nome do Trabalho,
                                a descrição do que foi realizado, uma foto relacionado e a Matéria.
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
                                    <form  name="alterartrabalho" action="AlterarTrabalho"
                                           method="POST" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="idTrabalho" id="idTrabalho" class="form-control" value="${trabalho.idTrabalho}" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="nomeTrabalho" id="nomeTrabalho" class="form-control" value="${trabalho.nomeTrabalho}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="descricao" id="descricao" class="form-control" value="${trabalho.descricao}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="file" name="imagem" id="imagem"  class="form-control" value="${trabalho.imagem}">
                                                <input type="hidden" name="imagemTrabalho64" value="${trabalho.imagem}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <select name="idMateria" class="custom-select">
                                                    <%
                                                        List<Materia> materias = (List<Materia>) request.getAttribute("materias");
                                                        for (Materia materia : materias) {
                                                    %>               
                                                    <option value="<%= materia.getIdMateria()%>" <%= (((Trabalho) request.getAttribute("trabalho")).getMateria().getIdMateria()) == materia.getIdMateria() ? "selected" : ""%>><%= materia.getNomeMateria()%></option>                    
                                                    <% }%>
                                                </select>   
                                            </div>
                                        </div>
                                        <div class="form-group">                                          
                                            <input type="submit" class="btn btn-primary" name="cadastrar" 
                                                   id="cadastrar" value="Alterar" />
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

