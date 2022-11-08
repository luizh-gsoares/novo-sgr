package view.FormacaoModule;

import dao.FormacaoDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Formacao;

@WebServlet(name = "ExcluirFormacao", urlPatterns = {"/excluirformacao"})
public class ExcluirFormacao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/FormacaoModule/ListarFormacoes.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir FORMACAO");

        Formacao f = new Formacao();
        f.setIdFormacao(Integer.parseInt(request.getParameter("idFormacao")));

        FormacaoDAO dao = new FormacaoDAO();

        dao.excluiFormacao(f.getIdFormacao());
        String page = "/FormacaoModule/listarFormacoes.jsp";
        response.sendRedirect("listarformacoes");
    }

}
