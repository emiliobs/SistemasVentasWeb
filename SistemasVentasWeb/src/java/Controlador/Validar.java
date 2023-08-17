package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Emilio
 */
public class Validar extends HttpServlet
{

    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    Empleado empleado = new Empleado();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
      
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
        String accion = request.getParameter("accion");
        
        if (accion.equalsIgnoreCase("Ingresar"))
        {
            String user = request.getParameter("txtUser");
            String passwors = request.getParameter("txtPassword");              
           
            empleado = empleadoDAO.Validar(user, passwors);
            
               

            if (empleado.getUsuario() != null)
            {
                 request.setAttribute("usuario", empleado);
                request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
            }
            else
            {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }

        }
        else
        {
            response.sendRedirect("index.jsp");

        }
    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
