package view.FichaModule;

import dao.EmpregadoDAO;
import dao.FormacaoDAO;
import dao.TelefoneDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Empregado;
import model.Formacao;
import model.Telefone;
import model.Tipocurso;
import model.Tipovinculo;

@WebServlet(name = "FichaFuncional", urlPatterns = {"/fichafuncional"})
public class FichaFuncional extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));

        TelefoneDAO tDao = new TelefoneDAO();
        ArrayList<Telefone> listaTelefones = tDao.procuraTelefonePeloEmpregado(idEmpregado);
        System.out.println(listaTelefones);
        request.setAttribute("listaTelefones", listaTelefones);

        FormacaoDAO fDao = new FormacaoDAO();
        ArrayList<Formacao> listaFormacoes = fDao.procuraFormacaoPeloEmpregado(idEmpregado);
        System.out.println(listaFormacoes);
        request.setAttribute("listaFormacoes", listaFormacoes);

        
        
        // subdados das fichas
        ArrayList<Tipocurso> listaDeTipocursos = fDao.procuraTodosTipocursos();
        request.setAttribute("listaDeTipocursos", listaDeTipocursos);
        

        EmpregadoDAO edao = new EmpregadoDAO();
        ArrayList<Empregado> listaDeEmpregados = edao.procuraTodosEmpregados();
        request.setAttribute("listaDeEmpregados", listaDeEmpregados);

        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/FichaModule/ficha.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - LISTAR TELEFONE");

    }

}
