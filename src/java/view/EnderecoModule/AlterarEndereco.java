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

@WebServlet(name = "AlterarEndereco", urlPatterns = {"/alterarendereco"})
public class AlterarEndereco extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        EnderecoDAO eDao = new EnderecoDAO();
        Integer idEndereco = Integer.parseInt(request.getParameter("idEndereco"));
        Endereco e = eDao.procuraEnderecoPeloID(idEndereco);
        request.setAttribute("endereco", e);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/EnderecoModule/alterarEndereco.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Alterar Endereco");
        request.setCharacterEncoding("UTF-8");
        Endereco e = new Endereco();
        int idEndereco = Integer.parseInt(request.getParameter("idEndereco"));
        e.setIdEndereco(idEndereco);
        e.setCep(request.getParameter("cep"));
        e.setLogradouro(request.getParameter("logradouro"));
        e.setComplemento(request.getParameter("complemento"));
        int idCidade = Integer.parseInt(request.getParameter("idCidade"));
        e.setIdCidade(idCidade);

        EnderecoDAO dao = new EnderecoDAO();

        if (dao.alteraEndereco(e)) {
            response.sendRedirect("listarendereco");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }

    }

}
