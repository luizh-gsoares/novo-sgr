
package view;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;


@WebServlet(name = "CadastrarUsuario", urlPatterns = {"/cadastrarusuario"})
public class CadastrarUsuario extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/cadastrarUsuario.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR USUARIO");
        Usuario u = new Usuario();
        u.setLogin(request.getParameter("login"));
        u.setSenha(request.getParameter("senha"));
        int idPerfil = Integer.parseInt(request.getParameter("idPerfil"));
        u.setIdPerfil(idPerfil);

        UsuarioDAO dao = new UsuarioDAO();

        if (dao.cadastrarUsuario(u)) {
            request.setAttribute("usuario", u);
            HttpSession ses = request.getSession();
            ses.setAttribute("usuario",u);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Usuário ou senha inválida!");
        }
        
        response.sendRedirect("listarusuarios");

    }

}
