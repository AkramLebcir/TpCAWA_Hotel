/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.servlets;

import com.tp.beans.Chambre;
import com.tp.control.Chambres;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alilo
 */
public class AffichChaLib extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Chambres tableChambre = new Chambres();
        try{
            if(!request.getParameter("deleteid").isEmpty()){
                String id = request.getParameter("deleteid");
                tableChambre.DeleteChambre(id, request);
                request.removeAttribute("deleteid");
            }
        }catch(Exception e){}
        try{
            if(!request.getParameter("updateid").isEmpty()){
                String id = request.getParameter("updateid");
                Chambre chambre= tableChambre.getCham(id, request);
                request.setAttribute("chambre", chambre);
                request.setAttribute("varcham", "Update");
                 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AjouterCham.jsp");
                        rd.forward(request, response);
                        request.removeAttribute("updateid");
            }
            
            
           
        }catch(Exception e){}
        
        
        
        
        
        
        
        
        
        
        
        request.setAttribute("Chambres", tableChambre.recupererChambres(request));
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherCha.jsp");
        rd.forward(request, response);
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

        String num = request.getParameter("num");
        String etage = request.getParameter("etage");
        String nomLit = request.getParameter("nomLit");
        String prix = request.getParameter("prix");
        //String dispo = request.getParameter("dispo");
                        
       /* if(num.equalsIgnoreCase("")||etage.equalsIgnoreCase("")||nomLit.equalsIgnoreCase("")||prix.equalsIgnoreCase(""))
        {
            request.setAttribute("ERRCh", "remplir tout les chamep");
            RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AjouterCham.jsp");
            rd.forward(request, response);      
        }
        else{*/
        
            Chambre chambre = new Chambre(Integer.parseInt("1"),num,etage,nomLit,prix,"1",-1);
            Chambres tableChambre = new Chambres();
            tableChambre.updateCahmbre(chambre,request);
            request.setAttribute("Chambres", tableChambre.recupererChambres(request));
            RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherCha.jsp");
            rd.forward(request, response);
       // }
    }
}
