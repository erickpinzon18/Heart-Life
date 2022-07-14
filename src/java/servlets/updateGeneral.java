package servlets;

import bd.Conexion;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.General;
import modelos.Usuario;

@WebServlet(name = "updateGeneral", urlPatterns = {"/profile/updateGeneral"})
public class updateGeneral extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Conexion c = new Conexion();
        Usuario u = new Usuario();
        General g = new General();
        u.setNombre(request.getParameter("name"));
        u.setUsuario(request.getParameter("usuario"));
        u.setCorreo(request.getParameter("email"));
        u.setFec_nac(request.getParameter("fec_nac"));
        g.setUser(request.getParameter("usuario"));
        g.setDirec(request.getParameter("direc"));
        g.setCiudad(request.getParameter("city"));
        g.setEstado(request.getParameter("estado"));
        g.setCp(Integer.parseInt(request.getParameter("cp")));
        c.modificarUsuario(u);
        c.modificarGeneral(g);
        response.sendRedirect("general.jsp");
    }
}
