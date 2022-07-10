/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import modelos.Usuario;

/**
 *
 * @author be
 */
@WebServlet(name = "registroUsuario", urlPatterns = {"/registroUsuario"})
public class registroUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Entra a registro normal con: " + request.getParameter("user"));
        String user = request.getParameter("user");
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass2");
        String fec_nac = request.getParameter("fec_nac");
        //System.out.println("Fecha Nacimiento LoginFB.java: " + fec_nac);
        Conexion c = new Conexion();
        Usuario u = new Usuario();
        u.setUsuario(user);
        u.setNombre(nombre);
        u.setCorreo(email);
        u.setPassword(pass);
        u.setFec_nac(fec_nac);
        c.insertarUsuario(u);
        HttpSession session = request.getSession();        
        session.setAttribute("user", user);        
        response.sendRedirect("login.jsp");   
    }

}
