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

@WebServlet(name = "AlterarFormacao", urlPatterns = {"/alterarformacao"})
public class AlterarFormacao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        FormacaoDAO fDao = new FormacaoDAO();
        Integer idFormacao = Integer.parseInt(request.getParameter("idFormacao"));
        Formacao f = fDao.procuraFormacaoPeloID(idFormacao);
        request.setAttribute("formacao", f);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/FormacaoModule/alterarFormacao.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Alterar FORMACAO");
        request.setCharacterEncoding("UTF-8");
        Formacao f = new Formacao();
        int idFormacao = Integer.parseInt(request.getParameter("idFormacao"));
        f.setIdFormacao(idFormacao);
        int idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        f.setIdEmpregado(idEmpregado);
        int idTipocurso = Integer.parseInt(request.getParameter("idTipocurso"));
        f.setIdTipocurso(idTipocurso);
        f.setCurso(request.getParameter("curso"));
        f.setInstituicao(request.getParameter("instituicao"));
        int semestre = Integer.parseInt(request.getParameter("semestre"));
        f.setSemestre(semestre);
        f.setDtInicio(request.getParameter("dtInicio"));
        f.setDtFim(request.getParameter("dtFim"));

        FormacaoDAO dao = new FormacaoDAO();

        if (dao.alteraFormacao(f)) {
            response.sendRedirect("listarformacoes");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
        ;
    }

}
