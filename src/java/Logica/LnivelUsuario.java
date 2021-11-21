/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import Datos.nivelUsuarios;
import java.util.ArrayList;

/*
Validacion de usuarios
 */
public class LnivelUsuario {
    
    public static ArrayList LanivelUsuario = new ArrayList();
    conectar con = new conectar();
    
    public void validarAcceso(String u, String c) {
        try {
            con.consulta("select * from NIVELUSUARIOS WHERE nom_usuario='" + u + "' and contra_usuario='" + c + "'");
            LanivelUsuario.clear();
            while (con.getRs().next()) {
                nivelUsuarios temp = new nivelUsuarios(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        Integer.parseInt(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        con.getRs().getString(5)
                );
                LanivelUsuario.add(temp);
            }
        } catch (Exception e) {

        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
