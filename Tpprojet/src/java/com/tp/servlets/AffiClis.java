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
import sun.rmi.transport.proxy.CGIHandler;
/**
 *
 * @author alilo
 */
public class AffiClis extends HttpServlet {
 int Idv=0;
 boolean ajo_mod=true;
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Clients tableClient = new Clients();
    
        // supprerimr client
        try{
            if(!request.getParameter("deleteid").isEmpty()){
                String id = request.getParameter("deleteid");
                tableClient.DeleteClient(id, request);
                request.removeAttribute("deleteid");
                
            }
        }catch(Exception e){}
       
         //clicer modiefie : envoyer a la page ajouter client( formulair )
        try{
            if(!request.getParameter("updateid").isEmpty()){

                 Client c=   tableClient.recupererClient(request.getParameter("updateid"), request);
                 Idv= c.getId();
                 ajo_mod=false;
                 request.setAttribute("client", c);
                 request.setAttribute("varcham", "Update");
                 String id = request.getParameter("updateid");
                 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AjoutCli.jsp");
                 rd.forward(request, response);
                 request.removeAttribute("updateid");
     
            }
        }catch(Exception e){}
        // sinon afficher la liste ds clinet 
        request.setAttribute("Clients", tableClient.recupererClients(request));
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
                        rd.forward(request, response);
                        
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        // recuper les champ de form
       
        String NumId   = request.getParameter("numId");
        String nom     = request.getParameter("nom");
        String prenom  = request.getParameter("prenom");
        String adress  = request.getParameter("address");
        String tel     = request.getParameter("tel");
        String nationalite  = request.getParameter("nationalite");

   
        Client client = new Client(Idv,nom,prenom,adress,tel,nationalite,null,NumId);
        Idv=0;
        Clients tableClient = new Clients();
        
        //  modifie ou ajoute client dans la bdd
            if(ajo_mod){
            tableClient.ajouterClient(client, request);
            }else{
            tableClient.apdateClient(client.getNumId(),client,request);
            }
            ajo_mod=true;
      
       // affichee la list des clients
        request.setAttribute("Clients", tableClient.recupererClients(request));
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
        rd.forward(request, response);
    
    }
    
    
}
