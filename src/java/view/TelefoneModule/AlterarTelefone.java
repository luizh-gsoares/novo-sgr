package view.TelefoneModule;

import dao.EmpregadoDAO;
import dao.TelefoneDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Telefone;

@WebServlet(name = "AlterarTelefone", urlPatterns = {"/alterartelefone"})
public class AlterarTelefone extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        TelefoneDAO tDao = new TelefoneDAO();
        int idTelefone = Integer.parseInt(request.getParameter("idTelefone"));
        Telefone t = tDao.procuraTelefonePeloID(idTelefone);
        request.setAttribute("telefone", t);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/TelefoneModule/alterarTelefone.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Alterar TELEFONE");
        request.setCharacterEncoding("UTF-8");
        Telefone t = new Telefone();
        t.setTelefoneResidencial(Integer.parseInt(request.getParameter("telefoneResidencial")));
        t.setTelefoneCelular(Integer.parseInt(request.getParameter("telefoneCelular")));
        t.setTelefoneRecado(Integer.parseInt(request.getParameter("telefoneCelular")));
        t.setIdTelefone(Integer.parseInt(request.getParameter("idTelefone")));

        TelefoneDAO dao = new TelefoneDAO();

        if (dao.alteraTelefone(t)) {
            response.sendRedirect("listartelefones");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
        ;
    }

}
