/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.beans;

import java.util.Date;

/**
 *
 * @author alilo
 */
public class Chambre {
   
            private int id;
            private String num;
            private String etage;
            private String nomLit;
            private String prix;
            private String dispo;
//            private String dureedebut;
//            private String dureefin;
            private int myclient;

    public Chambre() {
    }

    public Chambre(int id, String num, String etage, String nomLit, String prix, String dispo, int myclient) {
        this.id = id;
        this.num = num;
        this.etage = etage;
        this.nomLit = nomLit;
        this.prix = prix;
        this.dispo = dispo;
        this.myclient = myclient;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getEtage() {
        return etage;
    }

    public void setEtage(String etage) {
        this.etage = etage;
    }

    public String getNomLit() {
        return nomLit;
    }

    public void setNomLit(String nomLit) {
        this.nomLit = nomLit;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public String getDispo() {
        return dispo;
    }

    public void setDispo(String dispo) {
        this.dispo = dispo;
    }

    public int getMyclient() {
        return myclient;
    }

    public void setMyclient(int myclient) {
        this.myclient = myclient;
    }

   
}
