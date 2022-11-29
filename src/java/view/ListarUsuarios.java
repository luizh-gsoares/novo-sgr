    
package view;

import dao.UsuarioDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;


@WebServlet(name = "ListarUsuario", urlPatterns = {"/listarusuarios"})
public class ListarUsuarios extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDAO dao = new UsuarioDAO();
        ArrayList<Usuario> listaDeUsuarios = dao.procuraTodosUsuarios();
            request.setAttribute("listaDeUsuarios", listaDeUsuarios);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/listarUsuarios.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - LISTAR USUARIOS");
    }

}
