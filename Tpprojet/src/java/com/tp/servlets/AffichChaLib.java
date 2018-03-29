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
        request.setAttribute("Chambres", tableChambre.recupererChambres());
        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
                        rd.forward(request, response);
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        int num = Integer.parseInt(request.getParameter("num"));
        int etage = Integer.parseInt(request.getParameter("etage"));
//        int nomLit = Integer.parseInt(request.getParameter("nomLit"));
//        Float prix = Float.valueOf(request.getParameter("prix"));
//        Boolean dispo = Boolean.valueOf(request.getParameter("dispo"));
//        String dureedebut = request.getParameter("dureedebut");
//        String dureefin = request.getParameter("dureefin");
                        
        //Chambre chambre = new Chambre(id,num,etage,nomLit,prix,dispo,dureedebut,dureefin);
        Chambre chambre = new Chambre();
        chambre.setId(id);
        chambre.setNum(num);
        chambre.setEtage(etage);
        
        Chambres tableChambre = new Chambres();
       tableChambre.ajouterChambre(chambre);
        request.setAttribute("Chambres", tableChambre.recupererChambres());
       RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/AfficherClis.jsp");
                        rd.forward(request, response);
    }
}
