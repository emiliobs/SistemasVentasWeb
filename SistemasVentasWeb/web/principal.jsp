
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <a href=""></a>
    <a href=""></a>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <title>Bootstrap Example</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg bg-info">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="btn btn-outline-light" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline-light" style="margin-left: 10px; border: none;" href="Controlador?accion=Producto" target="myframe">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline-light" style="margin-left: 10px; border: none;" href="Controlador?accion=Empleado"   target="myframe">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline-light" style="margin-left: 10px; border: none;" href="Controlador?accion=Clientes" target="myframe">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline-light" style="margin-left: 10px; border: none;" href="Controlador?accion=NuevaVenta" target="myframe">Nueva Venta</a>
                        </li>
                    </ul>
                </div>                
                <div class="dropdown btn btn-outline-light" style="border: none;">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ${usuario.getNombre()}
                    </button>
                    <div class="dropdown-menu dropdown-menu-dark text-center">
                        <a class="dropdown-item active" href="#">
                            <img src="img/user.png" alt="60" width="60"/>
                        </a>
                        <a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
                        <a class="dropdown-item" href="#">usuario@gmail.com</a>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="post">
                            <button name="accion" value="Salir" class="dropdown-item">Salir</button>
                        </form>               
                    </div>
                </div>
        </nav>

        <div class="m-4" style="height: 550px;">
            <iframe name="myframe" style="height: 100%; width: 100%;">

            </iframe>                            
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

    </body>
</html>
