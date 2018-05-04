/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.control;
import com.tp.beans.reservation;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alilo
 */
public class reservations {
     private Connection connexion;
    private String passBdd;
    private String portBdd;
     private void loadDatabase(HttpServletRequest request) {
        // Chargement du driver
        HttpSession session = request.getSession();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            passBdd = (String) session.getAttribute("pass");
            if(passBdd.equals("root")){
                portBdd = "8889";
            }else{
                portBdd = "3306";
            }
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:"+portBdd+"/javaee", "root", passBdd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
     
       public void AjouterReserva(reservation reservation,HttpServletRequest request) {
        loadDatabase(request);
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO Client(idR, numClient ,  numChambre ,  datedebut ,  datefin) VALUES(?, ?, ?, ?,?);");
            preparedStatement.setInt(1, reservation.getId());
            preparedStatement.setString(2, reservation.getIdCl());
             preparedStatement.setString(3, reservation.getIdCh());
              preparedStatement.setString(4, reservation.getDateD());
               preparedStatement.setString(5, reservation.getDateF());
         
            
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
      public List<reservation> RcupererReservations(HttpServletRequest request) {
        List<reservation> Reservations = new ArrayList<reservation>();
          Statement statement = null;
          ResultSet resultat = null;

        loadDatabase(request);
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT idR, numClient ,  numChambre ,  datedebut ,  datefin  FROM  reservation ");

            // Récupération des données
            while (resultat.next()) {
                int idR = resultat.getInt("idR");
                String numClient = resultat.getString("numClient");
                String numChambre = resultat.getString("numChambre");
                String datedebut = resultat.getString("datedebut");
                String datefin = resultat.getString("datefin");
               
                
                reservation reservation = new reservation(idR,numClient,numChambre,datedebut,datefin);
                 reservation.setId(idR);
                 reservation.setIdCl(numClient);
                 reservation.setIdCh(numChambre);
                 reservation.setDateD(datedebut);
                 reservation.setDateD(datefin);
                 
                
                Reservations.add(reservation);
            }
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
            try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {
            }
        }
        
        return Reservations;
    }
    
}
