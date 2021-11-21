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
public class login {
    //Definicion de variables a utilizar
    private String usuario;
    private String contra;

    //definicion de estructura
    public login(String usuario, String contra) {
        this.usuario = usuario;
        this.contra = contra;
    }
    
      public login() {
        this.usuario = "";
        this.contra = "";
    }
//definicion de get and set
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    @Override
    public String toString() {
        return "login{" + "usuario=" + usuario + ", contra=" + contra + '}';
    }
    
    
    
    
    
    
    
}
