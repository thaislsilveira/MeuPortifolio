/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.controller.trabalho;

import br.com.crudPortifolio.dao.GenericDAO;
import br.com.crudPortifolio.dao.TrabalhoDAO;
import br.com.crudPortifolio.model.Trabalho;
import br.com.crudPortifolio.utils.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Thais Silveira
 */
@WebServlet(name = "AlterarTrabalho", urlPatterns = {"/AlterarTrabalho"})
@MultipartConfig
public class AlterarTrabalho extends HttpServlet {

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
        
        Integer idTrabalho = Integer.parseInt(request.getParameter("idTrabalho"));
        String nomeTrabalho = request.getParameter("nomeTrabalho");
        String descricao = request.getParameter("descricao");
        String imagem = request.getParameter("imagem");
        Integer idMateria = Integer.parseInt(request.getParameter("idMateria"));

        String mensagem = null;

        Trabalho oTrabalho = new Trabalho();
        oTrabalho.setNomeTrabalho(nomeTrabalho);
        oTrabalho.setDescricao(descricao);
        oTrabalho.setImagem(imagem);
        oTrabalho.getMateria().setIdMateria(idMateria);
        oTrabalho.setIdTrabalho(idTrabalho);

        try {
            if (request.getPart("imagem") != null) {
                try {
                    Part filePart = request.getPart("imagem"); // Retrieves <input type="file" name="file">
                    InputStream fileContent = filePart.getInputStream();
                    oTrabalho.setImagem(Utils.getImagemBase64(fileContent, filePart.getContentType()));
                    if (oTrabalho.getImagem() == null) {
                        oTrabalho.setImagem(request.getParameter("imagemTrabalho64"));
                    }
                } catch (IOException e) {
                    throw new Exception("Não foi possível carregar imagem.");
                }
            }
            GenericDAO dao = new TrabalhoDAO();
            if (dao.alterar(oTrabalho)) {
                mensagem = "Trabalho alterado com sucesso!";
            } else {
                mensagem = "Problemas ao alterar Trabalho!";
            }

            request.setAttribute("mensagem", mensagem);
            request.getRequestDispatcher("ListarTrabalho").forward(request, response);
        } catch (Exception ex) {
            System.out.println("Problemas no Servlet ao alterar Trabalho! Erro: " + ex.getMessage());
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
