
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@include file="cabezaAlmacen.jsp" %>

<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">

        <div class="container">
            <form class="form-horizontal">
                <fieldset>
 <legend>Lista de Productos</legend>
  
        <div class="form-group">
            <label class="col-md-4 control-label" for="guardar"></label>
            <div class="col-md-8">
          
                 <button id="guardar" name="buscar" class="btn btn-success">Exportar PDF</button>
            </div>
        </div>

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



     </fieldset>
            </form>
        </div>

    </div>
</div>

<%@include file="pie.jsp" %>
