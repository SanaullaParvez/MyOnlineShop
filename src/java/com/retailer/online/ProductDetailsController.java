/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.retailer.online;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Abdulla
 */
public class ProductDetailsController extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        //processRequest(request, response);

        HttpSession session = request.getSession();
        //session.removeAttribute("anItem");
        Item item = null;
        // lookup the entry by id
        ListofItem listofItem = (ListofItem) session.getAttribute("listofItem");
        int recentId = Integer.parseInt(request.getParameter("recentId"));
        for (Item itm : listofItem.getItems()) {
            if (itm.getGroupId() == recentId) {
                item = new Item();
                item.setId(itm.getId());
                item.setName(itm.getName());
                item.setGroupId(itm.getGroupId());
                item.setGroupName(itm.getGroupName());
                item.setGroupDetails(itm.getGroupDetails());
                item.setPprice(itm.getPprice());
                item.setPrice(itm.getPrice());
                session.setAttribute("item", item);
                //response.sendError(404, "Entry found, ID: " + id);
                response.sendRedirect("productDetails.jsp");
                return;
            }
        }
        if (item == null) {
            //response.sendError(404, "Entry not found, ID: " + id);
            session.setAttribute("message", "Entry not found, ID: " + recentId);
            response.sendRedirect("productList.jsp");
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
        //processRequest(request, response);
        HttpSession session = request.getSession();
        Item item = (Item) session.getAttribute("item");
//        if (item == null) {            
//            session.setAttribute("message", "No item found");
//            response.sendRedirect("ProductListController");
//            return;
//        }
        ListofItem listofRegistry = null;
        Object o = session.getAttribute("listofRegistry");
        if (o != null && o instanceof ListofItem) {
            listofRegistry = (ListofItem) o;
        } else {
            listofRegistry = new ListofItem();
            session.setAttribute("listofRegistry", listofRegistry);
        }

        listofRegistry.setItems(item);
        session.setAttribute("listofRegistry", listofRegistry);
        int totalPrice = 0;
        for (Item itm : listofRegistry.getItems()) {
            totalPrice += itm.getPrice();
        }
        session.setAttribute("totalPrice",totalPrice);
        //response.sendError(404, "Entry found, ID: " + id);
        response.sendRedirect("shoppingCart.jsp");
        return;
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
