/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import Datos.Tipos;
import java.util.ArrayList;

/*
Recursos para formularios (Tipos de producto o Categoria)
 */
public class Ltipos {
        public static ArrayList Latipos = new ArrayList();
    conectar con = new conectar();

    
     public void consultarTipos() {
        try {
            con.consulta("select * from TIPO_PRODUCTO");
            Latipos.clear();
            while (con.getRs().next()) {
                Tipos temp = new Tipos(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Latipos.add(temp);
            }
        } catch (Exception e) {
        }
    }
     
    public void insertaraTipos(Tipos temp) {
        try {
            con.getSt().executeUpdate("INSERT INTO TIPO_PRODUCTO (nom_tipoproducto) values('"
                    + temp.getNom()
                    + "')");
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }
    
    public void eliminarTipos (String x) {
        try {
            con.getSt().executeUpdate("delete from TIPO_PRODUCTO where id_tipoproducto="+x);
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }
    
    public void modificarTipos(String x, String y) {
         
           try {
            con.getSt().executeUpdate("UPDATE TIPO_PRODUCTO SET nom_tipoproducto = '"+x+"' WHERE id_tipoproducto="+y);
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
         
    }

}
