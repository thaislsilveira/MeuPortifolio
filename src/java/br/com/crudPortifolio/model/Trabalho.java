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
public class Trabalho {
    private int idTrabalho;
    private String nomeTrabalho;
    private String descricao;
    private String imagem;
    private Materia materia;

    public Trabalho() {
    }

    public Trabalho(int idTrabalho, String nomeTrabalho, String descricao, String imagem, Materia materia) {
        this.idTrabalho = idTrabalho;
        this.nomeTrabalho = nomeTrabalho;
        this.descricao = descricao;
        this.imagem = imagem;
        this.materia = materia;
    }

    public int getIdTrabalho() {
        return idTrabalho;
    }

    public void setIdTrabalho(int idTrabalho) {
        this.idTrabalho = idTrabalho;
    }

    public String getNomeTrabalho() {
        return nomeTrabalho;
    }

    public void setNomeTrabalho(String nomeTrabalho) {
        this.nomeTrabalho = nomeTrabalho;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public Materia getMateria() {
        if(materia == null){
            materia = new Materia();
        }
        return materia;
    }

    public void setMateria(Materia materia) {
        this.materia = materia;
    }

   
}
