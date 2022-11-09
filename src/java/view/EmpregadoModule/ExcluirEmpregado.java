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

//excluir
@WebServlet(name = "ExcluirEmpregado", urlPatterns = {"/excluirempregado"})
public class ExcluirEmpregado extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
        .getRequestDispatcher("/WEB-INF/EmpregadoModule/listarEmpregados.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir Empregado");


        Empregado e = new Empregado();
        
        e.setIdEmpregado(Integer.parseInt(request.getParameter("idEmpregado")));
        
        EmpregadoDAO dao = new EmpregadoDAO();

        dao.excluiEmpregado(e.getIdEmpregado());
        String page = "/EnderecoModule/listarempregados.jsp";
        response.sendRedirect("listarempregados");
    }

}
