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

@WebServlet(name = "CadastrarEndereco", urlPatterns = {"/cadastrarendereco"})
public class CadastrarEmpregado extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/EnderecoModule/cadastrarEndereco.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR ENDERECO");
        request.setCharacterEncoding("UTF-8");
        Endereco e = new Endereco();
        e.setCep(request.getParameter("cep"));
        e.setLogradouro(request.getParameter("logradouro"));
        e.setComplemento(request.getParameter("complemento"));
        int idCidade = Integer.parseInt(request.getParameter("idCidade"));
        e.setIdCidade(idCidade);
        String page = "home.jsp";

        EnderecoDAO dao = new EnderecoDAO();

        if (dao.cadastraEndereco(e)) {
            page = "listarenderecos";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Endereco não inserido.");
        }
        ;
    }

}
