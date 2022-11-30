 package view.EnderecoModule;

import dao.EnderecoDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Endereco;

@WebServlet(name = "ExcluirEndereco", urlPatterns = {"/excluirendereco"})
public class ExcluirEndereco extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/EnderecoModule/listarEnderecos.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir ENDERECO");

        Endereco e = new Endereco();
        e.setIdEndereco(Integer.parseInt(request.getParameter("idEndereco")));
        
        EnderecoDAO dao = new EnderecoDAO();

        dao.excluiEndereco(e.getIdEndereco());
        String page = "/EnderecoModule/listarEnderecos.jsp";
        response.sendRedirect("listarenderecos");
    }

}
