/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.ViewModelEmpleados;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author ernes
 */
public class ServletPrincipal extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String accion = request.getParameter("accion");
       
       if(accion == null){
           request.getRequestDispatcher("/Login.jsp").forward(request, response);
       }else if(accion.equals("Login")){
           request.getRequestDispatcher("/Login.jsp").forward(request, response);
       }else if(accion.equals("RegistroEmpleados")){
           request.getRequestDispatcher("/RegistroEmpleados.jsp").forward(request, response);
           }else if(accion.equals("GestionEmpleados")){
           request.getRequestDispatcher("/GestionEmpleados.jsp").forward(request, response);
       }else if(accion.equals("RegistroProductos")){
           request.getRequestDispatcher("/RegistroProductos.jsp").forward(request, response);
       }else if(accion.equals("GestionProductos")){
           request.getRequestDispatcher("/GestionProductos.jsp").forward(request, response);
       }else if(accion.equals("Ventas")){
           request.getRequestDispatcher("/Ventas.jsp").forward(request, response);
        }else if(accion.equals("Clientes")){
           request.getRequestDispatcher("/Clientes.jsp").forward(request, response);
        }else if(accion.equals("GestionClientes")){
         request.getRequestDispatcher("/GestionClientes.jsp").forward(request, response);
       }else if(accion.equals("PedidosProductos")){
           request.getRequestDispatcher("/PedidosProductos.jsp").forward(request, response);
       }
      
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //processRequest(request, response);
        String accion = request.getParameter("accion");
        
        if(accion.equals("Login")){
        String usuario = request.getParameter("tfUsuario");
        String contrasenia = request.getParameter("tfContrasenia");
        
        try(PrintWriter print = response.getWriter()){
            if(usuario.equals("admin") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response); 
            }
            else if(usuario.equals("gerente") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelGerente.jsp").forward(request, response); 
            }
            else if(usuario.equals("supervisor") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelSupervisor.jsp").forward(request, response); 
            }
            else if(usuario.equals("rrhh") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelRRHH.jsp").forward(request, response); 
            }
            else if(usuario.equals("contador") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelContador.jsp").forward(request, response); 
            }
            else if(usuario.equals("bodeguero") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelBodeguero.jsp").forward(request, response); 
            }
            else if(usuario.equals("cajero") && contrasenia.equals("root"))
            {
            request.getRequestDispatcher("/PanelCajero.jsp").forward(request, response); 
            }
            else{
            print.println("<!DOCTYPE html>");
            print.println("<html>");
            print.println("<head>");
            print.println("<title>Login Supermercado</title>");            
            print.println("</head>");
            print.println("<body>");
            print.println("<h1>ERROR: Usuario o contraseña incorrectos</h1>");
            print.println("</body>");
            print.println("</html>");
            }
        }
        }
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
