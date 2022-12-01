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
import model.Tipocurso;

@WebServlet(name = "ListarFormacoes", urlPatterns = {"/listarformacoes"})
public class ListarFormacoes extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FormacaoDAO dao = new FormacaoDAO();
        ArrayList<Formacao> listaDeFormacoes = dao.procuraTodasFormacoes();
        request.setAttribute("listaDeFormacoes", listaDeFormacoes);
        
        ArrayList<Tipocurso> listaDeTipocursos = dao.procuraTodosTipocursos();
        request.setAttribute("listaDeTipocursos", listaDeTipocursos);
        
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/FormacaoModule/listarFormacoes.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR FORMACAO");
    }

}
