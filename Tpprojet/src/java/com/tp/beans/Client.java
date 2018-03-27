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
public class Client {
  private   String nom;
  private   String prenom;
  private   String Adress;
  private   String tel;
  private   String nationalite;
  private   int NumpId;

    public Client() {
    }
  
    public Client(String nom, String prenom, String Adress, String tel, String nationalite, int NumpId) {
        this.nom = nom;
        this.prenom = prenom;
        this.Adress = Adress;
        this.tel = tel;
        this.nationalite = nationalite;
        this.NumpId = NumpId;
    }
 

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getAdress() {
        return Adress;
    }

   

    public String getTel() {
        return tel;
    }

    public String getNationalite() {
        return nationalite;
    }

    public int getNumpId() {
        return NumpId;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setAdress(String Adress) {
        this.Adress = Adress;
    }

   

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setNationalite(String nationalite) {
        this.nationalite = nationalite;
    }

    public void setNumpId(int NumpId) {
        this.NumpId = NumpId;
    }
}
