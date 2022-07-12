package servlets;

import bd.Conexion;
import java.io.IOException;
import java.sql.SQLException;
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
            System.out.println(user);
            String sql = "SELECT usr FROM userh WHERE id_fb = '"+id+"'";
            try {                    
                c.conectar();
                c.rs = c.smt.executeQuery(sql);
                System.out.println(sql);
                if (c.rs != null) {
                    System.out.println("Regresa algo dif a null");
                    while (c.rs.next()) {
                        System.out.println("Hay un registro");
                        user = c.rs.getString("usr");
                        System.out.println("user: "+user);
                        HttpSession session = request.getSession();        
                        session.setAttribute("user", user);        
                        response.sendRedirect("index.jsp");
                    }
                }
                c.desconectar();
            } catch (SQLException ex) {
                System.out.println("Error al buscar usuario: "+ ex +" | SQL: "+ sql);
            }
        } else {
            response.sendRedirect("jsp/Login/LoginFB.jsp?user_name=" + user + "&user_id="+ id);
        }        
    }
}
