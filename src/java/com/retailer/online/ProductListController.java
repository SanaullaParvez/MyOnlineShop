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

/**
 *
 * @author Abdulla
 */
public class ProductListController extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ListofItem listofItem1 = new ListofItem();
        Item item;
        try {
            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource) envCtx.lookup("jdbc/OnlineShopDB");
            Connection conn = ds.getConnection();
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
                listofItem1.setItems(item);
            }
            conn.close();
        } catch (Exception ex) {
        }       
        session.setAttribute("listofItem1", listofItem1);
        response.sendRedirect("productList.jsp");        
        return;
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
