package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Cre;
import model.Experiencia;
import model.Funcao;

public class ExperienciaDAO {

    public boolean cadastraExperiencia(Experiencia experiencia) {
        String insertTableSQL = "INSERT INTO experiencia"
                + "(idExperiencia, idEmpregado, funcao, local, cre, dtSaida, dtEntrada) VALUES (? , ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement;
        try {

            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, experiencia.getIdExperiencia());
            preparedStatement.setInt(2, experiencia.getIdEmpregado());
            preparedStatement.setString(3, experiencia.getFuncao());
            preparedStatement.setString(4, experiencia.getLocal());
            preparedStatement.setInt(5, experiencia.getCre());
            preparedStatement.setString(6, experiencia.getDtSaida());
            preparedStatement.setString(7, experiencia.getDtEntrada());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraExperiencia(Experiencia experiencia) {
        String insertTableSQL = "UPDATE experiencia SET idEmpregado = ?, funcao = ?, local = ?, cre = ?, dtSaida = ?, dtEntrada = ? "
                + "WHERE idExperiencia = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, experiencia.getIdEmpregado());
            preparedStatement.setString(2, experiencia.getFuncao());
            preparedStatement.setString(3, experiencia.getLocal());
            preparedStatement.setInt(4, experiencia.getCre());
            preparedStatement.setString(5, experiencia.getDtSaida());
            preparedStatement.setString(6, experiencia.getDtEntrada());
            preparedStatement.setInt(7, experiencia.getIdExperiencia());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean excluiExperiencia(Integer toDelete) {
        String insertTableSQL = "DELETE FROM experiencia WHERE idExperiencia = ? ; ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, toDelete);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Experiencia procuraExperienciaPeloID(Integer idExperiencia) {

        try {
            String sql = "SELECT * FROM experiencia WHERE idExperiencia = ? ;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);
            con.setInt(1, idExperiencia);
            ResultSet rs = con.executeQuery();

            Experiencia expe = new Experiencia();
            if (rs.next()) {
                expe.setIdExperiencia(rs.getInt("idExperiencia"));
                expe.setIdEmpregado(rs.getInt("idEmpregado"));
                expe.setFuncao(rs.getString("funcao"));
                expe.setLocal(rs.getString("local"));
                expe.setCre(rs.getInt("cre"));
                expe.setDtSaida(rs.getString("dtSaida"));
                expe.setDtEntrada(rs.getString("dtEntrada"));
            }

            rs.close();
            con.close();
            return expe;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Experiencia> procuraTodosExperiencias() {

        try {
            String sql = "SELECT * FROM experiencia;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Experiencia> listaExperiencias = new ArrayList<>();
            while (rs.next()) {
                Experiencia expe = new Experiencia();
                expe.setIdExperiencia(rs.getInt("idExperiencia"));
                expe.setIdEmpregado(rs.getInt("idEmpregado"));
                expe.setFuncao(rs.getString("funcao"));
                expe.setLocal(rs.getString("local"));
                expe.setCre(rs.getInt("cre"));
                expe.setDtSaida(rs.getString("dtSaida"));
                expe.setDtEntrada(rs.getString("dtEntrada"));
                listaExperiencias.add(expe);
            }

            rs.close();
            con.close();
            return listaExperiencias;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Funcao> procuraTodasFuncoes() {

        try {
            String sql = "SELECT * FROM funcao;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Funcao> listaFuncoes = new ArrayList<>();

            while (rs.next()) {
                Funcao func = new Funcao();
                func.setIdFuncao(rs.getInt("idFuncao"));
                func.setTipo(rs.getString("tipo"));
                func.setDt_inativacao(rs.getString("dt_inativacao"));
                listaFuncoes.add(func);
            }

            rs.close();
            con.close();
            return listaFuncoes;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Cre> procuraTodosCres() {

        try {
            String sql = "SELECT * FROM cre;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Cre> listaCres = new ArrayList<>();

            while (rs.next()) {
                Cre cre = new Cre();
                cre.setIdCre(rs.getInt("idCre"));
                cre.setNome(rs.getString("nome"));
                cre.setSigla(rs.getString("sigla"));
                listaCres.add(cre);
            }

            rs.close();
            con.close();
            return listaCres;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
