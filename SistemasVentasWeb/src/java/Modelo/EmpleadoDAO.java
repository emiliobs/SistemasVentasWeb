
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpleadoDAO
{
    Conexion conexion = new Conexion();
    Connection connection;
    PreparedStatement preparableStatement;
    ResultSet resultSet;
    
    public  Empleado Validar(String user, String dni)
    {
        Empleado empleado = new Empleado();
        String sql = "Select * From empleado Where User=? and Dni=?";
        
        try
        {
            connection = conexion.Conexion();
            preparableStatement = connection.prepareStatement(sql);
            preparableStatement.setString(1, user);
            preparableStatement.setString(2, dni);
            resultSet = preparableStatement.executeQuery();
            
            while (resultSet.next())
            {                
                empleado.setId(resultSet.getInt("IdEmpleado"));
                empleado.setUsuario(resultSet.getString("User"));
                empleado.setDni(resultSet.getString("Dni"));
                empleado.setNombre(resultSet.getString("Nombre"));
            }
        }
        catch (Exception e)
        {
            System.out.println("ERROR en la clase EmpleadoDAO: " + e.getMessage());
        }
        
        return empleado;
    }
            
}
