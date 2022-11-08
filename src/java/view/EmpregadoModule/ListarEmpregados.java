
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

@WebServlet(name = "ListarEnderecos", urlPatterns = {"/listarenderecos"})
public class ListarEmpregados extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EnderecoDAO dao = new EnderecoDAO();
        ArrayList<Endereco> listaDeEnderecos = dao.procuraTodosEnderecos();
            request.setAttribute("listaDeEnderecos", listaDeEnderecos);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/EnderecoModule/listarEnderecos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR ENDERECO");
    }

}
