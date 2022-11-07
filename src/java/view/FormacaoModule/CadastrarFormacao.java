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

@WebServlet(name = "CadastrarExperiencia", urlPatterns = {"/cadastrarexperiencia"})
public class CadastrarFormacao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/ExperienciaModule/cadastrarExperiencia.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR EXPERIENCIA");
        request.setCharacterEncoding("UTF-8");
        Experiencia e = new Experiencia();
        e.setIdEmpregado(Integer.parseInt(request.getParameter("idEmpregado")));
        e.setFuncao(request.getParameter("funcao"));
        e.setLocal(request.getParameter("local"));
        e.setCre(Integer.parseInt(request.getParameter("cre")));
        e.setDtSaida(request.getParameter("dtSaida"));
        e.setDtEntrada(request.getParameter("dtEntrada"));
        String page = "home.jsp";

        ExperienciaDAO dao = new ExperienciaDAO();

        if (dao.cadastraExperiencia(e)) {
            page = "listarexperiencia";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Experiencia não inserido.");
        }

    }

}