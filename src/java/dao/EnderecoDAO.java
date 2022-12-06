package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Cidade;
import model.Endereco;
import model.Estado;
import model.Experiencia;

public class EnderecoDAO {

    public boolean cadastraEndereco(Endereco endereco) {

        String insertTableSQL = "INSERT INTO endereco" + "(idEmpregado, cep, logradouro, complemento, idCidade) VALUES"
                + "(?,?,?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, endereco.getIdEmpregado());
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
                + "SET idEmpregado=?, cep = ?, logradouro = ?, complemento = ?, idCidade = ? WHERE idEndereco = ?;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, endereco.getIdEmpregado());
            preparedStatement.setString(2, endereco.getCep());
            preparedStatement.setString(3, endereco.getLogradouro());
            preparedStatement.setString(4, endereco.getComplemento());
            preparedStatement.setInt(5, endereco.getIdCidade());
            preparedStatement.setInt(6, endereco.getIdEndereco());

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
                ende.setIdEmpregado(rs.getInt("idEmpregado"));
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

    public ArrayList<Endereco> procuraEnderecoPeloEmpregado(Integer idEmpregado) {

        try {
            String sql = "SELECT * FROM endereco "
                    + " WHERE idEmpregado = ?;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            con.setInt(1, idEmpregado);
            ResultSet rs = con.executeQuery();

            ArrayList<Endereco> listaEnderecos = new ArrayList<>();
            while (rs.next()) {
                Endereco ende = new Endereco();
                ende.setIdEndereco(rs.getInt("idEndereco"));
                ende.setIdEmpregado(rs.getInt("idEmpregado"));
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

    public ArrayList<Endereco> procuraTodosEnderecos() {

        try {

            String sql = "SELECT * FROM endereco;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();
            ArrayList<Endereco> listaEnderecos = new ArrayList<>();

            while (rs.next()) {
                Endereco ende = new Endereco();
                ende.setIdEndereco(rs.getInt("idEndereco"));
                ende.setIdEmpregado(rs.getInt("idEmpregado"));
                ende.setCep(rs.getString("cep"));
                ende.setLogradouro(rs.getString("logradouro"));
                ende.setComplemento(rs.getString("complemento"));
                ende.setIdCidade(rs.getInt("idCidade"));
                ende.setStatus(rs.getInt("status"));
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

    public ArrayList<Cidade> procuraTodasCidades() {

        try {

            String sql = "SELECT * FROM cidade;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();
            ArrayList<Cidade> listaCidades = new ArrayList<>();

            while (rs.next()) {
                Cidade cida = new Cidade();
                cida.setIdCidade(rs.getInt("idCidade"));
                cida.setNome(rs.getString("nome"));
                cida.setIdEstado(rs.getInt("idEstado"));
                listaCidades.add(cida);
            }

            rs.close();
            con.close();
            return listaCidades;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Estado> procuraTodosEstados() {

        try {

            String sql = "SELECT * FROM estado;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();
            ArrayList<Estado> listaEstados = new ArrayList<>();

            while (rs.next()) {
                Estado esta = new Estado();
                esta.setIdEstado(rs.getInt("idEstado"));
                esta.setNome(rs.getString("nome"));
                esta.setUf(rs.getString("uf"));
                esta.setPais(rs.getInt("pais"));
                listaEstados.add(esta);
            }

            rs.close();
            con.close();
            return listaEstados;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
