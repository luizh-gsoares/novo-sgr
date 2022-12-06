package view;

import view.*;
import dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;

@WebServlet(name = "UsuarioStatus", urlPatterns = {"/usuariostatus"})
public class UsuarioStatus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        UsuarioDAO uDao = new UsuarioDAO();
        Integer idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        Usuario u = uDao.procuraUsuarioPeloIDAlternativo(idUsuario);
        System.out.println(u);
        request.setAttribute("usuario", u);

        if (u.getStatus() == 2) {
            uDao.ativar(u);
            response.sendRedirect("listarenderecos");
        } else if (u.getStatus() == 1) {
            uDao.desativar(u);
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
