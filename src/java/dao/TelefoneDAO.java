package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Telefone;

public class TelefoneDAO {

    public boolean cadastraTelefone(Telefone telefone) {
        String insertTableSQL = "INSERT INTO telefone"
                + "(idEmpregado, telefoneResidencial, telefoneCelular, telefoneRecado) VALUES"
                + "(?,?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, telefone.getIdEmpregado());
            preparedStatement.setString(2, telefone.getTelefoneResidencial());
            preparedStatement.setString(3, telefone.getTelefoneCelular());
            preparedStatement.setString(4, telefone.getTelefoneRecado());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraTelefone(Telefone telefone) {
        String insertTableSQL = "UPDATE telefone SET idEmpregado = ?, telefoneResidencial = ?, telefoneCelular = ?, telefoneRecado= ? WHERE idTelefone = ?;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, telefone.getIdEmpregado());
            preparedStatement.setString(2, telefone.getTelefoneResidencial());
            preparedStatement.setString(3, telefone.getTelefoneCelular());
            preparedStatement.setString(4, telefone.getTelefoneRecado());
            preparedStatement.setInt(5, telefone.getIdTelefone());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean excluiTelefone(Integer toDelete) {
        String insertTableSQL = "DELETE FROM telefone WHERE idTelefone = ? ; ";
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

    public Telefone procuraTelefonePeloID(Integer idTelefone) {

        try {
            String sql = "SELECT * FROM telefone WHERE idTelefone = ? ;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            con.setInt(1, idTelefone);
            ResultSet rs = con.executeQuery();
            Telefone telef = new Telefone();

            if (rs.next()) {
                telef.setIdTelefone(rs.getInt("idTelefone"));
                telef.setIdEmpregado(rs.getInt("idEmpregado"));
                telef.setTelefoneResidencial(rs.getString("telefoneResidencial"));
                telef.setTelefoneCelular(rs.getString("telefoneCelular"));
                telef.setTelefoneRecado(rs.getString("telefoneRecado"));
                telef.setStatus(rs.getInt("status"));
            }
            rs.close();
            con.close();
            return telef;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Telefone> procuraTelefonePeloEmpregado(Integer idEmpregado) {

        try {
            String sql = "SELECT idTelefone, idEmpregado, telefoneResidencial, telefoneCelular, telefoneRecado FROM telefone "
                    + " WHERE idEmpregado = ?;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            con.setInt(1, idEmpregado);
            ResultSet rs = con.executeQuery();

            ArrayList<Telefone> listaTelefones = new ArrayList<>();
            while (rs.next()) {
                Telefone telef = new Telefone();

                telef.setIdTelefone(rs.getInt("idTelefone"));
                telef.setIdEmpregado(rs.getInt("idEmpregado"));
                telef.setTelefoneResidencial(rs.getString("telefoneResidencial"));
                telef.setTelefoneCelular(rs.getString("telefoneCelular"));
                telef.setTelefoneRecado(rs.getString("telefoneRecado"));
                telef.setStatus(rs.getInt("status"));
                listaTelefones.add(telef);
            }

            rs.close();
            con.close();
            return listaTelefones;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public ArrayList<Telefone> procuraTodosTelefones() {

        try {
            String sql = "SELECT * FROM telefone;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Telefone> listaTelefones = new ArrayList<>();
            while (rs.next()) {
                Telefone telef = new Telefone();

                telef.setIdTelefone(rs.getInt("idTelefone"));
                telef.setIdEmpregado(rs.getInt("idEmpregado"));
                telef.setTelefoneResidencial(rs.getString("telefoneResidencial"));
                telef.setTelefoneCelular(rs.getString("telefoneCelular"));
                telef.setTelefoneRecado(rs.getString("telefoneRecado"));
                telef.setStatus(rs.getInt("status"));

                listaTelefones.add(telef);
            }
            rs.close();
            con.close();
            return listaTelefones;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean ativar(Telefone t) {
        String sql = "UPDATE telefone SET status = 1 WHERE idTelefone = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(sql);
            preparedStatement.setInt(1, t.getIdTelefone());
            preparedStatement.execute();
        } catch (Exception err) {
            err.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean desativar(Telefone t) {
        String sql = "UPDATE telefone SET status = 2 WHERE idTelefone = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(sql);
            preparedStatement.setInt(1, t.getIdTelefone());
            preparedStatement.execute();
        } catch (Exception err) {
            err.printStackTrace();
            return false;
        }
        return true;
    }
}
