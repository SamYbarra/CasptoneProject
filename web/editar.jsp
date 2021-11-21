
<%@page import="Logica.Ltipos"%>
<%@page import="Datos.Tipos"%>
<%@page import="Logica.Lmarcas"%>
<%@page import="Datos.Marcas"%>
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@include file="cabeza.jsp" %>
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">



        <div class="container">      
            <div class="row">
                <div class="col-md-8">

                    <div class="container">
                        <form class="form-horizontal" action="editar.jsp">
                            <fieldset>

                                <!-- Inicio vista de columna izqueirda -->
                                <legend>Editar producto</legend>

                            

                                <%
                                    Productos temp = new Productos();
                                    Lproductos con = new Lproductos();

                                    if ((String) request.getParameter("id") != null) {
                                        String idx = request.getParameter("id");
                                        con.eliminarProductos(idx);
                                    }

                                    if ((String) request.getParameter("id1") != null) {
                                        String idx2 = request.getParameter("id1");
                                        String idy2 = request.getParameter("id2");

                                        //  con.modi(idx2, idy2);
                                    }

                                %>

                            </fieldset>
                            <div class="form-group">

                                <!--    <div class="col-md-8">
                                        <button id="actualizar" name="actualizar"  onclick="location.reload()" class="btn btn-success">ACTUALIZAR</button>
                                    </div> -->
                            </div>
                        </form>
                    </div>
                    <div class="container">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-8"><h2>Lista <b>Productos</b></h2></div>
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
                                        <th>Opciones</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <%  con.mostrarProductos();
                                        for (int i = 0; i < Lproductos.Lproductos.size(); i++) {
                                            temp = (Productos) Lproductos.Lproductos.get(i);
                                    %>
                                    <tr>
                                        <td><%=temp.getId_a()%></td>
                                        <td><%=temp.getNom()%></td>
                                        <td><%=temp.getPrecio_uni()%></td>
                                        <td><%=temp.getDes_pro()%></td>
                                        <td><%=temp.getStock_pro()%></td>
                                        <td><%=temp.getNom_tipo()%></td>
                                        <td><%=temp.getNom_marca()%></td>
                                        <td>
                                            <a href="editar.jsp?id1=<%=temp.getId_a()%>" class="edit" title="Editar" data-toggle="tooltip"  id="eliminar" name="Editar">Editar</a> 

                                        </td>
                                    </tr>
                                    <%
                                        }%>
                                </tbody>
                            </table>
                        </div>
                    </div>  



                </div>
                <div class="col-md-4">

                    <form class="form-horizontal" action="editar.jsp"> 
                        <!-- fin vista de columna derecha -->
                        <br>
                        <br>
                        <legend>Modificacion Productos</legend>


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="codModif">CODIGO</label>  
                            <div class="col-md-6">


                                <%
                                    if ((String) request.getParameter("id1") != null) {
                                        String idx2 = request.getParameter("id1");%>
                                <input id="codModif" name="codModif" placeholder="ingrese el valor <%=idx2%>" class="form-control input-md" required="" type="text">
                                <%
                                    }


                                %>


                            </div>

                            <label class="col-md-4 control-label" for="nomModif">NOMBRE</label>  
                            <div class="col-md-6">
                                <input id="nomModif" name="nomModif" placeholder="" class="form-control input-md" required="" type="text">
                            </div>
                            <label class="col-md-4 control-label" for="preModif">PRECIO</label>  
                            <div class="col-md-6">
                                <input id="preModif" name="preModif" placeholder="" class="form-control input-md" required="" type="text">
                            </div>
                            <label class="col-md-4 control-label" for="desModif">DESCRIPCION</label>  
                            <div class="col-md-6">
                                <input id="desModif" name="desModif" placeholder="" class="form-control input-md" required="" type="text">
                            </div>
                            <label class="col-md-4 control-label" for="stoModif">STOCK</label>  
                            <div class="col-md-6">
                                <input id="stoModif" name="stoModif" placeholder="" class="form-control input-md" required="" type="text">
                            </div>

                            <label class="col-md-4 control-label" for="tipModif">Tipo</label>  
                            <div class="col-md-12">
                                <select id="tipModif" class="form-control col-4" name="tipModif">
                                    <option selected>Elija tipo</option>
                                    <%                                        Tipos temp1 = new Tipos();
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

                            <label class="col-md-4 control-label" for="marModif">Marca</label>  
                            <div class="col-md-12">
                                <select id="inputState" class="form-control col-4" name="marModif">
                                    <option selected>Elija marca</option>
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


                        </div>

                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="confirmar"></label>
                            <div class="col-md-8">
                                <button id="confirmar" name="confirmar" class="btn btn-success">CONFIRMAR</button>
                                <br>
                                <br>
                                <a href="editar.jsp?id100=actualizar" class="edit" title="Editar" data-toggle="tooltip"  id="eliminar" name="Editar">ACTUALIZAR</a> 
                            </div>
                        </div>

                        <%    if ((String) request.getParameter("confirmar") != null) {
                                String id2 = request.getParameter("nomModif");
                                String id3 = request.getParameter("preModif");
                                String id4 = request.getParameter("desModif");
                                String id5 = request.getParameter("stoModif");
                                String id6 = request.getParameter("tipModif");
                                String id7 = request.getParameter("marModif");
                                String id8 = request.getParameter("codModif");
                                con.modificarProductos(id2, id3, id4, id5, id6, id7, id8);%>
                    <script>
                        alert('¡Se modificó los datos del producto');
                    </script>
                    <%    }


                    %>
                    </form> 
                </div>

                <!-- fin vista de columna derecha -->

            </div>
        </div>
    </div>

</div>
</div>






<%@include file="pie.jsp" %>










