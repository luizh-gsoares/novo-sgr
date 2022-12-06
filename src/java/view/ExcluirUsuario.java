package view;

import dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;

//excluir
@WebServlet(name = "ExcluirUsuario", urlPatterns = {"/excluirusuario"})
public class ExcluirUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
        .getRequestDispatcher("/WEB-INF/EmpregadoModule/listarUsuarios.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir Empregado");


        Usuario u = new Usuario();
        
        u.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
        
        UsuarioDAO dao = new UsuarioDAO();
        dao.excluiUsuario(u.getIdUsuario());
        String page = "/EnderecoModule/listarempregados.jsp";
        response.sendRedirect("listarusuarios");
    }

}
