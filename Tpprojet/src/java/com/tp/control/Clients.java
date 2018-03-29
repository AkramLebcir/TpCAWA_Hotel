/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.control;

import com.tp.beans.Client;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alilo
 */


public class Clients {
    private Connection connexion;
    
    public List<Client> recupererClients() {
        List<Client> Clients = new ArrayList<Client>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT NumpId, nom, prenom, Adress, tel, nationalite FROM Client;");

            // Récupération des données
            while (resultat.next()) {
                int NumpId = resultat.getInt("NumpId");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String Adress = resultat.getString("Adress");
                String tel = resultat.getString("tel");
                String nationalite = resultat.getString("nationalite");
                
                
                Client Client = new Client();
                Client.setNumpId(NumpId);
                Client.setNom(nom);
                Client.setPrenom(prenom);
                Client.setAdress(Adress);
                Client.setTel(tel);
                Client.setNationalite(nationalite);
                
                Clients.add(Client);
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
        
        return Clients;
    }
    
    private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/javaee", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterClient(Client Client) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO Client(nom, prenom, Adress, tel, nationalite) VALUES(?, ?, ?, ?, ?);");
            preparedStatement.setString(1, Client.getNom());
            preparedStatement.setString(2, Client.getPrenom());
            preparedStatement.setString(3, Client.getAdress());
            preparedStatement.setString(4, Client.getTel());
            preparedStatement.setString(5, Client.getNationalite());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
