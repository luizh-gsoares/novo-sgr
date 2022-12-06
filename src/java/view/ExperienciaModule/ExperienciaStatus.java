package view.ExperienciaModule;

import view.ExperienciaModule.*;
import dao.ExperienciaDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Experiencia;

@WebServlet(name = "ExperienciaStatus", urlPatterns = {"/experienciastatus"})
public class ExperienciaStatus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        ExperienciaDAO eDao = new ExperienciaDAO();
        Integer idExperiencia = Integer.parseInt(request.getParameter("idExperiencia"));
        Experiencia e = eDao.procuraExperienciaPeloID(idExperiencia);
        System.out.println(e);
        request.setAttribute("experiencia", e);

        if (e.getStatus() == 2) {
            eDao.ativar(e);
            response.sendRedirect("listarexperiencias");
        } else if (e.getStatus() == 1) {
            eDao.desativar(e);
            response.sendRedirect("listarexperiencias");
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
