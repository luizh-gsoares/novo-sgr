package view.EnderecoModule;

import view.EnderecoModule.*;
import dao.EnderecoDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Endereco;

@WebServlet(name = "EnderecoStatus", urlPatterns = {"/enderecostatus"})
public class EnderecoStatus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        EnderecoDAO eDao = new EnderecoDAO();
        Integer idEndereco = Integer.parseInt(request.getParameter("idEndereco"));
        Endereco e = eDao.procuraEnderecoPeloID(idEndereco);
        System.out.println(e);
        request.setAttribute("endereco", e);

        if (e.getStatus() == 2) {
            eDao.ativar(e);
            response.sendRedirect("listarenderecos");
        } else if (e.getStatus() == 1) {
            eDao.desativar(e);
            response.sendRedirect("listarenderecos");
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
