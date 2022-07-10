package servlets;

import bd.Conexion;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "updateGeneral", urlPatterns = {"/profile/updateGeneral"})
public class updateGeneral extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String user = request.getParameter("usuario");
        String email = request.getParameter("email");
        String direc = request.getParameter("direc");
        String city = request.getParameter("city");
        String estado = request.getParameter("estado");
        String cp = request.getParameter("cp");
        String fec_nac = request.getParameter("fec_nac");
        
        Conexion c = new Conexion();
        String sql = "UPDATE user SET user = '"+user+"', nombre = '"+name+"', fec_nac = '"+fec_nac+"', correo = '"+email+"' WHERE user = '"+user+"'";
        try {
            c.conectar();
            int regs = c.smt.executeUpdate(sql);
        } catch (SQLException ex) {
            System.out.println("Error al actualizar a user: "+ ex +" | SQL: "+ sql);
        }
        sql = "UPDATE general SET direccion = '"+direc+"', ciudad = '"+city+"', estado = '"+estado+"', cp = "+cp+" WHERE user = '"+user+"'";
        System.out.println("updateGeneral: SQL actualizando tabla general: " + sql);
        try {
            int regs = c.smt.executeUpdate(sql);
            c.desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al actualizar a general: "+ ex +" | SQL: "+ sql);
        }
        response.sendRedirect("general.jsp");
    }
}
