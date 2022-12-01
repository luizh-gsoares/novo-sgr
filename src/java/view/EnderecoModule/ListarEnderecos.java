
package view.EnderecoModule;

import dao.EnderecoDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cidade;
import model.Endereco;


@WebServlet(name = "ListarEnderecos", urlPatterns = {"/listarenderecos"})
public class ListarEnderecos extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EnderecoDAO dao = new EnderecoDAO();
        
        ArrayList<Endereco> listaDeEnderecos = dao.procuraTodosEnderecos();
            request.setAttribute("listaDeEnderecos", listaDeEnderecos);
        
        ArrayList<Cidade> listaDeCidades = dao.procuraTodasCidades();
            request.setAttribute("listaDeCidades", listaDeCidades);
            
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/EnderecoModule/listarEnderecos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR ENDERECO");
    }

}
