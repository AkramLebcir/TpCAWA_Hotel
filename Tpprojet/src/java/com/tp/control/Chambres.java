/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tp.control;

import com.tp.beans.Chambre;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mac
 */
public class Chambres {
    private Connection connexion;
    private String passBdd;
    
    public List<Chambre> recupererChambres(HttpServletRequest request) {
        List<Chambre> Chambres = new ArrayList<Chambre>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase(request);
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT id, num, etage, nomLit, prix, dispo, dureedebut, dureefin FROM Chambre;");
            // Récupération des données
            while (resultat.next()) {
                int id = resultat.getInt("id");
                String num = resultat.getString("num");
                String etage = resultat.getString("etage");
                String nomLit = resultat.getString("nomLit");
                String prix = resultat.getString("prix");
                String dispo = resultat.getString("dispo");
                String dureedebut = resultat.getString("dureedebut");
                String dureefin = resultat.getString("dureefin");
                
                Chambre Chambre = new Chambre();
                Chambre.setId(id);
                Chambre.setNum(num);
                Chambre.setEtage(etage);
                Chambre.setNomLit(nomLit);
                Chambre.setPrix(prix);
                Chambre.setDispo(dispo);
                Chambre.setDureedebut(dureedebut);
                Chambre.setDureefin(dureefin);
                
                Chambres.add(Chambre);
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
        
        return Chambres;
    }
    
    private void loadDatabase(HttpServletRequest request) {
        // Chargement du driver
        HttpSession session = request.getSession();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            passBdd = (String) session.getAttribute("pass");
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/javaee", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterChambre(Chambre Chambre,HttpServletRequest request) {
        loadDatabase(request);
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO Chambre(num, etage, nomLit, prix, dispo, dureedebut, dureefin) VALUES(?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, Chambre.getNum());
            preparedStatement.setString(2, Chambre.getEtage());
            preparedStatement.setString(3, Chambre.getNomLit());
            preparedStatement.setString(4, Chambre.getPrix());
            preparedStatement.setString(5, Chambre.getDispo());
            preparedStatement.setString(6,  Chambre.getDureedebut());
            preparedStatement.setString(7,  Chambre.getDureefin());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
