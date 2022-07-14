package servlets;

import bd.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// modificar ruta

@WebServlet(name = "validarUsuario", urlPatterns = {"/jsp/Login/validarUsuario"})
public class validarUsuario extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            String col = request.getParameter("col");
            String value = request.getParameter("user");
            System.out.println("Col: "+col+" User: "+value);
            Conexion c = new Conexion();
            if (c.validarEnBD(col, value)) {
                out.println("<script>alert('El usuario no esta disponible'); document.getElementById('user').value = '';</script>");
            }
        }
    }
}
