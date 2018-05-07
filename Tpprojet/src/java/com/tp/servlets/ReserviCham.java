/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.servlets;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.tp.beans.Chambre;
import com.tp.beans.reservation;
import com.tp.control.Chambres;
import com.tp.control.Clients;
import com.tp.control.reservations;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        Chambres c=new Chambres();
        reservations tabR= new reservations(); 
        // pour libire un chambre qui termener la resarevation
        List<reservation> l = tabR.RcupererReservations(request);
        for (int i = 0; i < l.size(); i++) {
            try {
                if(tabR.verifieDate(l.get(i).getDateF()))
                {
                    c.OccuperChambre(l.get(i).getIdCh(), request);
                }
            } catch (ParseException ex) {
                Logger.getLogger(ReserviCham.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
         try{
            if(!request.getParameter("idR").isEmpty()){
             //  reservations tabR= new reservations(); 
               request.setAttribute("Reservs", tabR.RcupererReservations(request));
                       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/ListRes.jsp");
                       rd.forward(request, response);
            }
        }catch(Exception e){}
        
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
         
        String idcli= request.getParameter("Idcl");
        String nbrLit=request.getParameter("IdCh");
        String dateD= request.getParameter("dateD");
        String dateF= request.getParameter("dateF");
        
        
        // tester si la date debut avant la date fin
      
       SimpleDateFormat  sdf = new SimpleDateFormat("yyyy-MM-dd"); //Pour déclarer les valeurs dans les nouveaux objets Date, employez le même format de date que pour créer des dates
        try {
            Date date1 = sdf.parse(dateD); 
            Date date2 = sdf.parse(dateF);
             if(date2.before(date1)){
            request.setAttribute("err", "les dates mal saisir");
       
       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/reservation.jsp");
                        rd.forward(request, response);
        }
        } catch (ParseException ex) {
            Logger.getLogger(ReserviCham.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        
       
        
        
    
        
        List<Chambre> chambres= new ArrayList<Chambre>();
        Chambres tablechambre = new Chambres();
        
        request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
        
        chambres=tablechambre.recupererChambresLib(request);
        reservations tabR= new reservations();
        
       // String idc= request.getParameter("chambre");
        
        for (int i = 0; i < chambres.size(); i++) {
           if(Integer.parseInt(chambres.get(i).getNomLit())>=Integer.parseInt(nbrLit)) {
            
               tablechambre.liberChambre( String.valueOf(chambres.get(i).getId()), request);
               tabR.AjouterReserva( idcli, String.valueOf(chambres.get(i).getId()), dateD, dateF, request);
               request.setAttribute("Reservs", tabR.RcupererReservations(request));
                       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/ListRes.jsp");
                       rd.forward(request, response);
                       break;
           }
           
        }
  
        
    
       request.setAttribute("err", "les chambre complit ");
       request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/reservation.jsp");
                        rd.forward(request, response);
   

    }}

