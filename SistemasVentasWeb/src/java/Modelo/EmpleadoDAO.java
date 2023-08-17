package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO
{

    Conexion conexion = new Conexion();
    Connection connection;
    PreparedStatement preparableStatement;
    ResultSet resultSet;
    int respuesta;

    public Empleado Validar(String user, String dni)
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
                empleado.setNombre(resultSet.getString("Nombres"));
            }
        }
        catch (Exception e)
        {
            System.out.println("ERROR en la clase EmpleadoDAO: " + e.getMessage());
        }

        return empleado;
    }

    //OPeraciones CRUD:
    public List Listar()
    {
        String sql = "Select * From empleado";
        List<Empleado> lista = new ArrayList<>();

        try
        {
            connection = conexion.Conexion();
            preparableStatement = connection.prepareStatement(sql);
            resultSet = preparableStatement.executeQuery();
            while (resultSet.next())
            {
                Empleado empleado = new Empleado();
                empleado.setId(resultSet.getInt(1));
                empleado.setDni(resultSet.getString(2));
                empleado.setNombre(resultSet.getString(3));
                empleado.setTelefono(resultSet.getString(4));
                empleado.setEstado(resultSet.getString(5));
                empleado.setUsuario(resultSet.getString(6));
                lista.add(empleado);
            }

        }
        catch (Exception e)
        {
            System.out.println("ERROR en Listar EmpleadoDAO: " + e.getMessage());
        }

        return lista;
    }

    public Empleado ListarPorId(int id)
    {
        Empleado empleado = new Empleado();
        String sql = "Select * From empleado Where IdEmpleado=" + id;
        try
        {
            connection = conexion.Conexion();
            preparableStatement = connection.prepareStatement(sql);
            resultSet = preparableStatement.executeQuery();
            while (resultSet.next())
            {
                empleado.setDni(resultSet.getString(2));
                empleado.setNombre(resultSet.getString(3));
                empleado.setTelefono(resultSet.getString(4));
                empleado.setEstado(resultSet.getString(5));
                empleado.setUsuario(resultSet.getString(6));

            }
        }
        catch (Exception e)
        {
            System.out.println("ERROR en ListarPorId EmpleadoDAO: " + e.getMessage());
        }
        
        return  empleado;
    }

    public int Agregar(Empleado empleado)
    {
        String sql = "Insert Into empleado (Dni, Nombre, Telefono, Estado, User) Values(?,?,?,?,?)";

        try
        {
            connection = conexion.Conexion();
            preparableStatement = connection.prepareStatement(sql);
            preparableStatement.setString(1, empleado.getDni());
            preparableStatement.setString(2, empleado.getNombre());
            preparableStatement.setString(3, empleado.getTelefono());
            preparableStatement.setString(4, empleado.getEstado());
            preparableStatement.setString(5, empleado.getUsuario());
            preparableStatement.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println("ERROR en Agregar EmpleadoDAO: " + e.getMessage());
        }

        return respuesta;
    }

    public int Actualizar(Empleado empleado)
    {
        String sql = "Update Set empleado Dni=?, Nombre=?, Telefono=?, Estado=?, User=? Where IdEmpleado=?";

        try
        {
            connection = conexion.Conexion();
            preparableStatement = connection.prepareStatement(sql);
            preparableStatement.setString(1, empleado.getDni());
            preparableStatement.setString(2, empleado.getNombre());
            preparableStatement.setString(3, empleado.getTelefono());
            preparableStatement.setString(4, empleado.getEstado());
            preparableStatement.setString(5, empleado.getUsuario());
            preparableStatement.setInt(6, empleado.getId());
            preparableStatement.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println("ERROR en Editar EmpleadoDAO: " + e.getMessage());
        }

        return respuesta;
    }

    public void Delete(int id)
    {
        String sql = "Delete from empleado Where IdEmpleado=" + id;
        try
        {
            connection = conexion.Conexion();
            preparableStatement = connection.prepareStatement(sql);
            preparableStatement.executeUpdate();
        }
        catch (Exception e)
        {
            System.out.println("ERROR en Eliminar EmpleadoDAO: " + e.getMessage());
        }
    }

}
