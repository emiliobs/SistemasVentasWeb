package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion
{

    private Connection connection;
    private String url = "jdbc:mysql://localhost:3306/bd_ventas";
    private String user = "root";
    private String password = "root";

    public Connection Conexion()
    {

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection(url, user, password);
            
            System.out.println("Conexion Exitosa!");
        }
        catch (SQLException e)
        {
            System.out.println("Error sql: " + e.getMessage());
        }
        catch (Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }
        return connection;
    }
    
    
    

}
