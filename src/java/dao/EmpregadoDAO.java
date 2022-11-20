package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Cidade;
import model.Empregado;
import model.Estado;
import model.Pais;

public class EmpregadoDAO {

    public boolean cadastraEmpregado(Empregado empregado) {
        String insertTableSQL = "INSERT INTO empregado "
                + " (nome, matricula, nomeSocial, nacionalidade, naturalidade, uf, dataNasc, sexo, estadoCivil, rg, dataxpedicao, orgaoExpedidor, cpf, zonaEleitoral, secao, tituloEleitoral, email, nomeConjugue, nomePai, nomeMae, especial)"
                + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, empregado.getNome());
            preparedStatement.setString(2, empregado.getMatricula());
            preparedStatement.setString(3, empregado.getNomeSocial());
            preparedStatement.setInt(4, empregado.getNacionalidade());
            preparedStatement.setInt(5, empregado.getNaturalidade());
            preparedStatement.setString(6, empregado.getUf());
            preparedStatement.setString(7, empregado.getDataNasc());
            preparedStatement.setInt(8, empregado.getSexo());
            preparedStatement.setString(9, empregado.getEstadoCivil());
            preparedStatement.setString(10, empregado.getRg());
            preparedStatement.setString(11, empregado.getDataExpedicao());
            preparedStatement.setString(12, empregado.getOrgaoExpedidor());
            preparedStatement.setString(13, empregado.getCpf());
            preparedStatement.setString(14, empregado.getZonaEleitoral());
            preparedStatement.setString(15, empregado.getSecao());
            preparedStatement.setString(16, empregado.getTituloEleitoral());
            preparedStatement.setString(17, empregado.getEmail());
            preparedStatement.setString(18, empregado.getNomeConjugue());
            preparedStatement.setString(19, empregado.getNomePai());
            preparedStatement.setString(20, empregado.getNomeMae());
            preparedStatement.setInt(21, empregado.getEspecial());
            preparedStatement.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean alteraEmpregado(Empregado empregado) {
        String updateTableSQL = "UPDATE empregado "
                + " SET nome = ?, matricula = ?, nomeSocial = ?, nacionalidade = ?, naturalidade = ?, uf = ?, dataNasc = ?, sexo = ?, estadoCivil = ?, rg = ?, dataxpedicao = ?, orgaoExpedidor = ?, cpf = ?, zonaEleitoral = ?, secao = ?, tituloEleitoral = ?, email = ?, nomeConjugue = ?, nomePai = ?, nomeMae = ?, especial = ? "
                + " WHERE idEmpregado = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(updateTableSQL);
            preparedStatement.setString(1, empregado.getNome());
            preparedStatement.setString(2, empregado.getMatricula());
            preparedStatement.setString(3, empregado.getNomeSocial());
            preparedStatement.setInt(4, empregado.getNacionalidade());
            preparedStatement.setInt(5, empregado.getNaturalidade());
            preparedStatement.setString(6, empregado.getUf());
            preparedStatement.setString(7, empregado.getDataNasc());
            preparedStatement.setInt(8, empregado.getSexo());
            preparedStatement.setString(9, empregado.getEstadoCivil());
            preparedStatement.setString(10, empregado.getRg());
            preparedStatement.setString(11, empregado.getDataExpedicao());
            preparedStatement.setString(12, empregado.getOrgaoExpedidor());
            preparedStatement.setString(13, empregado.getCpf());
            preparedStatement.setString(14, empregado.getZonaEleitoral());
            preparedStatement.setString(15, empregado.getSecao());
            preparedStatement.setString(16, empregado.getTituloEleitoral());
            preparedStatement.setString(17, empregado.getEmail());
            preparedStatement.setString(18, empregado.getNomeConjugue());
            preparedStatement.setString(19, empregado.getNomePai());
            preparedStatement.setString(20, empregado.getNomeMae());
            preparedStatement.setInt(21, empregado.getEspecial());
            preparedStatement.setInt(22, empregado.getIdEmpregado());
            preparedStatement.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    public boolean excluiEmpregado(Integer toDelete) {
        String deleteTableSQL = "DELETE FROM empregado WHERE idEmpregado = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(deleteTableSQL);
            preparedStatement.setInt(1, toDelete);
            preparedStatement.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Empregado procuraEmpregadoPeloID(Integer idEmpregado) {

        try {
            String sql = "SELECT * FROM empregado WHERE idEmpregado = ?";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);
            con.setInt(1, idEmpregado);
            ResultSet rs = con.executeQuery();

            Empregado empr = new Empregado();
            if (rs.next()) {
                empr.setIdEmpregado(rs.getInt("idEmpregado"));
                empr.setNome(rs.getString("nome"));
                empr.setMatricula(rs.getString("matricula"));
                empr.setNomeSocial(rs.getString("nomeSocial"));
                empr.setNacionalidade(rs.getInt("nacionalidade"));
                empr.setNaturalidade(rs.getInt("naturalidade"));
                empr.setUf(rs.getString("uf"));
                empr.setDataNasc(rs.getString("dataNasc"));
                empr.setSexo(rs.getInt("sexo"));
                empr.setEstadoCivil(rs.getString("estadoCivil"));
                empr.setRg(rs.getString("rg"));
                empr.setDataExpedicao(rs.getString("dataExpedicao"));
                empr.setOrgaoExpedidor(rs.getString("orgaoExpedidor"));
                empr.setCpf(rs.getString("cpf"));
                empr.setZonaEleitoral(rs.getString("zonaEleitoral"));
                empr.setSecao(rs.getString("secao"));
                empr.setTituloEleitoral(rs.getString("tituloEleitoral"));
                empr.setEmail(rs.getString("email"));
                empr.setNomeConjugue(rs.getString("nomeConjugue"));
                empr.setNomePai(rs.getString("nomePai"));
                empr.setNomeMae(rs.getString("nomeMae"));
                empr.setEspecial(rs.getInt("especial"));
            }

            rs.close();
            con.close();
            return empr;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Empregado> procuraTodosEmpregados() {

        try {
            String sql = "SELECT * FROM empregado";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Empregado> listaEmpregados = new ArrayList<>();

            while (rs.next()) {
                Empregado empr = new Empregado();
                empr.setIdEmpregado(rs.getInt("idEmpregado"));
                empr.setNome(rs.getString("nome"));
                empr.setMatricula(rs.getString("matricula"));
                empr.setNomeSocial(rs.getString("nomeSocial"));
                empr.setNacionalidade(rs.getInt("nacionalidade"));
                empr.setNaturalidade(rs.getInt("naturalidade"));
                empr.setUf(rs.getString("uf"));
                empr.setDataNasc(rs.getString("dataNasc"));
                empr.setSexo(rs.getInt("sexo"));
                empr.setEstadoCivil(rs.getString("estadoCivil"));
                empr.setRg(rs.getString("rg"));
                empr.setDataExpedicao(rs.getString("dataExpedicao"));
                empr.setOrgaoExpedidor(rs.getString("orgaoExpedidor"));
                empr.setCpf(rs.getString("cpf"));
                empr.setZonaEleitoral(rs.getString("zonaEleitoral"));
                empr.setSecao(rs.getString("secao"));
                empr.setTituloEleitoral(rs.getString("tituloEleitoral"));
                empr.setEmail(rs.getString("email"));
                empr.setNomeConjugue(rs.getString("nomeConjugue"));
                empr.setNomePai(rs.getString("nomePai"));
                empr.setNomeMae(rs.getString("nomeMae"));
                empr.setEspecial(rs.getInt("especial"));
                listaEmpregados.add(empr);
            }

            rs.close();
            con.close();
            return listaEmpregados;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Pais> procuraTodosPaises() {
        try {
            String sql = "SELECT * FROM pais";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Pais> listaPaises = new ArrayList<>();

            while (rs.next()) {
                Pais pais = new Pais();
                pais.setId(rs.getInt("id"));
                pais.setNome(rs.getString("nome"));
                pais.setNome_pt(rs.getString("nome_pt"));
                pais.setSigla(rs.getString("sigla"));
                pais.setBacen(rs.getInt("bacen"));
                listaPaises.add(pais);
            }

            rs.close();
            con.close();
            return listaPaises;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Cidade> procuraTodasCidades() {
        try {
            String sql = "SELECT * FROM cidade";
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
                esta.setIdPais(rs.getInt("idPais"));
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
