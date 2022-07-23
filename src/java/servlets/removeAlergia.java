package servlets;

import bd.Conexion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Alergia;

@WebServlet(name = "removeAlergia", urlPatterns = {"/profile/removeAlergia"})
public class removeAlergia extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");        
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String grav = request.getParameter("grav");
        String fec_det = request.getParameter("fec_det");
        String trat = request.getParameter("trat");
        
        Conexion c = new Conexion();
        Alergia a = new Alergia();
        a.setUser(user);
        a.setnAler(id);
        a.setNombre(name);
        a.setGravedad(grav);
        a.setFec_det(fec_det);
        a.setTratado(trat);
        c.eliminarAlergia(a);
        response.sendRedirect("healt.jsp");
    }
}
