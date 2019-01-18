/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.dao;

import br.com.crudPortifolio.model.Professor;
import br.com.crudPortifolio.utils.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Thais Silveira
 */
public class ProfessorDAO implements GenericDAO {

    private Connection conexao;

    public ProfessorDAO() throws Exception {
        try {
            this.conexao = ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro:" + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Object objeto) {
        Professor oProfessor = (Professor) objeto;
        Boolean retorno = false;

        if (oProfessor.getIdProfessor() == 0) {
            retorno = this.inserir(oProfessor);
        } else {
            retorno = this.alterar(oProfessor);
        }
        return retorno;
    }

    @Override
    public Boolean inserir(Object objeto) {
        Professor oProfessor = (Professor) objeto;
        PreparedStatement stmt = null;
        String sql = "Insert into professor (nomeProfessor) values (?)";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oProfessor.getNomeProfessor());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao cadastrar Professor!Erro: " + ex.getMessage());
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conexao, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parametros de conexao! Erro: " + ex.getMessage());
            }
        }
    }

    @Override
    public Boolean alterar(Object objeto) {
        Professor oProfessor = (Professor) objeto;
        PreparedStatement stmt = null;
        String sql = "update fornecedor set nomeProfessor=? where idProfessor=?";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oProfessor.getNomeProfessor());
            stmt.setInt(2, oProfessor.getIdProfessor());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao alterar Professor! Erro: " + ex.getMessage());
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conexao, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parametros de conexão! Erro" + ex.getMessage());
            }
        }
    }

    @Override
    public Boolean excluir(int numero) {
        int idProfessor = numero;
        PreparedStatement stmt = null;
        String sql = "delete from professor where idProfessor=?;";
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idProfessor);

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao excluir professor! Erro: " + ex.getMessage());
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conexao, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parametros de conexao! Erro: " + ex.getMessage());
            }
        }
    }

    @Override
    public Object carregar(int numero) {
        int idProfessor = numero;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Professor oProfessor = null;
        String sql = "Select * from professor where idProfessor=?;";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idProfessor);
            rs = stmt.executeQuery();

            while (rs.next()) {
                oProfessor = new Professor();
                oProfessor.setIdProfessor(rs.getInt("idProfessor"));
                oProfessor.setNomeProfessor(rs.getString("nomeProfessor"));
            }
            return oProfessor;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar professor!"
                    + "Erro: " + ex.getMessage());
            return null;
        } finally {
            try {
                ConnectionFactory.closeConnection(conexao, stmt, rs);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parâmetros de conexão! Erro: "
                        + ex.getMessage());
            }
        }
    }

    @Override
    public List<Object> Listar() {
        List<Object> resultado = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String sql = "Select * from professor order by nomeProfessor";
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Professor oProfessor = new Professor();
                oProfessor.setIdProfessor(rs.getInt("idProfessor"));
                oProfessor.setNomeProfessor(rs.getString("nomeProfessor"));
                resultado.add(oProfessor);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar Professor! Erro:"
                    + ex.getMessage());
        } finally {
            try {
                ConnectionFactory.closeConnection(conexao, stmt, rs);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os "
                        + "parametros de conexão! Erro: "
                        + ex.getMessage());
            }
        }
        return resultado;
    }

    public Integer countProfessor() {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Integer qtd = null;
        String sql = "select COUNT (*) as qtd from professor;";

        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                qtd = rs.getInt("qtd");
            }
            return qtd;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar qtd de professores!"
                    + "Erro: " + ex.getMessage());
            return null;
        } finally {
            try {
                ConnectionFactory.closeConnection(conexao, stmt, rs);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar os parâmetros de conexão! Erro: "
                        + ex.getMessage());
            }
        }
    }
}
