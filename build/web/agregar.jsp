<!-- Importacion de archivos de la Logia de JAVA -->
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@page import="Datos.Tipos"%>
<%@page import="Logica.Lmarcas"%>
<%@page import="Logica.Ltipos"%>
<%@page import="Datos.Marcas"%>
<!-- Llamado de cabecera-->
<%@include file="cabeza.jsp" %>

<!-- Inicio de cuerpo contenido-->
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">

        <div class="container">
            <form class="form-horizontal">
                <fieldset>
                    <legend>Agregar Productos</legend>

                    <!-- Parametros de ingreso-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="nombre">Nombre de producto</label>  
                        <div class="col-md-6">
                            <input id="nombre" name="nomproducto" placeholder="ingrese nombre" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="precio">Precio de producto</label>  
                        <div class="col-md-6">
                            <input id="precio" name="precioproducto" placeholder="ingrese precio" class="form-control input-md" required="" type="text">
                        </div>

                        <label class="col-md-4 control-label" for="descripcion">Descripcion de producto</label>  
                        <div class="col-md-6">
                            <input id="descripcion" name="descripcionproducto" placeholder="Ingrese descripcion" class="form-control input-md" required="" type="text">
                        </div>

                        <label class="col-md-4 control-label" for="stock">Stock de producto</label>  
                        <div class="col-md-6">
                            <input id="stock" name="stockproducto" placeholder="ingrese stock" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="nombre1">Tipo</label>  
                        <div class="col-md-6">
                            <select id="inputState" class="form-control col-4" name="tipo">
                                <option selected>Elija tipo</option>
                                <!-- Visualizacion de Tipos de producto-->
                                <%
                                    Tipos temp1 = new Tipos();
                                    Ltipos con1 = new Ltipos();
                                    con1.consultarTipos();
                                    for (int i = 0; i < Ltipos.Latipos.size(); i++) {
                                        temp1 = (Tipos) Ltipos.Latipos.get(i);
                                %>
                                <option value="<%=temp1.getId_a()%>"><%=temp1.getNom()%></option>
                                <%
                                    }%>
                            </select>
                        </div>
                    </div>

                    <label class="col-md-4 control-label" for="nombre2">Marca</label>  
                    <div class="col-md-6">
                        <select id="inputState" class="form-control col-4" name="marca">
                            <option selected>Elija marca</option>
                            <!-- Visualizacion de Marcas de producto-->
                            <%
                                Marcas temp2 = new Marcas();
                                Lmarcas con2 = new Lmarcas();
                                con2.consultarMarca();
                                for (int i = 0; i < Lmarcas.Lamarcas.size(); i++) {
                                    temp2 = (Marcas) Lmarcas.Lamarcas.get(i);
                            %>
                            <option value="<%=temp2.getId_a()%>"><%=temp2.getNom()%></option>
                            <%
                                }%>
                        </select>
                    </div>


                    <!-- Agregar Productos-->
                    <%
                        Productos temp3 = new Productos();
                        Lproductos con3 = new Lproductos();
                        if ((String) request.getParameter("guardar") != null) {
                            temp3 = new Productos(
                                    100,
                                    request.getParameter("nomproducto"),
                                    Float.valueOf(request.getParameter("precioproducto")),
                                    request.getParameter("descripcionproducto"),
                                    Integer.valueOf(request.getParameter("stockproducto")),
                                    request.getParameter("tipo"),
                                    request.getParameter("marca")
                            );
                            con3.insertaraProductos(temp3);%>
                    <script>
                        alert('¡Se ingreso el producto!');
                    </script>
                    <%    }


                    %>

                 <!-- Boton Guardar -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="guardar"></label>
                        <div class="col-md-8">
                            <button id="guardar" name="guardar" class="btn btn-success">GUARDAR</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<%@include file="pie.jsp" %>