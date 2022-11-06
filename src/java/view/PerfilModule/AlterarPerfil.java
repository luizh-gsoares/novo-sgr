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

@WebServlet(name = "AlterarPerfil", urlPatterns = {"/alterarperfil"})
public class AlterarPerfil extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PerfilDAO pDao = new PerfilDAO();
        Integer idPerfil = Integer.parseInt(request.getParameter("idPerfil"));
        Perfil p = pDao.procuraPerfilPeloID(idPerfil);
        request.setAttribute("perfil", p);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/PerfilModule/alterarPerfil.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Alterar Perfil");
        request.setCharacterEncoding("UTF-8");
        Perfil p = new Perfil();
        int idPerfil = Integer.parseInt(request.getParameter("idPerfil"));
        p.setIdPerfil(idPerfil);
        p.setNome(request.getParameter("nome"));
        p.setDataCadastro(request.getParameter("dataCadastro"));

        PerfilDAO dao = new PerfilDAO();

        if (dao.alteraPerfil(p)) {
            response.sendRedirect("listarperfis");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }

    }

}
