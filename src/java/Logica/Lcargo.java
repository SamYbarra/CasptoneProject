/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import java.util.ArrayList;
import Datos.Marcas;
import Datos.cargo;
import java.sql.SQLException;

/*
Recursos para formularios (Cargo de empleados)
 */
public class Lcargo {

    //Definicion del array que vamos a utilizar
    public static ArrayList Lacargo = new ArrayList();
    
    //llamando funcion conectar SQL   
    conectar con = new conectar();
    
    //Funcion que nos permite visualizar el cargo 
    public void consultarCargo() {
        try {
            con.consulta("select * from CARGO");
            Lacargo.clear();
            while (con.getRs().next()) {
                cargo temp = new cargo(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Lacargo.add(temp);
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
//Funcion que retorna un valor numerico para verificar si encontro el cargo
    public int buscarCargo(String texto) {
        int R = 0;
        try {
            con.consulta("select * from CARGO WHERE nom_cargo=" + texto);
            Lacargo.clear();
            while (con.getRs().next()) {
                Marcas temp = new Marcas(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2)
                );
                Lacargo.add(temp);
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

 //Funcion que inserta nuevos datos a la tabla CARGO
    public void insertarCargo(cargo temp) {
        try {
            con.getSt().executeUpdate("INSERT INTO CARGO (nom_cargo) values('"
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
    
//Funcion que elimina un cargo por el id_cargo, esta se obtiene al momento de genrar la vista
    public void eliminarCargo(String x) {
        try {
            con.getSt().executeUpdate("delete from CARGO where id_cargo=" + x);
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

// funcion que me permite actualizar los datos de Cargo, se ingresan dos valores el nuevo y el codigo del cargo a reemplazar
    public void modificarCargo(String x, String y) {
        try {
            con.getSt().executeUpdate("UPDATE CARGO SET nom_cargo = '" + x + "' WHERE id_cargo=" + y);
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
