package servlets;

import bd.Conexion;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "updateEmergency", urlPatterns = {"/profile/updateEmergency"})
public class updateEmergency extends HttpServlet {

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
        String sql = "UPDATE emergencyContacts SET nombre = '"+name+"', email = '"+email+"', direc = '"+direc+"', numero = '"+num+"' WHERE usr = '"+user+"' and nContacto = "+id;
        try {
            c.conectar();
            int regs = c.smt.executeUpdate(sql);
        } catch (SQLException ex) {
            System.out.println("Error al actualizar a emergencyContacts: "+ ex +" | SQL: "+ sql);
        }
         c.desconectar();
        response.sendRedirect("emergencyContacts.jsp");
    }

}
