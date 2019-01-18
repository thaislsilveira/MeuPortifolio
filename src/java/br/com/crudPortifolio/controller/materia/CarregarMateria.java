/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.controller.materia;

import br.com.crudPortifolio.dao.GenericDAO;
import br.com.crudPortifolio.dao.MateriaDAO;
import br.com.crudPortifolio.dao.ProfessorDAO;
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
 * @author Thais Silveira
 */
@WebServlet(name = "CarregarMateria", urlPatterns = {"/CarregarMateria"})
public class CarregarMateria extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        int idMateria = Integer.parseInt(request.getParameter("idMateria"));
        try {            
            GenericDAO dao = new MateriaDAO(); 
            GenericDAO oProfessorDAO = new ProfessorDAO();
            GenericDAO oSemestreDAO = new SemestreDAO();
            
            
            request.setAttribute("professores", oProfessorDAO.Listar());
            request.setAttribute("semestres", oSemestreDAO.Listar());
            request.setAttribute("materia", dao.carregar(idMateria));     
            request.getRequestDispatcher("alterarMateria.jsp").forward(request, response);
            
        } catch (Exception ex) {
            System.out.println("Erro na controller CarregarMateria: " + ex.getMessage());
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
