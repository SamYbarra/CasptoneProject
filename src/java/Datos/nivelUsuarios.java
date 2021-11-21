/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

/**
 *
 * @author Dell
 */
public class nivelUsuarios {
  //Definicion de variables a utilizar  
  private int id_e;
  private String nom_cargo;
  private int id_u;
  private String nom_usario; 
  private String con_usuario;
  
//definicion de estructura
    public nivelUsuarios(int id_e, String nom_cargo, int id_u, String nom_usario, String con_usuario) {
        this.id_e = id_e;
        this.nom_cargo = nom_cargo;
        this.id_u = id_u;
        this.nom_usario = nom_usario;
        this.con_usuario = con_usuario;
    }
    
    public nivelUsuarios() {
        this.id_e = 0;
        this.nom_cargo = "";
        this.id_u = 0;
        this.nom_usario = "";
        this.con_usuario = "";
    }
//definicion de get and set
    public int getId_e() {
        return id_e;
    }

    public void setId_e(int id_e) {
        this.id_e = id_e;
    }

    public String getNom_cargo() {
        return nom_cargo;
    }

    public void setNom_cargo(String nom_cargo) {
        this.nom_cargo = nom_cargo;
    }

    public int getId_u() {
        return id_u;
    }

    public void setId_u(int id_u) {
        this.id_u = id_u;
    }

    public String getNom_usario() {
        return nom_usario;
    }

    public void setNom_usario(String nom_usario) {
        this.nom_usario = nom_usario;
    }

    public String getCon_usuario() {
        return con_usuario;
    }

    public void setCon_usuario(String con_usuario) {
        this.con_usuario = con_usuario;
    }

    @Override
    public String toString() {
        return "nivelUsuarios{" + "id_e=" + id_e + ", nom_cargo=" + nom_cargo + ", id_u=" + id_u + ", nom_usario=" + nom_usario + ", con_usuario=" + con_usuario + '}';
    }
    
    
    
    
}
