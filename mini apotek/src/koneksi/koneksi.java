/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Reinandy Fediyanto
 */
public class koneksi {
    private static  Connection cn;
    public static Connection getKoneksi(){
        if( cn == null){
            try{
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                cn = DriverManager.getConnection("jdbc:mysql://localhost/db_mini_apotek","root","");
                System.out.println("Selamat Datang");
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return cn;
    } 
}
