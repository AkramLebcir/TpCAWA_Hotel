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
    private String portBdd;
    
    public List<Client> recupererClients(HttpServletRequest request) {
        List<Client> Clients = new ArrayList<Client>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase(request);
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT id,NumId, nom, prenom, Address, tel, nationalite FROM Client;");

            // Récupération des données
            while (resultat.next()) {
                int id = resultat.getInt("id");
                String NumId = resultat.getString("NumId");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String Address = resultat.getString("Address");
                String tel = resultat.getString("tel");
                String nationalite = resultat.getString("nationalite");
                
                
                Client Client = new Client(id,nom,prenom,Address,tel,nationalite,null,NumId);
                Client.setId(id);
                Client.setNumId(NumId);
                Client.setNom(nom);
                Client.setPrenom(prenom);
                Client.setAddress(Address);
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
    
    public void ajouterClient(Client Client,HttpServletRequest request) {
        loadDatabase(request);
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO Client(NumId,nom, prenom, Address, tel, nationalite) VALUES(?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, Client.getNumId());
            preparedStatement.setString(2, Client.getNom());
            preparedStatement.setString(3, Client.getPrenom());
            preparedStatement.setString(4, Client.getAddress());
            preparedStatement.setString(5, Client.getTel());
            preparedStatement.setString(6, Client.getNationalite());
            
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void DeleteClient(String id,HttpServletRequest request) {
        loadDatabase(request);
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("DELETE FROM Client WHERE id=?;");
            preparedStatement.setString(1, id);
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    
   // recuperer un client  
    public Client recupererClient(String Id,HttpServletRequest request) {
       Client client = null;
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase(request);
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT id,NumId, nom, prenom, Address, tel, nationalite FROM Client WHERE id= "+Id+";");

            // Récupération des données
           resultat.next();
                int id = resultat.getInt("id");
                String NumId = resultat.getString("NumId");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String Address = resultat.getString("Address");
                String tel = resultat.getString("tel");
                String nationalite = resultat.getString("nationalite");
                
                
                client = new Client(id,nom,prenom,Address,tel,nationalite,null,NumId);
                client.setId(id);
                client.setNumId(NumId);
                client.setNom(nom);
                client.setPrenom(prenom);
                client.setAddress(Address);
                client.setTel(tel);
                client.setNationalite(nationalite);
                
                
            
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
        
        return client;
    }
    
    public void apdateClient(String id,Client Client,HttpServletRequest request) {
        loadDatabase(request);
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("UPDATE client SET NumId = ?, nom = ?, prenom = ?, Address = ?, tel = ?, nationalite =?  WHERE  id = ? ;");
            preparedStatement.setString(1, Client.getNumId());
            preparedStatement.setString(2, Client.getNom());
            preparedStatement.setString(3, Client.getPrenom());
            preparedStatement.setString(4, Client.getAddress());
            preparedStatement.setString(5, Client.getTel());
            preparedStatement.setString(6, Client.getNationalite());
            preparedStatement.setInt(7, Client.getId());
            
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
