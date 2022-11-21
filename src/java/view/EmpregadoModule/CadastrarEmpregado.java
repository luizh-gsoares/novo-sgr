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

@WebServlet(name = "CadastrarEmpregado", urlPatterns = {"/cadastrarempregado"})
public class CadastrarEmpregado extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/EmpregadoModule/cadastrarEmpregado.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR EMPREGADO");
        request.setCharacterEncoding("UTF-8");
        Empregado e = new Empregado();
        // COPILOT : " (nome, matricula, nomeSocial, nacionalidade, naturalidade, uf,
        // dataNasc, sexo, estadoCivil, rg, dataxpedicao, orgaoExpedidor, cpf,
        // zonaEleitoral, secao, tituloEleitoral, email, nomeConjugue, nomePai, nomeMae,
        // especial)"
        e.setNome(request.getParameter("nome"));
        e.setMatricula(request.getParameter("matricula"));
        e.setNomeSocial(request.getParameter("nomeSocial"));
        int nacionalidade = Integer.parseInt(request.getParameter("nacionalidade"));
        e.setNacionalidade(nacionalidade);
        int naturalidade = Integer.parseInt(request.getParameter("naturalidade"));
        e.setNaturalidade(naturalidade);
        e.setUf(request.getParameter("uf"));
        e.setDataNasc(request.getParameter("dataNasc"));
        int sexo = Integer.parseInt(request.getParameter("sexo"));
        e.setSexo(sexo);
        int etnia = Integer.parseInt(request.getParameter("etnia"));
        e.setEtnia(etnia);
        e.setEstadoCivil(request.getParameter("estadoCivil"));
        e.setRg(request.getParameter("rg"));
        e.setDataExpedicao(request.getParameter("dataExpedicao"));
        e.setOrgaoExpedidor(request.getParameter("orgaoExpedidor"));
        e.setCpf(request.getParameter("cpf"));
        e.setZonaEleitoral(request.getParameter("zonaEleitoral"));
        e.setSecao(request.getParameter("secao"));
        e.setTituloEleitoral(request.getParameter("tituloEleitoral"));
        e.setEmail(request.getParameter("email"));
        e.setNomeConjugue(request.getParameter("nomeConjugue"));
        e.setNomePai(request.getParameter("nomePai"));
        e.setNomeMae(request.getParameter("nomeMae"));
        int especial = Integer.parseInt(request.getParameter("especial"));
        e.setEspecial(especial);
        int idEmpregado = Integer.parseInt(request.getParameter("idEmpregado"));
        e.setIdEmpregado(idEmpregado);

        EmpregadoDAO dao = new EmpregadoDAO();

        if (dao.cadastraEmpregado(e)) {
            String page = "listarempregados";
            response.sendRedirect(page);
        } else {
            // enviar um atributo msg de erro
            request.setAttribute("erro", "Empregado não inserido.");
        }
        ;
    }

}
