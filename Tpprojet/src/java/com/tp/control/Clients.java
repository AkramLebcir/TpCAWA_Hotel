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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alilo
 */


public class Clients {
    private Connection connexion;
    private String passBdd;
    
    public List<Client> recupererClients(HttpServletRequest request) {
        List<Client> Clients = new ArrayList<Client>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase(request);
        
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
    
    private void loadDatabase(HttpServletRequest request) {
        // Chargement du driver
        HttpSession session = request.getSession();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            passBdd = (String) session.getAttribute("pass");
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/javaee", "root", passBdd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterClient(Client Client,HttpServletRequest request) {
        loadDatabase(request);
        
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
