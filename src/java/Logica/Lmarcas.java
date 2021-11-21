/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import java.util.ArrayList;
import Datos.Marcas;

/*
Recursos para formularios (Marcas de producto)
 */
public class Lmarcas {

    public static ArrayList Lamarcas = new ArrayList();
    conectar con = new conectar();

    
     public void consultarMarca() {
        try {
            con.consulta("select * from MARCA_PRODUCTO");
            Lamarcas.clear();
            while (con.getRs().next()) {
                Marcas temp = new Marcas(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Lamarcas.add(temp);
            }
        } catch (Exception e) {

        }
    }
     
      public int buscarMarca(String texto) {
        int R = 0;
        try {
            con.consulta("select * from MARCA_PRODUCTO WHERE nom_marcaproducto="+texto);
            Lamarcas.clear();
            while (con.getRs().next()) {
               Marcas temp = new Marcas(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Lamarcas.add(temp);
                R = 1;
            }
        } catch (Exception e) {
            R = 0;
        }
        return R;
    }
     
    public void insertaraMarca(Marcas temp) {
        try {
            con.getSt().executeUpdate("INSERT INTO MARCA_PRODUCTO (nom_marcaproducto) values('"
                    + temp.getNom()
                    + "')");
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }
    
    public void eliminarMarca (String x) {
        try {
            con.getSt().executeUpdate("delete from MARCA_PRODUCTO where id_marcaproducto="+x);
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }

    
     public void modificarMarca(String x, String y) {
         
           try {
            con.getSt().executeUpdate("UPDATE MARCA_PRODUCTO SET nom_marcaproducto = '"+x+"' WHERE id_marcaproducto="+y);
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
         
    }
    
    
    
    
}
