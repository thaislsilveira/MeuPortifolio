/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.controller.semestre;

import br.com.crudPortifolio.dao.GenericDAO;
import br.com.crudPortifolio.dao.MateriaDAO;
import br.com.crudPortifolio.dao.SemestreDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thais.silveira
 */
@WebServlet(name = "SemestreController", urlPatterns = {"/SemestreController", "/semestre"})
public class SemestreController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idSemestre = Integer.parseInt(request.getParameter("idSemestre"));
        try {
            GenericDAO dao = new SemestreDAO();

            request.setAttribute("semestre", dao.carregar(idSemestre));
            MateriaDAO materiaDAO = new MateriaDAO();
            request.setAttribute("materias", materiaDAO.ListarPeloSemestre(idSemestre));
            request.getRequestDispatcher("materias.jsp").forward(request, response);
        } catch (Exception ex) {
            System.out.println("Problemas ao carregar dados da Semestre! Erro : " + ex.getMessage());
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
