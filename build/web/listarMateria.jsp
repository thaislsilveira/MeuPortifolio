<%-- 
    Document   : listarMateria
    Created on : 15/11/2018, 22:38:50
    Author     : thais.silveira
--%>

<%@page import="br.com.crudPortifolio.model.Materia"%>
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
                                <h2>Matérias</h2>
                            </div>
                        </div>  
                        <div class="col col-xs-6 text-right">
                            <div class="input-group d-block mx-auto">
                                <a href="Materia" class="btn btn-primary m-2"><i class=" fa fa-user-plus"></i> Adicionar</a>                                                
                            </div>                                               
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th class="text-center">Nome</th>
                                    <th class="text-center">Professor</th>
                                    <th class="text-center">Semestre</th>
                                    <th class="text-center">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    List<Materia> materias = (List<Materia>) request.getAttribute("materias");
                                    for (Materia materia : materias) {
                                %> 
                                <tr>
                                    <td class="text-center"><%= materia.getIdMateria()%></td>                     
                                    <td class="text-center"><%= materia.getNomeMateria()%></td>                  
                                    <td class="text-center"><%= materia.getProfessor().getNomeProfessor()%></td>   
                                    <td class="text-center"><%= materia.getSemestre().getNomeSemestre()%></td>  
                                    <td class="text-center">
                                        <a class="btn btn-default"  href="CarregarMateria?idMateria=<%=materia.getIdMateria()%>"><em class="fa fa-pencil"></em></a>
                                        <a class="btn btn-danger" href="ExcluirMateria?idMateria=<%=materia.getIdMateria()%>"><em class="fa fa-trash"></em></a>
                                    </td>                                             
                                </tr>                
                                <% }%>                                 
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