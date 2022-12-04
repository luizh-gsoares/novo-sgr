package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Funcao;
import model.Perfil;
import model.Usuario;

public class UsuarioDAO {

    public boolean cadastrarUsuario(Usuario usuario) {
        String insertTableSQL = "INSERT INTO usuarios" + "(login, senha, idPerfil) VALUES" + "(?,?, ?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = DbConnect.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, usuario.getLogin());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setInt(3, usuario.getIdPerfil());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraUsuario(Usuario usuario) {
        String insertTableSQL = "UPDATE usuarios SET senha = ?, idPerfil = ?"
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
                user.setIdUsuario(rs.getInt("idUsuario"));
                user.setLogin(rs.getString("login"));
                user.setSenha(rs.getString("senha"));
                user.setIdPerfil(rs.getInt("idPerfil"));
            }
            rs.close();
            con.close();
            return user;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Usuario> procuraTodosUsuarios() {

        try {
            String sql = "SELECT * FROM usuarios;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Usuario> listaUsuarios = new ArrayList<>();

            while (rs.next()) {
                Usuario usur = new Usuario();
                usur.setIdUsuario(rs.getInt("idUsuario"));
                usur.setLogin(rs.getString("login"));
                usur.setSenha(rs.getString("senha"));
                usur.setIdPerfil(rs.getInt("idPerfil"));
                listaUsuarios.add(usur);
            }

            rs.close();
            con.close();
            return listaUsuarios;

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

    public boolean ativar(Usuario u) throws SQLException {
        Connection con = DbConnect.getConexao();
        String sql = "UPDATE usuario SET status = 1"
                + "WHERE idUsuario = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, u.getIdUsuario());
        ps.executeUpdate();

        return true;
    }

    public boolean desativar(Usuario u) throws SQLException {
        Connection con = DbConnect.getConexao();
        String sql = "UPDATE usuario SET status = 2"
                + "WHERE idUsuario = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, u.getIdUsuario());
        ps.executeUpdate();

        return true;
    }

    public boolean validar(Usuario u) {
        try {
            //con: referência para a conexão com o banco
            Connection con = DbConnect.getConexao();
            String sql = "SELECT * FROM usuarios WHERE login = ? AND senha = ?";

            //executar o sql
            PreparedStatement ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
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
