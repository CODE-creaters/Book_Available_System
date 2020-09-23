/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DIL-SOFT 02
 */
public class Register_servlet extends HttpServlet {

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
            out.println("<title>Servlet Register_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register_servlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
       // processRequest(request, response);
       
       response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 
            //String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";// newData is the database  
            //Connection connection;  
            Connection conn=null;
            String url="jdbc:mysql://localhost:3306/";
            String dbName="online_library";
            String driver="com.mysql.jdbc.Driver";
        //String dbUserName="root";
        //String dbPassword="root";

        try{  
                String fullname = request.getParameter("fname");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
                String confirmpassword = request.getParameter("cnfrm");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                
                
          Class.forName(driver).newInstance();  
          conn = DriverManager.getConnection(url+dbName,"root", "");
          PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into 'online_library'.'register'(fname,uname,pass,conform,email,phone) values(?,?,?,?,?,?)");

          pst.setString(1,fullname);  
          pst.setString(2,username);        
          pst.setString(3,password);
          pst.setString(4,confirmpassword);
          pst.setString(5,email);
          pst.setString(6,phone);
          


          int i = pst.executeUpdate();
          conn.commit(); 
          
          if(i !=0)
                {
                    RequestDispatcher req = request.getRequestDispatcher("regJSP.jsp");
			req.include(request, response);
                }
         else {
                    RequestDispatcher req = request.getRequestDispatcher("signupThank.jsp");
			req.forward(request, response);
                }
          pst.close();
        }  
        catch (Exception e){  
          pw.println(e);  
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
