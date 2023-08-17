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

                    break;
                case "Editar":

                    break;
                case "Delete":

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
