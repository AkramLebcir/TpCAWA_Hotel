/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.servlets;

import com.tp.beans.Chambre;
import com.tp.control.Chambres;
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
            throws ServletException, IOException {
         Chambres tablechambre = new Chambres();
       request.setAttribute("Clientslib", tablechambre.recupererChambresLib(request));
        String idc= request.getParameter("chambre");
        Chambres tabChambres= new Chambres();
        Chambre c= new Chambre();
        c=tabChambres.getCham(idc, request);
       
       tabChambres.updateCahmbre(new Chambre(c.getId(), c.getNum(), c.getEtage(), c.getNomLit(), c.getPrix(),"0", Integer.parseInt(request.getParameter("numId"))), request);
       
       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/reservation.jsp");
                        rd.forward(request, response);
   

    }}
