package view.ExperienciaModule;

import dao.ExperienciaDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Experiencia;

@WebServlet(name = "ExcluirExperiencia", urlPatterns = {"/excluirexperiencia"})
public class ExcluirExperiencia extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/ExperienciaModule/ListarExperiencias.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir EXPERIENCIA");

        Experiencia e = new Experiencia();
        e.setIdExperiencia(Integer.parseInt(request.getParameter("idExperiencia")));

        ExperienciaDAO dao = new ExperienciaDAO();

        dao.excluiExperiencia(e.getIdExperiencia());
        String page = "/ExperienciaModule/listarExperiencias.jsp";
        response.sendRedirect("listarexperiencias");
    }

}
