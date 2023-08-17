<%-- 
    Document   : index
    Created on : Aug 16, 2023, 11:24:31 AM
    Author     : Emilio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        
        <title>Sistemas de Ventas</title>
    </head>
    <body>


        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="form-sing" action="Validar" method="post">
                        <div class="form-group  text-center">
                            <h2 style="font-weight: bold; font-family: cursive;">Login</h2>
                            <img src="img/hola.jpg"" alt="70"  width="170"/><br/>                          
                            <label style="font-size: 25px; font-family: cursive; font-weight: bold;">Bienvenido al Sistema</label>
                        </div>
                        <div class="form-group">
                            <label style="font-weight: bold";>Usuario:</label>
                            <input type="text" name="txtUser" class="form-control"/>                            
                        </div>
                        <div class="form-group">
                            <label style="font-weight: bold;">Password:</label>
                            <input type="text" name="txtPassword" class="form-control"/>    
                        </div>
                        <br/>
                        <div style="text-align: center;">
                            <input  type="submit"  name="accion" value="Ingresar" class="btn btn-primary btn-block"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

    </body>
</html>
