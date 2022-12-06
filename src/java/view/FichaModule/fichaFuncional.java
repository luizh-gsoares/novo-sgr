package view.FichaModule;

import dao.EmpregadoDAO;
import dao.EnderecoDAO;
import dao.ExperienciaDAO;
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
import model.Cidade;
import model.Empregado;
import model.Endereco;
import model.Experiencia;
import model.Formacao;
import model.Telefone;
import model.Tipocurso;
import model.Tipovinculo;

@WebServlet(name = "FichaFuncional", urlPatterns = {"/fichafuncional"})
public class fichaFuncional extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));

        EmpregadoDAO empDao = new EmpregadoDAO();
        ArrayList<Empregado> listaEmpregados = empDao.procuraEmpregadoPeloEmpregado(idEmpregado);
        System.out.println(listaEmpregados);
        request.setAttribute("listaEmpregados", listaEmpregados);

        TelefoneDAO tDao = new TelefoneDAO();
        ArrayList<Telefone> listaTelefones = tDao.procuraTelefonePeloEmpregado(idEmpregado);
        System.out.println(listaTelefones);
        request.setAttribute("listaTelefones", listaTelefones);

        FormacaoDAO fDao = new FormacaoDAO();
        ArrayList<Formacao> listaFormacoes = fDao.procuraFormacaoPeloEmpregado(idEmpregado);
        System.out.println(listaFormacoes);
        request.setAttribute("listaFormacoes", listaFormacoes);

        EnderecoDAO endDao = new EnderecoDAO();
        ArrayList<Endereco> listaEnderecos = endDao.procuraEnderecoPeloEmpregado(idEmpregado);
        System.out.println(listaEnderecos);
        request.setAttribute("listaEnderecos", listaEnderecos);

        ExperienciaDAO expDao = new ExperienciaDAO();
        ArrayList<Experiencia> listaExperiencia = expDao.procuraExperienciaPeloEmpregado(idEmpregado);
        System.out.println(listaExperiencia);
        request.setAttribute("listaExperiencia", listaExperiencia);

        // subdados das fichas
        ArrayList<Endereco> listaDeEnderecos = endDao.procuraTodosEnderecos();
        request.setAttribute("listaDeEnderecos", listaDeEnderecos);

        ArrayList<Cidade> listaDeCidades = endDao.procuraTodasCidades();
        request.setAttribute("listaDeCidades", listaDeCidades);

        ArrayList<Tipocurso> listaDeTipocursos = fDao.procuraTodosTipocursos();
        request.setAttribute("listaDeTipocursos", listaDeTipocursos);

        ArrayList<Experiencia> listaDeExperiencias = expDao.procuraTodosExperiencias();
        request.setAttribute("listaDeExperiencias", listaDeExperiencias);

        ArrayList<Tipovinculo> listaDeTipovinculos = expDao.procuraTodosTipovinculos();
        request.setAttribute("listaDeTipovinculos", listaDeTipovinculos);

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
