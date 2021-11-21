
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@include file="cabeza.jsp" %>

<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">

        <div class="container">
            <form class="form-horizontal">
                <fieldset>
                    <meta charset="utf-8" />
                <meta
                    name="viewport"
                    content="width=device-width, initial-scale=1, shrink-to-fit=no"
                    />
                <script src="./js/html2pdf.bundle.min.js"></script>
                <script src="./js/scriptpdf.js"></script>
                <!-- Bootstrap CSS -->
                <link
                    rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
                    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
                    crossorigin="anonymous"
                    />
 <legend>Lista de Productos</legend>
  

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
        </div>           
  <div style="
                     display: flex;
                     justify-content: space-around;">
                    <button name="acc" type="button" class="btn btn-secondary imprimir" onclick="imprimir()">Imprimir</button>
                    <button id="btnCrearPdf" type="button" class="btn btn-secondary pdf"> Descargar PDF </button>
                </div>
 <script>
                    function imprimir() {
                        window.print("");
                    }

                </script>

     </fieldset>
            </form>
        </div>

    </div>
</div>

<%@include file="pie.jsp" %>
