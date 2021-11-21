/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import java.util.ArrayList;
import Datos.area;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class Larea {
    
//Definicion del array que vamos a utilizar
    public static ArrayList Larea = new ArrayList();
//llamdo funcion conectar SQL    
    conectar con = new conectar();
//Funcion que nos permite visualizar las area en la BD
    public void consultarArea() {
        try {
            con.consulta("select * from area");
            Larea.clear();
            while (con.getRs().next()) {
                area temp = new area(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Larea.add(temp);
            }
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
        }
    }
    
//Funcion que retorna un valor numerico para verificar si encontro el area 
    public int buscarArea(String texto) {
        int R = 0;
        try {
            con.consulta("select * from area WHERE nom_area=" + texto);
            Larea.clear();
            while (con.getRs().next()) {
                area temp = new area(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Larea.add(temp);
                R = 1;
            }
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
            R=0;
        } catch (Exception ex) {
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
            R=0;
        }
        return R;
    }

//Funcion que inserta nuevos datos a la tabla AREA     
    public void insertaraArea(area temp) {
        try {
            con.getSt().executeUpdate("INSERT INTO area (nom_area) values('"
                    + temp.getNom()
                    + "')");
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
        }
    }
//Funcion que elimina un area por el id_area, esta se obtiene al momento de genrar la vista
    public void eliminarArea(String x) {
        try {
            con.getSt().executeUpdate("delete from area where id_area=" + x);
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
        }
    }
// funcion que me permite actualizar los datos de area, se ingresan dos valores el nuevo y el codigo del area a reemplazar
    public void modificarArea(String x, String y) {
        try {
            con.getSt().executeUpdate("UPDATE area SET nom_area = '" + x + "' WHERE id_area=" + y);
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
        }
    }
}
