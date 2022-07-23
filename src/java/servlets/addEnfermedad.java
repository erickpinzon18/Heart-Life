package servlets;

import bd.Conexion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Enfermedad;

@WebServlet(name = "addEnfermedad", urlPatterns = {"/profile/addEnfermedad"})
public class addEnfermedad extends HttpServlet {

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
        Enfermedad e = new Enfermedad();
        e.setUser(user);
        e.setnEnfer(id);
        e.setNombre(name);
        e.setGravedad(grav);
        e.setFec_det(fec_det);
        e.setTratado(trat);
        c.insertarEnfermedad(e);
        response.sendRedirect("healt.jsp");
    }
}
