
package view.PerfilModule;

import dao.PerfilDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Perfil;


@WebServlet(name = "ListarPerfis", urlPatterns = {"/listarperfis"})
public class ListarPerfis extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PerfilDAO dao = new PerfilDAO();
        ArrayList<Perfil> listaDePerfis = dao.procuraTodosPerfis();
            request.setAttribute("listaDePerfis", listaDePerfis);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/PerfilModule/listarPerfis.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR PERFIL");
    }

}
