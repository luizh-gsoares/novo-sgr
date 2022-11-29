package view.TelefoneModule;

import dao.EmpregadoDAO;
import dao.TelefoneDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Empregado;
import model.Telefone;

@WebServlet(name = "ListarTelefones", urlPatterns = {"/listartelefones"})
public class ListarTelefones extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TelefoneDAO dao = new TelefoneDAO();
        ArrayList<Telefone> listaDeTelefones = dao.procuraTodosTelefones();
        request.setAttribute("listaDeTelefones", listaDeTelefones);
        EmpregadoDAO edao = new EmpregadoDAO();
        ArrayList<Empregado> listaDeEmpregados = edao.procuraTodosEmpregados();
        request.setAttribute("listaDeEmpregados", listaDeEmpregados);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/TelefoneModule/listarTelefones.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - LISTAR TELEFONE");
    }

}
