/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.dao;

import br.com.crudPortifolio.model.Semestre;
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
public class SemestreDAO implements GenericDAO {

    private Connection conexao;

    public SemestreDAO() throws Exception {
        try {
            this.conexao = ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro:" + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Object objeto) {
        Semestre oSemestre = (Semestre) objeto;
        Boolean retorno = false;

        if (oSemestre.getIdSemestre() == 0) {
            retorno = this.inserir(oSemestre);
        } else {
            retorno = this.alterar(oSemestre);
        }
        return retorno;
    }

    @Override
    public Boolean inserir(Object objeto) {
        Semestre oSemestre = (Semestre) objeto;
        PreparedStatement stmt = null;
        String sql = "Insert into semestre (nomeSemestre) values (?)";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oSemestre.getNomeSemestre());           

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao cadastrar Semestre!Erro: " + ex.getMessage());
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
        Semestre oSemestre = (Semestre) objeto;
        PreparedStatement stmt = null;
        String sql = "update semestre set nomeSemestre=? where idSemestre=?";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oSemestre.getNomeSemestre());          
            stmt.setInt(2, oSemestre.getIdSemestre());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao alterar Semestre! Erro: " + ex.getMessage());
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
        int idSemestre = numero;
        PreparedStatement stmt = null;
        String sql = "delete from semestre where idSemestre=?;";
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idSemestre);

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao excluir Semestre! Erro: " + ex.getMessage());
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
        int idSemestre = numero;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Semestre oSemestre = null;
        String sql = "select * from semestre  where idSemestre = ?";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idSemestre);
            rs = stmt.executeQuery();

            while (rs.next()) {
                oSemestre = new Semestre();
                oSemestre.setIdSemestre(rs.getInt("idSemestre"));
                oSemestre.setNomeSemestre(rs.getString("nomeSemestre"));
            }
            return oSemestre;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar Semestre!"
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
        
        String sql = "select * from semestre order by nomeSemestre";
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Semestre oSemestre = new Semestre();
                oSemestre.setIdSemestre(rs.getInt("idSemestre"));
                oSemestre.setNomeSemestre(rs.getString("nomeSemestre"));              

                resultado.add(oSemestre);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar Semestre! Erro:"
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
    
     public Integer countSemestre() {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Integer qtd = null;
        String sql = "select COUNT (*) as qtd from semestre;";

        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                qtd = rs.getInt("qtd");
            }
            return qtd;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar qtd de semestres!"
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
