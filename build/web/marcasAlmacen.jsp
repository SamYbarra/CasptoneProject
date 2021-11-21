
<%@include file="cabezaAlmacen.jsp" %>
<%@page import="Logica.Lmarcas"%>
<%@page import="Datos.Marcas"%>
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">



        <div class="container">      
            <div class="row">
                <div class="col-md-6">

                    <div class="container">
                        <form class="form-horizontal" action="marcasAlmacen.jsp">
                            <fieldset>

                                <!-- Inicio vista de columna izqueirda -->
                                <legend>Mantenimiento Marcas</legend>

                                <legend>Ingreso Marcas</legend>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="nombre">NOMBRE</label>  
                                    <div class="col-md-6">
                                        <input id="nombre" name="nombre" placeholder="ingrese nombre de marca" class="form-control input-md" required="" type="text">
                                    </div>

                                </div>

                                <!-- Button (Double) -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="guardar"></label>
                                    <div class="col-md-8">
                                        <button id="guardar" name="guardar" class="btn btn-success">GUARDAR</button>
                                    </div>
                                </div>

                                <%
                                    /*
                                    Crud para marcas
                                    */
                                    Marcas temp = new Marcas();
                                    Lmarcas con = new Lmarcas();
                                    if ((String) request.getParameter("guardar") != null) {
                                        temp = new Marcas(
                                                100,
                                                request.getParameter("nombre")
                                        );
                                        con.insertaraMarca(temp);%>
                                <script>
                                    alert('¡Se ingreso la marca!');
                                </script>
                                <%    }

                                    if ((String) request.getParameter("id") != null) {
                                        String idx = request.getParameter("id");
                                        con.eliminarMarca(idx);
                                    }

                                    if ((String) request.getParameter("id1") != null) {
                                        String idx2 = request.getParameter("id1");
                                        String idy2 = request.getParameter("id2");

                                        con.modificarMarca(idx2, idy2);
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
                                    <div class="col-sm-8"><h2>Lista <b>Marcas</b></h2></div>
                                    <div class="col-sm-4">

                                    </div>
                                </div>
                            </div>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Nombre</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%                            Marcas temp1 = new Marcas();

                                        con.consultarMarca();
                                        for (int i = 0; i < Lmarcas.Lamarcas.size(); i++) {
                                            temp1 = (Marcas) Lmarcas.Lamarcas.get(i);
                                    %>
                                    <tr>
                                        <td><%=temp1.getId_a()%></td>
                                        <td><%=temp1.getNom()%></td>
                                        <td>
                                            <a href="marcasAlmacen.jsp?id1=<%=temp1.getId_a()%>" class="edit" title="Editar" data-toggle="tooltip"  id="eliminar" name="Editar">Editar</a> 
                                            <a href="marcasAlmacen.jsp?id=<%=temp1.getId_a()%>" class="edit" title="Eliminar" data-toggle="tooltip"  id="eliminar" name="eliminar">Eliminar</a>
                                        </td>
                                    </tr>
                                    <%
                                        }%>
                                </tbody>
                            </table>
                        </div>
                    </div>  



                </div>
                <div class="col-md-6">

                    <form class="form-horizontal" action="marcasAlmacen.jsp"> 
                        <!-- fin vista de columna derecha -->
                        <br>
                        <br>
                        <legend>Modificacion Marcas</legend>


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

                        </div>

                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="confirmar"></label>
                            <div class="col-md-8">
                                <button id="confirmar" name="confirmar" class="btn btn-success">CONFIRMAR</button>
                                <br>
                                <br>
                                <a href="marcasAlmacen.jsp?idx=actualizar" class="edit" title="Actualizar" data-toggle="Actualizar"  id="Actualizar" name="Actualizar">ACTUALIZAR</a> 
                            </div>
                        </div>
                        <%    if ((String) request.getParameter("confirmar") != null) {
                                String id2 = request.getParameter("nomModif");
                                String id3 = request.getParameter("codModif");
                                con.modificarMarca(id2, id3);
                            }
                        %>

                        <!-- fin vista de columna derecha -->
                    </form> 
                </div>
            </div>
        </div>

    </div>
</div>

<%@include file="pie.jsp" %>
