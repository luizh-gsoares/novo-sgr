
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Formacao;
import model.Tipocurso;

public class FormacaoDAO {

    public boolean cadastraFormacao(Formacao formacao) {
        String insertTableSQL = "INSERT INTO formacao"
                + "( idFormacao , idEmpregdo,  idTipocurso ,  curso ,  instituicao ,  semestre ,  dtInicio ,  dtFim ) VALUES"
                + "(?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatement;
        try {  
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, formacao.getIdFormacao());
            preparedStatement.setInt(2, formacao.getIdEmpregado());
            preparedStatement.setInt(3, formacao.getIdTipocurso());
            preparedStatement.setString(4, formacao.getCurso());
            preparedStatement.setString(5, formacao.getInstituicao());
            preparedStatement.setInt(6, formacao.getSemestre());
            preparedStatement.setString(7, formacao.getDtInicio());
            preparedStatement.setString(8, formacao.getDtFim());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }

    }

    public boolean alteraFormacao(Formacao formacao) {
        String insertTableSQL = "UPDATE formacao SET idEmpregado = ?, idTipocurso = ?, curso = ?, instituicao = ?, semestre = ?, dtInicio = ?, dtFim = ?"
                + " WHERE idFormacao = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, formacao.getIdEmpregado());
            preparedStatement.setInt(2, formacao.getIdTipocurso());
            preparedStatement.setString(3, formacao.getCurso());
            preparedStatement.setString(4, formacao.getInstituicao());
            preparedStatement.setInt(5, formacao.getSemestre());
            preparedStatement.setString(6, formacao.getDtInicio());
            preparedStatement.setString(7, formacao.getDtFim());
            preparedStatement.setInt(8, formacao.getIdFormacao());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public boolean excluiFormacao(Integer toDelete) {
        String insertTableSQL = "DELETE FROM formacao WHERE idFormacao = ?";
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

    public Formacao procuraFormacaoPeloID(Integer idFormacao) {


        try {
            String sql = "SELECT * FROM formacao WHERE idFormacao = ?";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);
            con.setInt(1, idFormacao);
            ResultSet rs = con.executeQuery();
            
            Formacao form = new Formacao();

            if (rs.next()) {
                form.setIdFormacao(rs.getInt("idFormacao"));
                form.setIdEmpregado(rs.getInt("idEmpregado"));
                form.setIdTipocurso(rs.getInt("idTipocurso"));
                form.setCurso(rs.getString("curso"));
                form.setInstituicao(rs.getString("instituicao"));
                form.setSemestre(rs.getInt("semestre"));
                form.setDtInicio(rs.getString("dtInicio"));
                form.setDtFim(rs.getString("dtFim"));
            }

            rs.close();
            con.close();
            return form;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Formacao> procuraTodasFormacoes() {

        try {
            String sql = "SELECT * FROM formacao;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Formacao> listaFormacoes = new ArrayList<>();
            
            while (rs.next()) {
                Formacao form = new Formacao();
                form.setIdFormacao(rs.getInt("idFormacao"));
                form.setIdEmpregado(rs.getInt("idEmpregado"));
                form.setIdTipocurso(rs.getInt("idTipocurso"));
                form.setCurso(rs.getString("curso"));
                form.setInstituicao(rs.getString("instituicao"));
                form.setSemestre(rs.getInt("semestre"));
                form.setDtInicio(rs.getString("dtInicio"));
                form.setDtFim(rs.getString("dtFim"));
                listaFormacoes.add(form);
            }

            rs.close();
            con.close();
            return listaFormacoes;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }    

}
