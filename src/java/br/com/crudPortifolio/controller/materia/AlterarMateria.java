/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.controller.materia;

import br.com.crudPortifolio.dao.GenericDAO;
import br.com.crudPortifolio.dao.MateriaDAO;
import br.com.crudPortifolio.model.Materia;
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
@WebServlet(name = "AlterarMateria", urlPatterns = {"/AlterarMateria"})
public class AlterarMateria extends HttpServlet {

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
        Integer idMateria = Integer.parseInt(request.getParameter("idMateria"));
        String nomeMateria = request.getParameter("nomeMateria");
        int idProfessor = Integer.parseInt(request.getParameter("idProfessor"));
        int idSemestre = Integer.parseInt(request.getParameter("idSemestre"));
        String mensagem = null;

        Materia oMateria = new Materia();
        oMateria.setNomeMateria(nomeMateria);
        oMateria.setIdMateria(idMateria);
        oMateria.getProfessor().setIdProfessor(idProfessor);
        oMateria.getSemestre().setIdSemestre(idSemestre);

        try {
            GenericDAO dao = new MateriaDAO();
            if (dao.alterar(oMateria)) {
                mensagem = "Matéria alterado com sucesso!";
            } else {
                mensagem = "Problemas ao alterar Matéria!";
            }

            request.setAttribute("mensagem", mensagem);
            request.getRequestDispatcher("ListarMateria").forward(request, response);
        } catch (Exception ex) {
            System.out.println("Problemas no Servlet ao alterar Materia! Erro: " + ex.getMessage());
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
