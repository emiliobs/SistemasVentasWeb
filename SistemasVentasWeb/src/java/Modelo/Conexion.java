
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;



public class Conexion
{
    Connection connection;
    String url = "jdbc:mysql//localhost:3306/bd_ventas";
    String user = "root";
    String password = "root";
    
    public  Connection Conexion()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, user,password);
            
           
        }
        catch (Exception e)
        {
            System.out.println("Error en clase Conexion: " + e.getMessage());
        }
        
         return  connection;
        
    }
}
