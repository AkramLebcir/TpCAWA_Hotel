/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
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
}
