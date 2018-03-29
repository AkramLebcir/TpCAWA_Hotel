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

/**
 *
 * @author mac
 */
public class Chambres {
    private Connection connexion;
    
    public List<Chambre> recupererChambres() {
        List<Chambre> Chambres = new ArrayList<Chambre>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT id, num, etage FROM Chambre;");
            // Récupération des données
            while (resultat.next()) {
                int id = resultat.getInt("id");
                int num = resultat.getInt("num");
                int etage = resultat.getInt("etage");
//                int nomLit = resultat.getInt("nomLit");
//                float prix = resultat.getFloat("prix");
//                boolean dispo = resultat.getBoolean("dispo");
//                String dureedebut = resultat.getString("dureedebut");
//                String dureefin = resultat.getString("dureefin");
                
                Chambre Chambre = new Chambre();
                Chambre.setId(id);
                Chambre.setNum(num);
                Chambre.setEtage(etage);
//                Chambre.setNomLit(nomLit);
//                Chambre.setPrix(prix);
//                Chambre.setDispo(dispo);
//                Chambre.setDureedebut(dureedebut);
//                Chambre.setDureefin(dureefin);
                
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
    
    private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3307/javaee", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterChambre(Chambre Chambre) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO Chambre(num, etage, nomLit, prix, dispo, dureedebut, dureefin) VALUES(?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setInt(1, Chambre.getNum());
            preparedStatement.setInt(2, Chambre.getEtage());
            preparedStatement.setInt(3, Chambre.getNomLit());
            preparedStatement.setFloat(4, Chambre.getPrix());
            preparedStatement.setBoolean(5, Chambre.isDispo());
            preparedStatement.setString(6,  Chambre.getDureedebut());
            preparedStatement.setString(7,  Chambre.getDureefin());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
