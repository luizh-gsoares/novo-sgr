package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Endereco;

public class EnderecoDAO {

    public boolean cadastraEndereco(Endereco endereco) {

        String insertTableSQL = "INSERT INTO endereco" + "(idEndereco, cep, logradouro, complemento, idCidade) VALUES"
                + "(?,?,?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, endereco.getIdEndereco());
            preparedStatement.setString(2, endereco.getCep());
            preparedStatement.setString(3, endereco.getLogradouro());
            preparedStatement.setString(4, endereco.getComplemento());
            preparedStatement.setInt(5, endereco.getIdCidade());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraEndereco(Endereco endereco) {
        String insertTableSQL = "UPDATE endereco "
                + "SET cep = ?, logradouro = ?, complemento = ?, idCidade = ?"
                + "WHERE idEndereco = ?;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, endereco.getCep());
            preparedStatement.setString(2, endereco.getLogradouro());
            preparedStatement.setString(3, endereco.getComplemento());
            preparedStatement.setInt(4, endereco.getIdCidade());
            preparedStatement.setInt(5, endereco.getIdEndereco());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean excluiEndereco(Integer toDelete) {
        String insertTableSQL = "DELETE FROM endereco WHERE idEndereco = ?;";
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

    public Endereco procuraEnderecoPeloID(Integer idEndereco) {
      
        try {
            String sql = "SELECT * FROM endereco WHERE idEndereco = ?;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            con.setInt(1, idEndereco);
            ResultSet rs = con.executeQuery();
            Endereco ende = new Endereco();

            if (rs.next()) {
                ende.setIdEndereco(rs.getInt("idEndereco"));
                ende.setCep(rs.getString("cep"));
                ende.setLogradouro(rs.getString("logradouro"));
                ende.setComplemento(rs.getString("complemento"));
                ende.setIdCidade(rs.getInt("idCidade"));
            }
            rs.close();
            con.close();
            return ende;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Endereco> procuraTodosEnderecos() {

        try {
            
            String sql = "SELECT * FROM endereco;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();
            ArrayList<Endereco> listaEnderecos = new ArrayList<>();

            
            while (rs.next()) {
                Endereco ende = new Endereco();
                ende.setIdEndereco(rs.getInt("idEndereco"));
                ende.setCep(rs.getString("cep"));
                ende.setLogradouro(rs.getString("logradouro"));
                ende.setComplemento(rs.getString("complemento"));
                ende.setIdCidade(rs.getInt("idCidade"));
                listaEnderecos.add(ende);
            }
            
            rs.close();
            con.close();
            return listaEnderecos;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
