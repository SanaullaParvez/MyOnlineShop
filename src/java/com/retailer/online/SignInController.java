/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.retailer.online;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
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
public class SignInController extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, NamingException {
        HttpSession session = request.getSession();
        User user = null;
        Object o = session.getAttribute("user");
        if (o != null && o instanceof User) {
            user = (User) o;
        } else {
            user = new User();
            session.setAttribute("user", user);
        }
        if (user.getEmail() != null) {            
            response.sendRedirect("shoppingCart.jsp");            
            return;
        }        
        String login_email = request.getParameter("signIn.email");
        String login_password = request.getParameter("signIn.password");
        if (login_email != null) {            
            Connection connection = null;
            Statement ss1 = null;
            ResultSet rr1 = null;
            try {
                Context initCtx = new InitialContext();
                Context envCtx = (Context) initCtx.lookup("java:comp/env");
                DataSource ds = (DataSource) envCtx.lookup("jdbc/OnlineShopDB");
                connection = ds.getConnection();
                ss1 = connection.createStatement();
                ss1.execute("SELECT * FROM CUSTOMER");
                rr1 = ss1.getResultSet();
                while (rr1.next()) {
                    if (rr1.getString("email").equals(login_email)
                            && rr1.getString("password").equals(login_password)) {
                        user.setName(rr1.getString("name"));
                        user.setEmail(login_email);
                        user.setPassword(login_password);
                        user.setMobNumber(Integer.parseInt(rr1.getString("mobnumber")));                        
                        // success, go to list
                        //session.setAttribute("message", "success");
                        response.sendRedirect("shoppingCart.jsp");
                        //response.sendError(404, "success, go to list");
                        return;
                    }
                }
                session.setAttribute("message", "Invalid credentials, please try again");
                response.sendRedirect("signIn.jsp");
                return;
            } finally {
                if (rr1 != null) {
                    rr1.close();
                }
                if (ss1 != null) {
                    ss1.close();
                }
                if (connection != null) {
                    connection.close();
                }
            }
        }
        // failed, show error
        session.setAttribute("message", "Sign In");
        response.sendRedirect("signIn.jsp");
        //response.sendError(403, "failed, show error");
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
        try {
            try {
                processRequest(request, response);
            } catch (NamingException ex) {
                Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            try {
                processRequest(request, response);
            } catch (NamingException ex) {
                Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
