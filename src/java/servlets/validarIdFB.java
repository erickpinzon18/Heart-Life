package servlets;

import bd.Conexion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "validarIdFB", urlPatterns = {"/validarIdFB"})
public class validarIdFB extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user_name");
        String id = request.getParameter("user_id");
        Conexion c = new Conexion();
        
        if (c.validarEnBD("id_fb", id)) {
            HttpSession session = request.getSession();        
            session.setAttribute("user", c.validarIdFB(id));        
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("jsp/Login/LoginFB.jsp?user_name=" + user + "&user_id="+ id);
        }        
    }
}
