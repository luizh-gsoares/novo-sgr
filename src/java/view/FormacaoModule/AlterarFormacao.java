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

@WebServlet(name = "AlterarExperiencia", urlPatterns = {"/alterarexperiencia"})
public class AlterarFormacao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        ExperienciaDAO eDao = new ExperienciaDAO();
        Integer idExperiencia = Integer.parseInt(request.getParameter("idExperiencia"));
        Experiencia e = eDao.procuraExperienciaPeloID(idExperiencia);
        request.setAttribute("experiencia", e);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/ExperienciaModule/alterarExperiencia.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Alterar EXPERIENCIA");
        request.setCharacterEncoding("UTF-8");
        Experiencia e = new Experiencia();
        int idExperiencia = Integer.parseInt(request.getParameter("idExperiencia"));
        e.setIdExperiencia(idExperiencia);
        int idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        e.setIdEmpregado(idEmpregado);
        e.setFuncao(request.getParameter("funcao"));
        e.setLocal(request.getParameter("local"));
        int idCre = Integer.parseInt(request.getParameter("Cre"));
        e.setCre(idCre);
        e.setDtSaida(request.getParameter("dtSaida"));
        e.setDtEntrada(request.getParameter("dtEntrada"));

        ExperienciaDAO dao = new ExperienciaDAO();

        if (dao.alteraExperiencia(e)) {
            response.sendRedirect("listarexperiencias");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
        ;
    }

}
