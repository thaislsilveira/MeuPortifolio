/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.controller.professor;

import br.com.crudPortifolio.dao.GenericDAO;
import br.com.crudPortifolio.dao.ProfessorDAO;
import br.com.crudPortifolio.model.Professor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thais Silveira
 */
@WebServlet(name = "AlterarProfessor", urlPatterns = {"/AlterarProfessor"})
public class AlterarProfessor extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Integer idProfessor = Integer.parseInt(request.getParameter("idProfessor"));
        String nomeProfessor = request.getParameter("nomeProfessor");
        String mensagem = null;

        Professor oProfessor = new Professor();
        oProfessor.setNomeProfessor(nomeProfessor);
        oProfessor.setIdProfessor(idProfessor);

        try {
            GenericDAO dao = new ProfessorDAO();
            if (dao.alterar(oProfessor)) {
                mensagem = "Professor alterado com sucesso!";
            } else {
                mensagem = "Problemas ao alterar Professor!";
            }

            request.setAttribute("mensagem", mensagem);
            request.getRequestDispatcher("ListarProfessor").forward(request, response);
        } catch (Exception ex) {
            System.out.println("Problemas no Servlet ao alterar Professor! Erro: " + ex.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}