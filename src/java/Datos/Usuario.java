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
public class Usuario {

    //Definicion de variables a utilizar
    private int id_a;
    private String nom;
    private String contra;
    
    //Definicion de la estructura

    public Usuario(int id_a, String nom, String contra) {
        this.id_a = id_a;
        this.nom = nom;
        this.contra = contra;
    }

    public Usuario() {
        this.id_a = 0;
        this.nom = "";
        this.contra = "";
    }
    //definicion de get and set
    public int getId_a() {
        return id_a;
    }

    public void setId_a(int id_a) {
        this.id_a = id_a;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_a=" + id_a + ", nom=" + nom + ", contra=" + contra + '}';
    }

}
