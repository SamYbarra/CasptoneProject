/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import java.util.ArrayList;
import Datos.Marcas;
import Datos.Usuario;
import Datos.cargo;

/*
Crud basico para los Clientes o Usuarios
 */
public class Lusuario {

    public static ArrayList Lausuario = new ArrayList();
    conectar con = new conectar();

    public void consultarUsuario() {
        try {
            con.consulta("select * from USUARIO");
            Lausuario.clear();
            while (con.getRs().next()) {
                Usuario temp = new Usuario(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3)
                );
                Lausuario.add(temp);
            }
        } catch (Exception e) {

        }
    }

    public int buscarUsuario(String texto) {
        int R = 0;
        try {
            con.consulta("select * from USUARIO WHERE nom_usuario=" + texto);
            Lausuario.clear();
            while (con.getRs().next()) {
                Usuario temp = new Usuario(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        con.getRs().getString(3)
                );
                Lausuario.add(temp);
                R = 1;
            }
        } catch (Exception e) {
            R = 0;
        }
        return R;
    }

    public void insertarUsuario(Usuario temp) {
        try {
            con.getSt().executeUpdate("INSERT INTO USUARIO (nom_usuario, contra_usuario) values('"
                    + temp.getNom() + "','"
                    + temp.getContra()
                    + "')");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void eliminarUsuario(String x) {
        try {
            con.getSt().executeUpdate("delete from USUARIO where id_usuario=" + x);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void modificarUsuario(String x, String y, String z) {
        try {
            con.getSt().executeUpdate("UPDATE USUARIO SET nom_usuario = '" + x + "' , contra_usuario = '" + y + "'   WHERE id_usuario=" + z);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }
}
