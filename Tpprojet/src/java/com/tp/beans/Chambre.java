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
            private int num;
            private int etage;
            private int nomLit;
            private float prix;
            private boolean dispo;
            private String dureedebut;
            private String dureefin;

    public Chambre() {
    }

    public Chambre(int id, int num, int etage, int nomLit, float prix, boolean dispo, String dureedebut, String dureefin) {
        this.id = id;
        this.num = num;
        this.etage = etage;
        this.nomLit = nomLit;
        this.prix = prix;
        this.dispo = dispo;
        this.dureedebut = dureedebut;
        this.dureefin = dureefin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getEtage() {
        return etage;
    }

    public void setEtage(int etage) {
        this.etage = etage;
    }
    
    public int getNomLit() {
        return nomLit;
    }

    public void setNomLit(int nomLit) {
        this.nomLit = nomLit;
    }

    public float getPrix() {
        return prix;
    }

    public void setPrix(float prix) {
        this.prix = prix;
    }

    public boolean isDispo() {
        return dispo;
    }

    public void setDispo(boolean dispo) {
        this.dispo = dispo;
    }

    public String getDureedebut() {
        return dureedebut;
    }

    public void setDureedebut(String dureedebut) {
        this.dureedebut = dureedebut;
    }

    public String getDureefin() {
        return dureefin;
    }

    public void setDureefin(String dureefin) {
        this.dureefin = dureefin;
    }
    
    

}
