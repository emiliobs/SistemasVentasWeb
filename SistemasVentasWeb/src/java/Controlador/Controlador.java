package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet
{

    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    //List<Empleado> lista = new ArrayList<>();
    int IdEmpleado;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        if (menu.equals("Index"))
        {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        if (menu.equals("Principal"))
        {

            request.getRequestDispatcher("principal.jsp").forward(request, response);
        }

        if (menu.equals("Empleados"))
        {
            switch (accion)
            {
                case "Listar":

                    List lista = empleadoDAO.Listar();

                    request.setAttribute("empleados", lista);

                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nombres = request.getParameter("txtNombres");
                    String telefono = request.getParameter("txtTelefono");
                    String estado = request.getParameter("txtEstado");
                    String usuario = request.getParameter("txtUsuario");
                    empleado.setDni(dni);
                    empleado.setNombre(nombres);
                    empleado.setTelefono(telefono);
                    empleado.setEstado(estado);
                    empleado.setUsuario(usuario);

                    empleadoDAO.Agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    IdEmpleado = Integer.parseInt(request.getParameter("IdUser"));
                    Empleado empl = new EmpleadoDAO().ListarPorId(IdEmpleado);
                    request.setAttribute("empl", empl);
                    
                   
                   //request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);

                    break;
                case "Actualizar":
                     String dni1 = request.getParameter("txtDni");
                    String nombres1 = request.getParameter("txtNombres");
                    String telefono1 = request.getParameter("txtTelefono");
                    String estado1 = request.getParameter("txtEstado");
                    String usuario1 = request.getParameter("txtUsuario");
                    empleado.setDni(dni1);
                    empleado.setNombre(nombres1);
                    empleado.setTelefono(telefono1);
                    empleado.setEstado(estado1);
                    empleado.setUsuario(usuario1);
                    empleado.setId(IdEmpleado);
                    
                    empleadoDAO.Actualizar(empleado);
                   request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                      IdEmpleado = Integer.parseInt(request.getParameter("IdUser"));
                      empleadoDAO.Delete(IdEmpleado);
                      // request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);

                    break;
                default:
                    throw new AssertionError();
            }

           request.getRequestDispatcher("Empleados.jsp").forward(request, response);

        }

        if (menu.equals("Clientes"))
        {
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }

        if (menu.equals("Producto"))
        {
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }

        if (menu.equals("NuevaVenta"))
        {
            request.getRequestDispatcher("RegistrarVentas.jsp").forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
