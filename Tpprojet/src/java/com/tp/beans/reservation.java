/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.beans;

/**
 *
 * @author alilo
 */
public class reservation {
 private   int id;
 private String idCh;
 private String idCl;
 private String dateD;
 private String dateF;

    public reservation(int id, String idCh, String idCl, String dateD, String dateF) {
        this.id = id;
        this.idCh = idCh;
        this.idCl = idCl;
        this.dateD = dateD;
        this.dateF = dateF;
    }

    public int getId() {
        return id;
    }

    public String getIdCh() {
        return idCh;
    }

    public String getIdCl() {
        return idCl;
    }

    public String getDateD() {
        return dateD;
    }

    public String getDateF() {
        return dateF;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIdCh(String idCh) {
        this.idCh = idCh;
    }

    public void setIdCl(String idCl) {
        this.idCl = idCl;
    }

    public void setDateD(String dateD) {
        this.dateD = dateD;
    }

    public void setDateF(String dateF) {
        this.dateF = dateF;
    }
    
 
}
