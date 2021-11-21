/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.conectar;
import java.util.ArrayList;
import Datos.Productos;
import java.sql.SQLException;

/*
Crud basico para los Productos
 */
public class Lproductos{

    public static ArrayList Lproductos = new ArrayList();
    conectar con = new conectar();

    
public void mostrarProductos() {
        try {
            con.consulta("select * from ProductosNuevos");
            Lproductos.clear();
            while (con.getRs().next()) {
                Productos temp = new Productos(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        Float.parseFloat(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        con.getRs().getString(6),
                        con.getRs().getString(7)
                );
                Lproductos.add(temp);
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
     
     public void buscarProductos(String y) {
        try {
            con.consulta("select * from PRODUCTO where nom_producto like '%"+y+"%';");
            Lproductos.clear();
            while (con.getRs().next()) {
                Productos temp = new Productos(
                        Integer.parseInt(con.getRs().getString(1)),
                        con.getRs().getString(2),
                        Float.parseFloat(con.getRs().getString(3)),
                        con.getRs().getString(4),
                        Integer.parseInt(con.getRs().getString(5)),
                        con.getRs().getString(6),
                        con.getRs().getString(7)
                );
                Lproductos.add(temp);}
                  } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }
     
     
        public void insertaraProductos(Productos temp) {
        try {
                con.getSt().executeUpdate("INSERT INTO PRODUCTO (nom_producto,pre_unitario,des_producto,stock_producto,id_tipoproducto,id_marcaproducto) values('"
                    + temp.getNom()+ "','"
                    + temp.getPrecio_uni() + "','"
                    + temp.getDes_pro() + "','"
                    + temp.getStock_pro() + "','"
                    + temp.getNom_tipo()+ "','"
                    + temp.getNom_marca()
                    + "')");
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }
    
    public void eliminarProductos (String x) {
        try {
            con.getSt().executeUpdate("delete from PRODUCTO where id_producto="+x);
        } catch (Exception e) {
             System.out.println(e.getMessage());
        }
    }

       public void modificarProductos(String a, String b, String c , String d , String f , String g , String h ) {
        try {
            con.getSt().executeUpdate("UPDATE PRODUCTO SET nom_producto = '" + a + "' , pre_unitario = '" + b + "' , des_producto = '" + c + "' , stock_producto = '" + d + "' , id_tipoproducto = " + f + " , id_marcaproducto = " + g + "   WHERE id_producto=" + h);
          } catch (Exception e) {
             System.out.println(e.getMessage());
        }

    }
    
    public Productos getProducto (int id){
        Productos productoaux = new Productos();
        try {
            con.consulta("select * from ProductoCarrito where id_producto = " + id + ";");
            while (con.getRs().next()) {

                productoaux.setId_a(Integer.parseInt(con.getRs().getString(1)));
                productoaux.setNom(con.getRs().getString(2));
                productoaux.setPrecio_uni(Float.parseFloat(con.getRs().getString(3)));
                productoaux.setStock_pro(Integer.parseInt(con.getRs().getString(4)))
                ;
                
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return productoaux;
    }
      
}