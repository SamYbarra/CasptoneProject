/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Dell
 */
public class conectar {
    private Connection con;
    private Statement st;
    private ResultSet rs;
    private String url;

    /*
    Conexion con SqlServer local
    */
    public conectar() {
        url="jdbc:sqlserver://DESKTOP-01503HG:1433;databaseName=CALIDAD2"+
                ";user=sa;password=12345";
        try {
             Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection(url);
            st=con.createStatement();
            System.out.println("Exito");
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Fracaso");
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
        }       
    }
    
    public conectar(String url,String sa,String pas,String dri) {
        this.url=url;
        try {
             Class.forName(dri);
            con=DriverManager.getConnection(url,sa,pas);
            st=con.createStatement();
            System.out.println("Exito");
        } catch (SQLException e) {
            System.out.println("Excepción SQLException: ");
            System.out.println("Mensaje:....." + e.getMessage());
            System.out.println("SQLState:...." + e.getSQLState());
            System.out.println("Código proveedor:." + e.getErrorCode());
            System.out.println("-----------------------------------------------------");
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Fracaso");
            System.out.println("Se ha lanzado una excepción que no es una SQLException: ");
            ex.printStackTrace();
        }          
    }
    public void consulta(String qry){
        try {
            rs=st.executeQuery(qry);
        } catch (Exception e) {
        }
    }
    public conectar(String url) {
        this.url = url;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getSt() {
        return st;
    }

    public void setSt(Statement st) {
        this.st = st;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "conexion{" + "con=" + con + ", st=" + st + ", rs=" + rs + ", url=" + url + '}';
    }
}
