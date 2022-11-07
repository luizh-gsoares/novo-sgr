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


@WebServlet(name = "ListarExperiencias", urlPatterns = {"/listarexperiencias"})
public class ListarFormacoes extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ExperienciaDAO dao = new ExperienciaDAO();
        ArrayList<Experiencia> listaDeExperiencias = dao.procuraTodosExperiencias();
            request.setAttribute("listaDeExperiencia", listaDeExperiencias);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/ExperienciaModule/listarExperiencias.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR EXPERIENCIA");
    }

}
