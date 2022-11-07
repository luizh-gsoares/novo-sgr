package view.TelefoneModule;

import dao.TelefoneDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Telefone;

@WebServlet(name = "ExcluirTelefone", urlPatterns = {"/excluirtelefone"})
public class ExcluirTelefone extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/TelefoneModule/listarTelefones.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir TELEFONE ");

        Telefone t = new Telefone();
        t.setIdTelefone(Integer.parseInt(request.getParameter("idTelefone")));
        
        TelefoneDAO dao = new TelefoneDAO();

        dao.excluiTelefone(t.getIdTelefone());
        String page = "/TelefoneModule/listarTelefones.jsp";
        response.sendRedirect("listartelefones");
    }

}
