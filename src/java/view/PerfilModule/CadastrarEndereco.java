package view.PerfilModule;

import dao.PerfilDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Perfil;

@WebServlet(name = "CadastrarPerfil", urlPatterns = {"/cadastrarperfil"})
public class CadastrarEndereco extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/PerfilModule/cadastrarPerfil.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR PERFIL");
        request.setCharacterEncoding("UTF-8");
        Perfil p = new Perfil();
        p.setNome(request.getParameter("nome"));
        p.setDataCadastro(request.getParameter("dataCadastro"));
        String page = "home.jsp";

        PerfilDAO dao = new PerfilDAO();

        if (dao.cadastraPerfil(p)) {
            page = "listarperfis";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Perfil não inserido.");
        }

    }

}
