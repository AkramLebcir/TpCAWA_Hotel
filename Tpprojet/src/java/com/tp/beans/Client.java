/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tp.beans;

import java.util.ArrayList;

/**
 *
 * @author alilo
 */
public class Client {
    private   int id;
  private   String nom;
  private   String prenom;
  private   String Address;
  private   String tel;
  private   String nationalite;
  private   ArrayList<Chambre> list;
  private   String numId;

    public Client() {
    }

    public Client(int id, String nom, String prenom, String Address, String tel, String nationalite, ArrayList<Chambre> list, String numId) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.Address = Address;
        this.tel = tel;
        this.nationalite = nationalite;
        this.list = list;
        this.numId = numId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getNationalite() {
        return nationalite;
    }

    public void setNationalite(String nationalite) {
        this.nationalite = nationalite;
    }

    public ArrayList<Chambre> getList() {
        return list;
    }

    public void setList(ArrayList<Chambre> list) {
        this.list = list;
    }

    public String getNumId() {
        return numId;
    }

    public void setNumId(String numId) {
        this.numId = numId;
    }

    
}