package view.FormacaoModule;

import view.FormacaoModule.*;
import dao.FormacaoDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Formacao;

@WebServlet(name = "FormacaoStatus", urlPatterns = {"/formacaostatus"})
public class FormacaoStatus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        FormacaoDAO fDao = new FormacaoDAO();
        Integer idFormacao = Integer.parseInt(request.getParameter("idFormacao"));
        Formacao f = fDao.procuraFormacaoPeloID(idFormacao);
        System.out.println(f);
        request.setAttribute("formacao", f);

        if (f.getStatus() == 2) {
            fDao.ativar(f);
            response.sendRedirect("listarformacoes");
        } else if (f.getStatus() == 1) {
            fDao.desativar(f);
            response.sendRedirect("listarformacoes");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Gerenciar Status Endereco");
        request.setCharacterEncoding("UTF-8");

    }
}
