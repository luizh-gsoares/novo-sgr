package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Sexo;

public class SexoDAO {
      public ArrayList<Sexo> procuraTodosSexos() {

        try {
            String sql = "SELECT * FROM sexo;";
            PreparedStatement con = DbConnect.getConexao().prepareStatement(sql);

            ResultSet rs = con.executeQuery();

            ArrayList<Sexo> listaSexos = new ArrayList<>();
            while (rs.next()) {
                Sexo sex = new Sexo();

                sex.setIdSexo(rs.getInt("idSexo"));
                sex.setSexo(rs.getString("sexo"));

                listaSexos.add(sex);
            }
            rs.close();
            con.close();
            return listaSexos;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
