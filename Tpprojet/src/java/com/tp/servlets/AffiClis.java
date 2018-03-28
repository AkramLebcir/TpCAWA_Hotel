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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tp.control.Clients;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author alilo
 */
public class AffiClis extends HttpServlet {

     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Clients tableClient = new Clients();
        request.setAttribute("Clients", tableClient.recupererClients());
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
                        rd.forward(request, response);
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        Client client = new Client(request.getParameter("nom"),
                            request.getParameter("prenom"),
                            request.getParameter("adress"),
                            request.getParameter("tel"),
                            request.getParameter("nationalite"),1);
        Clients tableClient = new Clients();
       tableClient.ajouterClient(client);
        request.setAttribute("Clients", tableClient.recupererClients());
       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
                        rd.forward(request, response);
    }
    
    
}
