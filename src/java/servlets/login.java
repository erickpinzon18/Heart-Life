package servlets;

import bd.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter ot = response.getWriter()) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            Conexion c = new Conexion();
            if (c.login(pass, user)) {
                HttpSession session = request.getSession();        
                session.setAttribute("user", user);        
                response.sendRedirect("index.jsp");  
            } else {
                ot.println("<script>alert('Usuario o Contraseña erronea');window.location.replace(\"login.jsp\");</script>");
            }
        }
    }

}
