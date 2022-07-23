package servlets;

import bd.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "changePassword", urlPatterns = {"/changePassword"})
public class changePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter ot = response.getWriter()) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass2");
            String pass_old = request.getParameter("pass_old");
            Conexion c = new Conexion();
            if(c.login(pass_old, user)) {
                c.changePassword(pass, user);
                ot.println("<script>alert('La contraseña se ha actualizado correctamente');window.location.replace(\"profile/security.jsp\");</script>");
            } else {
                ot.println("<script>alert('La contraseña actual es incorrecta');window.location.replace(\"profile/security.jsp\");</script>");
            }
        }
    }
}
