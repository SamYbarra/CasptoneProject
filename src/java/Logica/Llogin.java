/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import Datos.login;
import java.sql.SQLException;
import java.util.ArrayList;

/*
Autenticacion de los usuarios y verificacion de roles
 */
public class Llogin {

    //Definicion del array que vamos a utilizar
    public static ArrayList Lalogin = new ArrayList();

    //llamando funcion conectar SQL   
    conectar con = new conectar();
    
//Funcion que nos permite comparar el usuario ingresado

    public int compararUsuario(String u, String c) {
        int R = 0;

        try {
            con.consulta("select * from USUARIO WHERE nom_usuario='" + u + "' and contra_usuario='" + c + "'");
            Lalogin.clear();

            while (con.getRs().next()) {
                login temp = new login(
                        con.getRs().getString(1),
                        con.getRs().getString(2)
                );
                Lalogin.add(temp);
                R = 1;
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
        return R;
    }

}
