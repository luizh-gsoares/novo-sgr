package view.FormacaoModule;

import dao.EmpregadoDAO;
import dao.FormacaoDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Empregado;
import model.Formacao;

@WebServlet(name = "CadastrarFormacao", urlPatterns = {"/cadastrarformacao"})
public class CadastrarFormacao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmpregadoDAO eDao = new EmpregadoDAO();
        Integer idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        Empregado e = eDao.procuraEmpregadoPeloID(idEmpregado);
        request.setAttribute("empregado", e);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/FormacaoModule/cadastrarFormacao.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR FORMACAO");
        request.setCharacterEncoding("UTF-8");
        Formacao f = new Formacao();

        f.setIdEmpregado(Integer.parseInt(request.getParameter("idEmpregado")));
        f.setIdTipocurso(Integer.parseInt(request.getParameter("idTipocurso")));
        f.setCurso(request.getParameter("curso"));
        f.setInstituicao(request.getParameter("instituicao"));
        f.setSemestre(Integer.parseInt(request.getParameter("semestre")));
        f.setDtInicio(request.getParameter("dtInicio"));
        f.setDtFim(request.getParameter("dtFim"));
        String page = "home.jsp";

        FormacaoDAO dao = new FormacaoDAO();

        if (dao.cadastraFormacao(f)) {
            page = "listarformacoes";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Formacao não inserido.");
        }

    }

}
