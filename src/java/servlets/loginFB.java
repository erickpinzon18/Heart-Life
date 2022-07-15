package servlets;

import bd.Conexion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.Usuario;

@WebServlet(name = "loginFB", urlPatterns = {"/jsp/Login/loginFB"})
public class loginFB extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");
        String id_fb = request.getParameter("id_fb");
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass2");
        String fec_nac = request.getParameter("fec_nac");
        Conexion c = new Conexion();
        Usuario u = new Usuario();
        u.setUsuario(user);
        u.setId_fb(id_fb);
        u.setNombre(nombre);
        u.setCorreo(email);
        u.setPassword(pass);
        u.setFec_nac(fec_nac);
        c.insertarUsuario(u);
        HttpSession session = request.getSession();        
        session.setAttribute("user", user);        
        response.sendRedirect("../../login.jsp");    
    }

}
