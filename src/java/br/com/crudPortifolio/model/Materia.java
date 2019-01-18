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
public class Materia {
    private int idMateria;
    private String nomeMateria;
    private Professor professor;
    private Semestre semestre;

    public Materia() {
    }

    public Materia(int idMateria, String nomeMateria, Professor professor, Semestre semestre) {
        this.idMateria = idMateria;
        this.nomeMateria = nomeMateria;
        this.professor = professor;
        this.semestre = semestre;
    }

    public int getIdMateria() {
        return idMateria;
    }

    public void setIdMateria(int idMateria) {
        this.idMateria = idMateria;
    }

    public String getNomeMateria() {
        return nomeMateria;
    }

    public void setNomeMateria(String nomeMateria) {
        this.nomeMateria = nomeMateria;
    }

    public Professor getProfessor() {
        if(professor == null){
            professor = new Professor();
        }
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }

    public Semestre getSemestre() {
        if(semestre == null){
            semestre = new Semestre();
        }
        return semestre;
    }

    public void setSemestre(Semestre semestre) {
        this.semestre = semestre;
    }   
}
