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
public class Semestre {
    private int idSemestre;
    private String nomeSemestre;   

    public Semestre() {
    }

    public Semestre(int idSemestre, String nomeSemestre) {
        this.idSemestre = idSemestre;
        this.nomeSemestre = nomeSemestre;
    }

    public int getIdSemestre() {
        return idSemestre;
    }

    public void setIdSemestre(int idSemestre) {
        this.idSemestre = idSemestre;
    }

    public String getNomeSemestre() {
        return nomeSemestre;
    }

    public void setNomeSemestre(String nomeSemestre) {
        this.nomeSemestre = nomeSemestre;
    }   
}
