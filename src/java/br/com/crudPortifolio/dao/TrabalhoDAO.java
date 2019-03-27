/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.crudPortifolio.dao;

import br.com.crudPortifolio.model.Trabalho;
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
public class TrabalhoDAO implements GenericDAO {

    private Connection conexao;

    public TrabalhoDAO() throws Exception {
        try {
            this.conexao = ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso");
        } catch (Exception ex) {
            throw new Exception("Problemas ao conectar no BD! Erro:" + ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Object objeto) {
        Trabalho oTrabalho = (Trabalho) objeto;
        Boolean retorno = false;

        if (oTrabalho.getIdTrabalho() == 0) {
            retorno = this.inserir(oTrabalho);
        } else {
            retorno = this.alterar(oTrabalho);
        }
        return retorno;
    }

    @Override
    public Boolean inserir(Object objeto) {
        Trabalho oTrabalho = (Trabalho) objeto;
        PreparedStatement stmt = null;
        String sql = "Insert into trabalho (nomeTrabalho, descricao, imagem, idMateria) values (?,?,?,?);";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oTrabalho.getNomeTrabalho());
            stmt.setString(2, oTrabalho.getDescricao());
            stmt.setString(3, oTrabalho.getImagem());
            stmt.setInt(4, oTrabalho.getMateria().getIdMateria());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao cadastrar Trabalho! Erro: " + ex.getMessage());
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
        Trabalho oTrabalho = (Trabalho) objeto;
        PreparedStatement stmt = null;
        String sql = "update trabalho set nomeTrabalho=?, descricao=?, imagem=?, idMateria=? where idTrabalho=?";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, oTrabalho.getNomeTrabalho());
            stmt.setString(2, oTrabalho.getDescricao());
            stmt.setString(3, oTrabalho.getImagem());
            stmt.setInt(4, oTrabalho.getMateria().getIdMateria());
            stmt.setInt(5, oTrabalho.getIdTrabalho());

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao alterar Trabalho! Erro: " + ex.getMessage());
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
        int idTrabalho = numero;
        PreparedStatement stmt = null;
        String sql = "delete from trabalho where idTrabalho=?;";
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idTrabalho);

            stmt.execute();
            return true;
        } catch (Exception ex) {
            System.out.println("Problemas ao excluir trabalho! Erro: " + ex.getMessage());
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
        int idTrabalho = numero;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Trabalho oTrabalho = null;
        String sql = "select t.*, m.* from trabalho t inner join materia m on t.idMateria = m.idMateria where idTrabalho=?;";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idTrabalho);
            rs = stmt.executeQuery();

            while (rs.next()) {
                oTrabalho = new Trabalho();
                oTrabalho.setIdTrabalho(rs.getInt("idTrabalho"));
                oTrabalho.setNomeTrabalho(rs.getString("nomeTrabalho"));
                oTrabalho.setDescricao(rs.getString("descricao"));
                oTrabalho.setImagem(rs.getString("imagem"));
                oTrabalho.getMateria().setIdMateria(rs.getInt("idMateria"));
                oTrabalho.getMateria().setNomeMateria(rs.getString("nomeMateria"));
            }
            return oTrabalho;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar Trabalho!"
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

        String sql = "select t.*, m.* from trabalho t inner join materia m on t.idMateria = m.idMateria";
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Trabalho oTrabalho = new Trabalho();
                oTrabalho.setIdTrabalho(rs.getInt("idTrabalho"));
                oTrabalho.setNomeTrabalho(rs.getString("nomeTrabalho"));
                oTrabalho.setDescricao(rs.getString("descricao"));
                oTrabalho.setImagem(rs.getString("imagem"));
                oTrabalho.getMateria().setIdMateria(rs.getInt("idMateria"));
                oTrabalho.getMateria().setNomeMateria(rs.getString("nomeMateria"));
                resultado.add(oTrabalho);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar Trabalho! Erro:"
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

    public List<Object> ListarPelaMateria(int numero) {
        int idMateria = numero;
        List<Object> resultado = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Trabalho oTrabalho = null;

        String sql = "select t.*, m.* from trabalho t inner join materia m on t.idMateria = m.idMateria where m.idMateria = ?";
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idMateria);
            rs = stmt.executeQuery();
            while (rs.next()) {
                oTrabalho = new Trabalho();
                oTrabalho.setIdTrabalho(rs.getInt("idTrabalho"));
                oTrabalho.setNomeTrabalho(rs.getString("nomeTrabalho"));
                oTrabalho.setDescricao(rs.getString("descricao"));
                oTrabalho.setImagem(rs.getString("imagem"));
                oTrabalho.getMateria().setIdMateria(rs.getInt("idMateria"));
                oTrabalho.getMateria().setNomeMateria(rs.getString("nomeMateria"));
                resultado.add(oTrabalho);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar pela matéria! Erro:"
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

    public Integer countTrabalho() {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Integer qtd = null;
        String sql = "select COUNT (*) as qtd from trabalho;";

        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                qtd = rs.getInt("qtd");
            }
            return qtd;
        } catch (SQLException ex) {
            System.out.println("Problemas ao carregar qtd de trabalhos!"
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

    public List<Object> listarTrabalhoTexto(String busca) {

        String texto = busca;
        List<Object> resultado = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Trabalho oTrabalho = null;
        String sql = "select t.*, m.*, s.* from trabalho t inner join materia m on t.idMateria = m.idMateria inner join semestre s on m.idSemestre = s.idSemestre where LOWER(nomeTrabalho) LIKE (LOWER(?))"
                + "OR LOWER(descricao) LIKE (LOWER(?));";

        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, "%" + texto.toLowerCase() + "%");
            stmt.setString(2, "%" + texto.toLowerCase() + "%");
            rs = stmt.executeQuery();

            while (rs.next()) {
                oTrabalho = new Trabalho();
                oTrabalho.setIdTrabalho(rs.getInt("idTrabalho"));
                oTrabalho.setNomeTrabalho(rs.getString("nomeTrabalho"));
                oTrabalho.setDescricao(rs.getString("descricao"));
                oTrabalho.setImagem(rs.getString("imagem"));
                oTrabalho.getMateria().setIdMateria(rs.getInt("idMateria"));
                oTrabalho.getMateria().setNomeMateria(rs.getString("nomeMateria"));
                oTrabalho.getMateria().getSemestre().setNomeSemestre(rs.getString("nomeSemestre"));
                oTrabalho.getMateria().getSemestre().setIdSemestre(rs.getInt("idSemestre"));
                resultado.add(oTrabalho);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao buscar Trabalho!"
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
        return resultado;
    }
}
