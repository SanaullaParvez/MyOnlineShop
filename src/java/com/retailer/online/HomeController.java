/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.retailer.online;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import javax.swing.JOptionPane;
//import org.apache.catalina.Session;

/**
 *
 * @author Abdulla
 */
public class HomeController extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
//        try {
//            /* TODO output your page here*/
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet NewServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
        HttpSession session = request.getSession();
        //session.removeAttribute("items");
        ListofItem listofItem1 = new ListofItem();// = (ListofItem) session.getAttribute("items");
        ListofItem listofItem = new ListofItem();
        Item item;//(Double.parseDouble(rs.getString("ID")), rs.getString("NAME"), Double.parseDouble(rs.getString("GROUPID")), rs.getString("GROUPNAME"), rs.getString("GROUPDETAILS"), Double.parseDouble(rs.getString("PPRICE")), Double.parseDouble(rs.getString("PRICE")));

        try {
            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource) envCtx.lookup("jdbc/OnlineShopDB");
            Connection conn = ds.getConnection();
            Statement s1 = conn.createStatement();
            s1.execute("SELECT distinct id,name FROM item");
            ResultSet r1 = s1.getResultSet();
            while (r1.next()) {
                item = new Item();
                item.setId(Integer.parseInt(r1.getString("ID")));
                item.setName(r1.getString("NAME"));
//                    item.setGroupId(Double.parseDouble(rs.getString("GROUPID")));
//                    item.setGroupName(rs.getString("GROUPNAME"));
//                    item.setGroupDetails(rs.getString("GROUPDETAILS"));
//                    item.setPprice(Double.parseDouble(rs.getString("PPRICE")));
//                    item.setPprice(Double.parseDouble(rs.getString("PRICE")));
                //JOptionPane.showMessageDialog(null,Integer.parseInt(r1.getString("ID")));
                listofItem1.setItems(item);

//                    out.println("<ul>");
//                    out.println("<li>" + rs.getString("ID") + "</li>");
//                    out.println("</ul>");
            }

            Statement s2 = conn.createStatement();
            s2.execute("SELECT ID,NAME,GROUPID,GROUPNAME,GROUPDETAILS,COALESCE(PPRICE,0) AS PPRICE,PRICE FROM ITEM");
            ResultSet r2 = s2.getResultSet();
            while (r2.next()) {
                item = new Item();
                item.setId(Integer.parseInt(r2.getString("ID")));
                item.setName(r2.getString("NAME"));
                item.setGroupId(Integer.parseInt(r2.getString("GROUPID")));
                item.setGroupName(r2.getString("GROUPNAME"));
                item.setGroupDetails(r2.getString("GROUPDETAILS"));                
                item.setPprice(Integer.parseInt(r2.getString("PPRICE")));
                item.setPrice(Integer.parseInt(r2.getString("PRICE")));
                listofItem.setItems(item);
            }


            conn.close();
        } catch (Exception ex) {
//                out.println("<pre>");
//                ex.printStackTrace(out);
//                out.println("</pre>");
        }
        session.setAttribute("listofItem", listofItem);
        session.setAttribute("listofItem1", listofItem1);
        response.sendRedirect("home.jsp");
        //response.sendRedirect("newjsp.jsp");
        return;
//            for (Item item1 : listofItem.getItems()) {
//                out.println("<ul>");
//                out.println("<li>" + item1.getId() + "</li>");
//                out.println("</ul>");
//            }            
//            out.println("</body>");
//            out.println("</html>");
//
//        } finally {
//            out.close();
//        }



    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
