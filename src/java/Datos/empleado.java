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
public class empleado {
  //Definicion de variables a utilizar
  private int id_a;
  private int dni;
  private int cel;
  private String usuario;
  private String nombre;
  private String apellido;
  private String distrito;
  private String correo;
  private String direccion;
  private String cargo;
  private String area;

  //definicion de estructura
    public empleado(int id_a, String usuario, String nombre, String apellido, int dni, int cel, String distrito, String cargo, String area, String correo, String direccion) {
        this.id_a = id_a;
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.cel = cel;
        this.distrito = distrito;
        this.cargo = cargo;
        this.area = area;
        this.correo = correo;
        this.direccion = direccion;
    }

    public empleado() {
        this.id_a = 0;
        this.usuario = "";
        this.nombre = "";
        this.apellido = "";
        this.dni = 0;
        this.cel = 0;
        this.distrito = "";
        this.cargo = "";
        this.area = "";
        this.correo = "";
        this.direccion = "";
    }
//definicion de get and set
    public int getId_a() {
        return id_a;
    }

    public void setId_a(int id_a) {
        this.id_a = id_a;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getCel() {
        return cel;
    }

    public void setCel(int cel) {
        this.cel = cel;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    @Override
    public String toString() {
        return "empleado{" + "id_a=" + id_a + ", dni=" + dni + ", cel=" + cel + ", usuario=" + usuario + ", cargo=" + cargo + ", area=" + area + ", nombre=" + nombre + ", apellido=" + apellido + ", distrito=" + distrito + ", correo=" + correo + ", direccion=" + direccion + '}';
    }

}
