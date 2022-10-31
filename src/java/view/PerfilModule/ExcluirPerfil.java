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

@WebServlet(name = "ExcluirPerfil", urlPatterns = {"/excluirperfil"})
public class ExcluirPerfil extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/PerfilModule/ListarPerfis.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir PERFIL");

        Perfil p = new Perfil();
        p.setIdPerfil(Integer.parseInt(request.getParameter("idPerfil")));
        
        PerfilDAO dao = new PerfilDAO();

        dao.excluiPerfil(p.getIdPerfil());
        String page = "/PerfilModule/listarPerfis.jsp";
        response.sendRedirect("listarperfis");
    }

}
