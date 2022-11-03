
package view;
        
import dao.SexoDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Sexo;


@WebServlet(name = "buscarSexo", urlPatterns = {"/buscarsexo"})
public class buscarSexo extends HttpServlet {
    
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("GET - BUSCARSEXO");
        SexoDAO sdao = new SexoDAO();
        ArrayList<Sexo> listaDeSexos = sdao.procuraTodosSexos();
            request.setAttribute("listaDeSexos", listaDeSexos);
        RequestDispatcher rd = request.getRequestDispatcher("cadastrarPerfil.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR USUARIO");
    }

}


