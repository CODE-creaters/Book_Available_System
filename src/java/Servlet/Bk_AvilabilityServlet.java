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
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DIL-SOFT 02
 */
public class Bk_AvilabilityServlet extends HttpServlet {

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
            out.println("<title>Servlet Bk_AvilabilityServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Bk_AvilabilityServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        System.out.println("MySQL Connect Example.");
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "online_library";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root"; 
        String password = "";

  
        Statement st;
        try {
        Class.forName(driver).newInstance();
        conn = DriverManager.getConnection(url+dbName,userName,password);
        System.out.println("Connected to the database");
        String  bkname  = request.getParameter("bkname");
        String  bkauthor  = request.getParameter("bkauthor");
        

        ArrayList al=null;
        ArrayList bk_list =new ArrayList();
        String query = "select * from book_available where bk_name='"+bkname+"'";
        System.out.println("query " + query);
        st = conn.createStatement();
        ResultSet  rs = st.executeQuery(query);


        while(rs.next()){
        al  = new ArrayList();

        al.add(rs.getString(1));
        al.add(rs.getString(2));
        
        System.out.println("al :: "+al);
        bk_list.add(al);
  }

        request.setAttribute("BKList",bk_list);

       System.out.println("BKList " + bk_list);

        // out.println("emp_list " + emp_list);

        String nextJSP = "/viewSearch.jsp";
        RequestDispatcher dispatcher = 
         getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request,response);
        conn.close();
        System.out.println("Disconnected from database");
        } catch (Exception e) {
        e.printStackTrace();
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
