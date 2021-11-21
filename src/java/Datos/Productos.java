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
public class Productos {
    //Definicion de variables a utilizar
  private int id_a;
  private int stock_pro;
  private int cant_carrito;
  private float precio_uni;
  private String nom;
  private String des_pro;
  private String nom_tipo;
  private String nom_marca;
  
   //Definicion de structuras
    public Productos(int id_a, String nom, float precio_uni, String des_pro, int stock_pro, String nom_tipo, String nom_marca) {
        this.id_a = id_a;
        this.nom = nom;
        this.precio_uni = precio_uni;
        this.des_pro = des_pro;
        this.stock_pro = stock_pro;
        this.nom_tipo = nom_tipo;
        this.nom_marca = nom_marca;
    }

    public Productos() {
        this.id_a = 0;
        this.nom = "";
        this.precio_uni = 0;
        this.des_pro = "";
        this.stock_pro= 0;
        this.nom_tipo = "";
        this.nom_marca = "";
        this.cant_carrito = 1;
    }
//definicion de get and set
    public int getId_a() {
        return id_a;
    }

    public void setId_a(int id_a) {
        this.id_a = id_a;
    }

    public int getStock_pro() {
        return stock_pro;
    }

    public void setStock_pro(int stock_pro) {
        this.stock_pro = stock_pro;
    }

    public float getPrecio_uni() {
        return precio_uni;
    }

    public void setPrecio_uni(float precio_uni) {
        this.precio_uni = precio_uni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDes_pro() {
        return des_pro;
    }

    public void setDes_pro(String des_pro) {
        this.des_pro = des_pro;
    }

    public String getNom_tipo() {
        return nom_tipo;
    }

    public void setNom_tipo(String nom_tipo) {
        this.nom_tipo = nom_tipo;
    }

    public String getNom_marca() {
        return nom_marca;
    }

    public void setNom_marca(String nom_marca) {
        this.nom_marca = nom_marca;
    }

    public double subtotal(){
        return precio_uni * cant_carrito;
    }
    
    public void aumentarProducto(){
        if(stock_pro > cant_carrito){
            cant_carrito++;
        }
    }
    
    public void disminuirProducto(){
        if(cant_carrito >= 1){
            cant_carrito--;
        }
    }

    public int getCant_carrito() {
        return cant_carrito;
    }

    @Override
    public String toString() {
        return "Productos{" + "id_a=" + id_a + ", stock_pro=" + stock_pro + ", cant_carrito=" + cant_carrito + ", precio_uni=" + precio_uni + ", nom=" + nom + ", des_pro=" + des_pro + ", nom_tipo=" + nom_tipo + ", nom_marca=" + nom_marca + '}';
    }
    
}
