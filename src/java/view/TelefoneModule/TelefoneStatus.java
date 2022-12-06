package view.TelefoneModule;

import view.TelefoneModule.*;
import dao.TelefoneDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Telefone;

@WebServlet(name = "TelefoneStatus", urlPatterns = {"/telefonestatus"})
public class TelefoneStatus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        TelefoneDAO tDao = new TelefoneDAO();
        Integer idTelefone = Integer.parseInt(request.getParameter("idTelefone"));
        Telefone t = tDao.procuraTelefonePeloID(idTelefone);
        System.out.println(t);
        request.setAttribute("telefone", t);

        if (t.getStatus() == 2) {
            tDao.ativar(t);
            response.sendRedirect("listartelefones");
        } else if (t.getStatus() == 1) {
            tDao.desativar(t);
            response.sendRedirect("listartelefones");
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
