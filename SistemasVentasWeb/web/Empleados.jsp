
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        <title>Empleados</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <label for="dni" class="form-label">Dni</label>
                                <input type="text" id="dni" name="txtDni" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="nombres" class="form-label">Nombres</label>
                                <input type="text" id="nombres" name="txtNombres" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="telefono" class="form-label">Teléfono</label>
                                <input type="text"  id="telefono" name="txtTelefono" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="estado" class="form-label">Estado</label>
                                <input type="text" id="estado" name="txtEstado" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="usuario" class="form-label">Usuario</label>
                                <input type="text" id="usuario" name="txtUsuario" class="form-control" />
                            </div>
                            <br/>
                            <button type="submit" name="accion" value="Agregar" class="btn btn-info">Agregar</button>
                        </form>
                    </div>

                </div>  
            </div>
            <div class="card col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Dni</th>
                            <th>Nombre</th>
                            <th>Teléfono</th>
                            <th>Estado</th>
                            <th>User</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="empleado" items="${empleados}">
                            <tr>
                                <td>${empleado.getId()}</td>
                                <td>${empleado.getDni()}</td>
                                <td>${empleado.getNombre()}</td>
                                <td>${empleado.getTelefono()}</td>
                                <td>${empleado.getUser()}</td>
                                <td>
                                    <a>Editar</a>
                                    <a>Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>

            </div>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    </body>
</html>
