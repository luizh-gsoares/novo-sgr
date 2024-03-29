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
import model.Empregado;
import model.Telefone;

@WebServlet(name = "CadastrarTelefone", urlPatterns = {"/cadastrartelefone"})
public class CadastrarTelefone extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        EmpregadoDAO eDao = new EmpregadoDAO();
        Integer idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        Empregado e = eDao.procuraEmpregadoPeloID(idEmpregado);
        request.setAttribute("empregado", e);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/TelefoneModule/cadastrarTelefone.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR TELEFONE");
        request.setCharacterEncoding("UTF-8");
        Telefone t = new Telefone();

        int idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        t.setIdEmpregado(idEmpregado);
        t.setTelefoneResidencial(request.getParameter("telefoneResidencial"));
        t.setTelefoneCelular(request.getParameter("telefoneCelular"));
        t.setTelefoneRecado(request.getParameter("telefoneCelular"));
        String page = "index.jsp";

        TelefoneDAO dao = new TelefoneDAO();

        if (dao.cadastraTelefone(t)) {
            page = "listartelefones";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Telefone não inserido.");
        }

    }

}
