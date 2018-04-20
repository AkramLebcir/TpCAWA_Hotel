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
        try{
            if(!request.getParameter("deleteid").isEmpty()){
                String id = request.getParameter("deleteid");
                tableClient.DeleteClient(id, request);
                request.removeAttribute("deleteid");
            }
        }catch(Exception e){}
        try{
            if(!request.getParameter("updateid").isEmpty()){

                Client c=   tableClient.recupererClient(request.getParameter("updateid"), request);
                 request.setAttribute("client", c);
                String id = request.getParameter("updateid");
                 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/Update.jsp");
                        rd.forward(request, response);
                        request.removeAttribute("updateid");
             

              
//                tableClient.DeleteClient(id, request);
               

            }
        }catch(Exception e){}
        request.setAttribute("Clients", tableClient.recupererClients(request));
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
                        rd.forward(request, response);
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        
        String  NumId = request.getParameter("numId");
        String  nom = request.getParameter("nom");
        String prenom  = request.getParameter("prenom");
        String adress  = request.getParameter("address");
        String tel  = request.getParameter("tel");
        String nationalite  = request.getParameter("nationalite");

//       if(nom.equalsIgnoreCase("")||prenom.equalsIgnoreCase("")||adress.equalsIgnoreCase("")||tel.equalsIgnoreCase(""))
//        {
//            request.setAttribute("ERRCh", "remplir tout les chamep");
//                         RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AjoutCli.jsp");
//                        rd.forward(request, response);
//            
//        }else{
//        
        Client client = new Client(0,nom,prenom,adress,tel,nationalite,null,NumId);
        Clients tableClient = new Clients();
        tableClient.ajouterClient(client,request);
        request.setAttribute("Clients", tableClient.recupererClients(request));
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
        rd.forward(request, response);
       //}
    }
    
    
}
