/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.servlets;

import com.tp.beans.Client;
import com.tp.control.Clients;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alilo
 */
public class Update extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
   

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
         RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/Update.jsp");
        rd.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String  NumId = request.getParameter("numId");
        String  nom = request.getParameter("nom");
        String prenom  = request.getParameter("prenom");
        String adress  = request.getParameter("address");
        String tel  = request.getParameter("tel");
        String nationalite  = request.getParameter("nationalite");
        
        
        
        Client client = new Client(Integer.parseInt("1"),nom,prenom,adress,tel,nationalite,null,NumId);
        Clients tableClient = new Clients();
        tableClient.apdateClient(request.getParameter("id"),client,request);
        request.setAttribute("Clients", tableClient.recupererClients(request));
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
        rd.forward(request, response);
        
    }

   

}
