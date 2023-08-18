
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        <title>Ventas</title>
    </head>
    <body>

        <div class="d-flex">
            <div class="col-sm-5">
                <div class="card">
                    <form action="Controlador" method="post">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Datos del Cliente</label>
                            </div>
                            <br/>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigocliente" class="form-control" placeholder="Código....."/>
                                    <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info"/>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrecliente" class="form-control" placeholder="Datos del Clientes....."/>
                                </div>
                            </div>
                            <br/>
                            <div class="form-group">
                                <label>Datos del Producto</label>
                            </div>
                            <br/>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" class="form-control" placeholder="Producto....."/>
                                    <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info"/>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrecliente" class="form-control" placeholder="Datos del Producto....."/>
                                </div>
                            </div>
                            <br/>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" class="form-control" placeholder="S/.0.00"/>
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" name="cantidad" class="form-control" placeholder=""/>
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="stock" class="form-control" placeholder="Stock....."/>
                                </div>
                            </div>
                            <br/>
                            <div class="form-group">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-primary"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class=" d-flex col-sm-5 ml-auto">
                            <label>Número Serie: </label>
                            <br/> 
                            <input type="text" name="NumeroSerie" class="form-control"/>
                        </div>
                        <table  class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Número</th>
                                    <th>Código</th>
                                    <th>Descripcíom</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>SubTotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <input type="submit" name="accion" value="Generar Venta" class="btn btn-success"/>
                        <input type="submit" name="accion" value="Cancelar" class="btn btn-danger"/>
                    </div>
                </div>              
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

    </body>
</html>
