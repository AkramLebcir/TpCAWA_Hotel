/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.servlets;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.tp.beans.Chambre;
import com.tp.control.Chambres;
import com.tp.control.Clients;
import com.tp.control.reservations;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alilo
 */
public class ReserviCham extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Chambres tablechambre = new Chambres();
       request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
       
       String idC=request.getParameter("idCli");
       request.setAttribute("idc", idC);
       
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/reservation.jsp");
                        rd.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{ 
           
           // int nbrLi= Integer.parseInt(request.getParameter("nbrlit").toString());
            
        List<Chambre> chambres= new ArrayList<Chambre>();
         Chambres tablechambre = new Chambres();
       request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
      chambres=tablechambre.recupererChambresLib(request);
        reservations tabR= new reservations();
        String idc= request.getParameter("chambre");
        
        for (int i = 0; i < chambres.size(); i++) {
           if(Integer.parseInt(chambres.get(i).getNomLit())>=2) {
            
               tablechambre.liberChambre( String.valueOf(chambres.get(i).getId()), request);
                    //   request.setAttribute("err", "vous aller bien resarever la chambre "+chambres.get(i).getNum());
                       //request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
                      /* RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/reservation.jsp");
                        rd.forward(request, response);*/
               
                       request.setAttribute("Reservs", tabR.RcupererReservations(request));
                       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/ListRes.jsp");
                       rd.forward(request, response);
           }
           
        }
  
        
    
       request.setAttribute("err", "les chambre complit ");
       request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/reservation.jsp");
                        rd.forward(request, response);
   

    }}
