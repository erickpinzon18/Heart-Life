package servlets;

import bd.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.EmergencyContacts;

@WebServlet(name = "removeEmergency", urlPatterns = {"/profile/removeEmergency"})
public class removeEmergency extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");        
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String direc = request.getParameter("direc");
        String num = request.getParameter("num");
        
        Conexion c = new Conexion();
        EmergencyContacts e = new EmergencyContacts();
        e.setUser(user);
        e.setnContacto(id);
        e.setNombre(name);
        e.setEmail(email);
        e.setDirec(direc);
        e.setNumero(num);
        c.eliminarEmergency(e);
        response.sendRedirect("emergencyContacts.jsp");
    }
}
