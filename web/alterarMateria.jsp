<%-- 
    Document   : alterarMateria
    Created on : 29/11/2018, 00:53:05
    Author     : thais.silveira
--%>

<%@page import="br.com.crudPortifolio.model.Materia"%>
<%@page import="br.com.crudPortifolio.model.Semestre"%>
<%@page import="br.com.crudPortifolio.model.Professor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros de Trabalho</title>
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
                            <h3>Alterar Matérias</h3>
                            <hr>
                            <p class="p-geral">
                                O cadastro de Matérias precisa conter o nome da Matéria, Professor e o 
                                Semestre em que o a Matéria foi aplicada. 
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
                                    <form  name="alterarmateria" action="AlterarMateria" 
                                           method="POST">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="idMateria" id="idMateria" class="form-control" value="${materia.idMateria}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="nomeMateria" id="nomeMateria" class="form-control" value="${materia.nomeMateria}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <select name="idProfessor" class="custom-select">
                                                    <%
                                                        List<Professor> professores = (List<Professor>) request.getAttribute("professores");
                                                        for (Professor professor : professores) {
                                                    %>               
                                                    <option value="<%= professor.getIdProfessor()%>" <%= (((Materia) request.getAttribute("materia")).getProfessor().getIdProfessor()) == professor.getIdProfessor() ? "selected" : ""%>><%= professor.getNomeProfessor()%></option>                    
                                                    <% }%>
                                                </select>   
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <select name="idSemestre" class="custom-select">
                                                    <%
                                                        List<Semestre> semestres = (List<Semestre>) request.getAttribute("semestres");
                                                        for (Semestre semestre : semestres) {
                                                    %>               
                                                    <option value="<%= semestre.getIdSemestre()%>" <%= (((Materia) request.getAttribute("materia")).getSemestre().getIdSemestre()) == semestre.getIdSemestre() ? "selected" : ""%>><%= semestre.getNomeSemestre()%></option>                    
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
