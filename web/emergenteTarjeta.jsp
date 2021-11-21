<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/estiloinicio.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Lista Productos</title>
        <link href="https://fonts.googleapis.com/css?family=Lato|Liu+Jian+Mao+Cao&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/estilos.css">

    </head>
    <body>

<br>
<br>
<br>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-8"><h2>Lista De<b>Productos</b></h2></div>
                        <div class="col-sm-4">

                        </div>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Descripcion</th>
                            <th>Stock</th>
                            <th>Tipo</th>
                            <th>Marca</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            /*
                            Listar productos
                             */

                            Productos temp1 = new Productos();
                            Lproductos con1 = new Lproductos();

                            con1.mostrarProductos();

                            for (int i = 0; i < Lproductos.Lproductos.size(); i++) {
                                temp1 = (Productos) Lproductos.Lproductos.get(i);
                        %>
                        <tr>
                            <td><%=temp1.getId_a()%></td>
                            <td><%=temp1.getNom()%></td>
                            <td><%=temp1.getPrecio_uni()%></td>
                            <td><%=temp1.getDes_pro()%></td>
                            <td><%=temp1.getStock_pro()%></td>
                            <td><%=temp1.getNom_tipo()%></td>
                            <td><%=temp1.getNom_marca()%></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>

                        <form class="form-horizontal" action="emergenteTarjeta.jsp">
            <div class="form-group">
                <label class="col-md-4 control-label" for="nombre">Ingrese nombre a Buscar</label>  
                <div class="col-md-6">
                    <input id="nomproducto" name="nomproducto" placeholder="ingrese nombre" class="form-control input-md" required="" type="text" >
                </div>

            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="buscar"></label>
                <div class="col-md-8">
                    <button id="buscar" name="buscar" class="btn btn-success">BUSCAR</button>
                </div>
            </div>          
       <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Codigo</th>
                                            <th>Nombre</th>
                                            <th>Descripcion</th>
                                          
                                        </tr>

                                    </thead>


                                    <tbody>
                                        <%
                                            Productos temp5 = new Productos();
                                            Lproductos con5 = new Lproductos();
                                            String y = request.getParameter("nomproducto");

                                            con5.buscarProductos(y);

                                            System.out.println(y);
                                            for (int i = 0; i < Lproductos.Lproductos.size(); i++) {
                                                temp5 = (Productos) Lproductos.Lproductos.get(i);
                                        %>
                                        <tr>
                                            <td><%=temp5.getId_a()%></td>
                                            <td><%=temp5.getNom()%></td>
                                            <td><%=temp5.getDes_pro()%></td>
                                       

                                        </tr>
                                        <%
                                            }
                                            if ((String) request.getParameter("id") != null) {
                                                String idx = request.getParameter("id");
                                                con5.eliminarProductos(idx);
                                        %><script>
                                            alert('¡Se elimino el producto!');
                                    </script>


                                    <%
                                        }
                                    %>

                                    </tbody>


                                </table>
</form>


        </div>

    </body>
</html>