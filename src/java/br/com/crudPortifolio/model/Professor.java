/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.model;

/**
 *
 * @author Thais Silveira
 */
public class Professor {
    private int idProfessor;
    private String nomeProfessor;

    public Professor() {
    }

    public Professor(int idProfessor, String nomeProfessor) {
        this.idProfessor = idProfessor;
        this.nomeProfessor = nomeProfessor;
    }

    public int getIdProfessor() {
        return idProfessor;
    }

    public void setIdProfessor(int idProfessor) {
        this.idProfessor = idProfessor;
    }

    public String getNomeProfessor() {
        return nomeProfessor;
    }

    public void setNomeProfessor(String nomeProfessor) {
        this.nomeProfessor = nomeProfessor;
    }
    
    
    
    
    
    
    
}
