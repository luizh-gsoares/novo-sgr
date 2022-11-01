package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Perfil;

public class PerfilDAO {

    public boolean cadastraPerfil(Perfil perfil) {
        String insertTableSQL = "INSERT INTO perfil" + "(idPerfil, nome, dataCadastro) VALUES" + "(?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, perfil.getIdPerfil());
            preparedStatement.setString(2, perfil.getNome());
            preparedStatement.setString(3, perfil.getDataCadastro());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraPerfil(Perfil perfil) {
        String insertTableSQL = "UPDATE perfil SET nome = ?, dataCadastro = ?"
                + "WHERE idPerfil = ? ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, perfil.getNome());
            preparedStatement.setString(2, perfil.getDataCadastro());
            preparedStatement.setInt(3, perfil.getIdPerfil());
            
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean excluiPerfil(Integer toDelete) {
        String insertTableSQL = "DELETE FROM perfil WHERE idPerfil = ? ; ";
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

    public Perfil procuraPerfilPeloID(Integer idPerfil) {

        try {
            String sql = "SELECT * FROM perfil WHERE idPerfil = ? ;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            con.setInt(1, idPerfil);
            ResultSet rs = con.executeQuery();
            Perfil perf = new Perfil();

            if (rs.next()) {
                perf.setIdPerfil(rs.getInt("idIdPerfil"));
                perf.setNome(rs.getString("nome"));
                perf.setDataCadastro(rs.getString("dataCadastro"));

            }
            rs.close();
            con.close();
            return perf;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Perfil> procuraTodosPerfis() {

        try {
            String sql = "SELECT * FROM perfil;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Perfil> listaPerfis = new ArrayList<>();
            while (rs.next()) {
                Perfil perf = new Perfil();

                perf.setIdPerfil(rs.getInt("idPerfil"));
                perf.setNome(rs.getString("nome"));
                perf.setDataCadastro(rs.getString("dataCadastro"));

                listaPerfis.add(perf);
            }
            rs.close();
            con.close();
            return listaPerfis;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
