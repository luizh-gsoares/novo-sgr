package view;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;
import dao.UsuarioDAO;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class Login extends HttpServlet {
    private static HttpServletResponse response;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession();
        sessao.removeAttribute("userLogado");
        sessao.invalidate();
        response.sendRedirect("login.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        Login.response = response;
        Usuario u = new Usuario();
        u.setLogin(request.getParameter("login"));
        u.setSenha(request.getParameter("senha"));

        String page = "index.jsp";

        UsuarioDAO dao = new UsuarioDAO();

        if (dao.validar(u)) {
            u = dao.procuraUsuarioPeloID(u.getLogin());
            request.setAttribute("usuario", u);
            HttpSession sessao = request.getSession();
            sessao.setAttribute("userLogado", u);
            response.sendRedirect("index.jsp");
            System.out.println("Usuário logado");
        } else {
            //enviar um atributo msg de erro
            exibirMensagem("Login ou Senha Inválidos!");
            request.setAttribute("erro", "Usuário ou senha inválida!");
        }
    }
    
    private static void exibirMensagem(String mensagem){
        try {
             PrintWriter out = response.getWriter();
             out.print(
                "<script type='text/javascript'>" +
                "alert('" + mensagem + "');"+
                "history.back();" +
                "</script>");
        out.close();
            
        } catch (IOException e) {
            System.out.println("Erro: " + e.getMessage());
            e.printStackTrace();
        }
       
        
    }
    
}
