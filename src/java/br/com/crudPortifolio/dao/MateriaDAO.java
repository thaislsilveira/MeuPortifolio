/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.dao;

import br.com.crudPortifolio.model.Materia;
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
public class MateriaDAO implements GenericDAO {

    private Connection conexao;

    public MateriaDAO() throws Exception {
        try {
            this.conexao = ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro:" + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Object objeto) {
        Materia oMateria = (Materia) objeto;
        Boolean retorno = false;

        if (oMateria.getIdMateria() == 0) {
            retorno = this.inserir(oMateria);
        } else {
            retorno = this.alterar(oMateria);
        }
        return retorno;
    }

    @Override
    public Boolean inserir(Object objeto) {
        Materia oMateria = (Materia) objeto;
        PreparedStatement stmt = null;
        String sql = "Insert into materia (nomeMateria, idProfessor, idSemestre) values (?,?,?)";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oMateria.getNomeMateria());
            stmt.setInt(2, oMateria.getProfessor().getIdProfessor());
            stmt.setInt(3, oMateria.getSemestre().getIdSemestre());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao cadastrar Matéria!Erro: " + ex.getMessage());
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
        Materia oMateria = (Materia) objeto;
        PreparedStatement stmt = null;
        String sql = "update materia set nomeMateria=?, idProfessor=?, idSemestre=? where idMateria=?";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oMateria.getNomeMateria());
            stmt.setInt(2, oMateria.getProfessor().getIdProfessor());
            stmt.setInt(3, oMateria.getSemestre().getIdSemestre());
            stmt.setInt(4, oMateria.getIdMateria());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao alterar Matéria! Erro: " + ex.getMessage());
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
        int idMateria = numero;
        PreparedStatement stmt = null;
        String sql = "delete from trabalho where idMateria = ?; delete from materia where idMateria=?;";
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idMateria);
            stmt.setInt(2, idMateria);

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao excluir matéria! Erro: " + ex.getMessage());
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
        int idMateria = numero;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Materia oMateria = null;
        String sql = "select m.*, p.*, s.* from materia m inner join professor p on m.idProfessor = p.idProfessor"
                + " inner join semestre s  on m.idSemestre = s.idSemestre where m.idMateria = ?";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idMateria);
            rs = stmt.executeQuery();

            while (rs.next()) {
                oMateria = new Materia();
                oMateria.setIdMateria(rs.getInt("idMateria"));
                oMateria.setNomeMateria(rs.getString("nomeMateria"));

                oMateria.getProfessor().setIdProfessor(rs.getInt("idProfessor"));
                oMateria.getProfessor().setNomeProfessor(rs.getString("nomeProfessor"));

                oMateria.getSemestre().setIdSemestre(rs.getInt("idSemestre"));
                oMateria.getSemestre().setNomeSemestre(rs.getString("nomeSemestre"));
            }
            return oMateria;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar matéria!"
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

        String sql = "select m.*, p.*, s.* from materia m inner join professor p on m.idProfessor = p.idProfessor"
                + " inner join semestre s on  m.idSemestre = s.idSemestre; ";
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Materia oMateria = new Materia();
                oMateria.setIdMateria(rs.getInt("idMateria"));
                oMateria.setNomeMateria(rs.getString("nomeMateria"));

                oMateria.getProfessor().setIdProfessor(rs.getInt("idProfessor"));
                oMateria.getProfessor().setNomeProfessor(rs.getString("nomeProfessor"));

                oMateria.getSemestre().setIdSemestre(rs.getInt("idSemestre"));
                oMateria.getSemestre().setNomeSemestre(rs.getString("nomeSemestre"));

                resultado.add(oMateria);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar Matéria! Erro:"
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

    public List<Object> ListarPeloSemestre(int numero) {
        int idSemestre = numero;
        List<Object> resultado = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Materia oMateria = null;

        String sql = "select m.*, p.*, s.* from materia m inner join professor p on m.idProfessor = p.idProfessor"
                + " inner join semestre s on  m.idSemestre = s.idSemestre where m.idSemestre = ?";
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idSemestre);
            rs = stmt.executeQuery();
            while (rs.next()) {
                oMateria = new Materia();
                oMateria.setIdMateria(rs.getInt("idMateria"));
                oMateria.setNomeMateria(rs.getString("nomeMateria"));

                oMateria.getProfessor().setIdProfessor(rs.getInt("idProfessor"));
                oMateria.getProfessor().setNomeProfessor(rs.getString("nomeProfessor"));

                oMateria.getSemestre().setIdSemestre(rs.getInt("idSemestre"));
                oMateria.getSemestre().setNomeSemestre(rs.getString("nomeSemestre"));

                resultado.add(oMateria);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar pelo semestre! Erro:"
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

    public Integer countMateria() {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Integer qtd = null;
        String sql = "select COUNT (*) as qtd from materia;";

        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                qtd = rs.getInt("qtd");
            }
            return qtd;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar qtd de materias!"
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
