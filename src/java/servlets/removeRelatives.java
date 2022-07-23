package servlets;

import bd.Conexion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Relatives;

@WebServlet(name = "removeRelatives", urlPatterns = {"/profile/removeRelatives"})
public class removeRelatives extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("user");        
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String paren = request.getParameter("paren");
        String direc = request.getParameter("direc");
        String num = request.getParameter("num");
        
        Conexion c = new Conexion();
        Relatives r = new Relatives();
        r.setUsuario(user);
        r.setnRelative(id);
        r.setNombre(name);
        r.setParentezco(paren);
        r.setDirec(direc);
        r.setNum(num);
        c.eliminarRelatives(r);
        response.sendRedirect("relatives.jsp");
    }
}
