<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Inventario"%>
<%@page import="dao.InventarioDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <title>Registro Curso</title>
    </head>
    <style>
        .centrar
        {
            position: absolute;
            top:20%;
            left:30%;
            width:600px;
            margin-left:-50px;
            height:300px;
            margin-top:-200px;
            border:1px solid #808080;
            padding:50px;
            background-color: #ff7800;
        }
    </style>
    <body>
        <div class="container m-4 centrar">
            <div class="alert alert-primary" role="alert">
                <h1>Inventario</h1>
            </div>

            <form action="InventarioServlet">
                <div class="form-row" style="text-align: center;">
                    <div class="form-group col-md-6">
                        <input type="text" name="nombreProducto" placeholder="nombreProducto">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="date" name="fecha" placeholder="fechaIngreso">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="text" name="cantidad" placeholder="cantidad">
                    </div>
                </div>
                <div class="form-row" style="text-align: center;">
                    <div class="form-group col-md-12">
                        <button type="submit" class="btn btn-primary">Guardar</button>
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
                            Ver
                        </button>
                    </div>
                </div>

            </form>
        </div>

        <%--AQUI VAMOS CON EL EDITAR--%>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">N°</th>
                                    <th scope="col">Nombre Producto</th>
                                    <th scope="col">Fecha Ingreso</th>
                                    <th scope="col">Cantidad</th>
                                </tr>
                            </thead>
                            <%
                                InventarioDao dao = new InventarioDao();
                                List<Inventario> list = dao.listarInventario();
                                Iterator<Inventario> iter = list.iterator();
                                Inventario cur = null;
                                while (iter.hasNext()) {
                                    cur = iter.next();
                            %>
                            <tbody>
                                <tr>
                                    <th scope="col"><%=cur.getIdInventario()%></th>
                                    <th scope="col"><%=cur.getNombreProducto()%></th>
                                    <th scope="col"><%=cur.getFechaIngreso()%></th>
                                    <th scope="col"><%=cur.getCantidad()%></th>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</html>
