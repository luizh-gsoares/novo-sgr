package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Usuario;

public class UsuarioDAO {

    public boolean cadastraUsuario(Usuario usuario) {
        String insertTableSQL = "INSERT INTO usuarios" + "(login, senha, ) VALUES" + "(?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, usuario.getLogin());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraUsuario(Usuario usuario) {
        String insertTableSQL = "UPDATE usuarios SET senha = ?, nome = ?, idEmpregado = ?, idPerfil = ?"
                + "WHERE login = ? ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, usuario.getLogin());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setInt(3, usuario.getIdEmpregado());
            preparedStatement.setInt(4, usuario.getIdPerfil());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean excluiUsuario(String toDelete) {
        String insertTableSQL = "DELETE FROM usuarios WHERE login = ? ; ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, toDelete);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Usuario procuraUsuarioPeloID(String login) {

        try {
            String sql = "SELECT * FROM usuarios WHERE login = ? ;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            con.setString(1, login);
            ResultSet rs = con.executeQuery();
            Usuario user = new Usuario();

            if (rs.next()) {

                user.setLogin(rs.getString("login"));
                user.setSenha(rs.getString("senha"));
            }
            rs.close();
            con.close();
            return user;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean validar(Usuario u) {
        try {
            //con: referência para a conexão com o banco
            Connection con = DbConnect.getConexao();
            String sql = "SELECT * FROM usuarios WHERE login = ? AND senha = ?";

            //executar o sql
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getLogin());
            ps.setString(2, u.getSenha());

            //representa o resultado do SQL
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
