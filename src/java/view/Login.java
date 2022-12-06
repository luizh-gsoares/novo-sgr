package view;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    private static HttpServletResponse response;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        Login.response = response;

        Usuario u = new Usuario();
        u.setLogin(request.getParameter("login"));
        u.setSenha(request.getParameter("senha"));

        UsuarioDAO dao = new UsuarioDAO();

        if (dao.validar(u)) {

            //get the old session and invalidate
            HttpSession oldSession = request.getSession(false);
            if (oldSession != null) {
                oldSession.invalidate();
            }
            //generate a new session
            HttpSession newSession = request.getSession(true);

            //setting session to expiry in 5 mins
            newSession.setMaxInactiveInterval(5 * 60);

            Cookie message = new Cookie("message", "Welcome");
            response.addCookie(message);

            //Legacy Session
            HttpSession ses = request.getSession();
            ses.setAttribute("usuario", u);
            request.setAttribute("usuario", u);

            response.sendRedirect("listarempregados");

        } else {
            exibirMensagem("Login ou senha inválidos");
        }
    }

    private static void exibirMensagem(String mensagem) {
        try {
            PrintWriter out = response.getWriter();
            out.print(
                    "<script type='text/javascript'>"
                    + "alert('" + mensagem + "');"
                    + "history.back();"
                    + "</script>");
            out.close();

        } catch (IOException e) {
            System.out.println("Erro: " + e.getMessage());
            e.printStackTrace();
        }

    }

}
