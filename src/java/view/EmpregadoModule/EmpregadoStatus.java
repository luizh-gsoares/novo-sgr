package view.EmpregadoModule;

import dao.EmpregadoDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Empregado;

@WebServlet(name = "EmpregadoStatus", urlPatterns = {"/empregadostatus"})
public class EmpregadoStatus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        EmpregadoDAO eDao = new EmpregadoDAO();
        Integer idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        Empregado e = eDao.procuraEmpregadoPeloID(idEmpregado);
        System.out.println(e);
        request.setAttribute("empregado", e);

        
        if (e.getStatus() == 2) {
            eDao.ativar(e);
            response.sendRedirect("listarempregados");
        } else if (e.getStatus() == 1) {
            eDao.desativar(e);
            response.sendRedirect("listarempregados");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Gerenciar Status Empregado");
        request.setCharacterEncoding("UTF-8");

    }
}
