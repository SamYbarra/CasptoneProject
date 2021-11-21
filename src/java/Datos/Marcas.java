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
public class Marcas {

    //Definicion de variables a utilizar
    private int id_a;
    private String nom;

    //Definicion de estructura
    public Marcas(int id_a, String nom) {
        this.id_a = id_a;
        this.nom = nom;
    }

    public Marcas() {
        this.id_a = 0;
        this.nom = "";
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

    @Override
    public String toString() {
        return "Marcas{" + "id_a=" + id_a + ", nom=" + nom + '}';
    }

}
