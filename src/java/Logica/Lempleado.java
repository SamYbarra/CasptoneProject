    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import java.util.ArrayList;
import Datos.empleado;
import java.sql.SQLException;

/*
Crud basico para los empleados de Miglaze
 */
public class Lempleado{
//Definicion del array que vamos a utilizar
    public static ArrayList Lempleado = new ArrayList();
    
    //llamando funcion conectar SQL   
    conectar con = new conectar();

    //Funcion que nos permite visualizar los empleados
     public void mostrarempleado() {
        try {
            con.consulta("select * from VistaBuscar");
            Lempleado.clear();
            while (con.getRs().next()) {
                empleado temp = new empleado(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        Integer.parseInt(con.getRs().getString(6)),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        con.getRs().getString(9),
                        con.getRs().getString(10),
                        con.getRs().getString(11)
                );
                Lempleado.add(temp);
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

     //Funcion que nos permite buscar empleados segun el nombre que se ingrese
     public void buscarEmpleado(String y) {
        try {
            con.consulta("select * from empleado where dni_empleado like '%"+y+"%';");
            Lempleado.clear();
            while (con.getRs().next()) {
                empleado temp = new empleado(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        Integer.parseInt(con.getRs().getString(6)),
                        con.getRs().getString(7),
                        con.getRs().getString(8),
                        con.getRs().getString(9),
                        con.getRs().getString(10),
                        con.getRs().getString(11)
                );
                Lempleado.add(temp);}
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
     
     //Funcion que nos ingresar datos en la tabla empleado
        public void insertaraEmpleado(empleado temp) {
        try {
                con.getSt().executeUpdate("INSERT INTO empleado (id_usuario, nom_empleado, ape_empleado, dni_empleado, cel_empleado, distrito_empleado, id_cargo, id_area, correo_empleado, direccion_empleado) values('"
                    + temp.getUsuario()+ "','"
                    + temp.getNombre()+ "','"
                    + temp.getApellido()+ "','"
                    + temp.getDni()+ "','"
                    + temp.getCel()+ "','"
                    + temp.getDistrito()+ "','"
                    + temp.getCargo()+ "','"
                    + temp.getArea()+ "','"
                    + temp.getCorreo()+ "','"
                    + temp.getDireccion()
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
        
    //Funcion que nos eliminar empleados segun su id_empleado
    public void eliminarEmpleado(String x) {
        try {
            con.getSt().executeUpdate("delete from empleado where id_empleado="+x);
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