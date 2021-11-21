
<%@page import="Logica.Lcargo"%>
<%@page import="Datos.cargo"%>
<%@page import="Logica.Ltipos"%>
<%@page import="Datos.Tipos"%>
<%@include file="cabeza2.jsp" %>

<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">
      


        <div class="container">      
            <div class="row">
                <div class="col-md-6">

                    <div class="container">
                        <form class="form-horizontal" action="mantenimientocargo.jsp">
                            <fieldset>

                                <!-- Inicio vista de columna izqueirda -->
                                <legend>Mantenimiento Cargo</legend>

                                <legend>Ingreso Cargo empleado</legend>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="nombre">NOMBRE</label>  
                                    <div class="col-md-6">
                                        <input id="nombre" name="nombre" placeholder="ingrese nombre de carga" class="form-control input-md" required="" type="text">
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
                                    Crud para Cargo
                                    */
                                    
                                    cargo temp = new cargo();
                                    Lcargo con = new Lcargo();
                                    if ((String) request.getParameter("guardar") != null) {
                                        temp = new cargo(
                                                100,
                                                request.getParameter("nombre")
                                        );
                                        con.insertarCargo(temp);%>
                                <script>
                                    alert('¡Se ingreso el cargo!');
                                </script>
                                <%    }

                                    if ((String) request.getParameter("id") != null) {
                                        String idx = request.getParameter("id");
                                        con.eliminarCargo(idx);
                                    }

                                    if ((String) request.getParameter("id1") != null) {
                                        String idx2 = request.getParameter("id1");
                                        String idy2 = request.getParameter("id2");

                                        con.modificarCargo(idx2, idy2);
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
                                    <div class="col-sm-8"><h2>Lista <b>Cargo de empleados</b></h2></div>
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
                                    <%                            
                                        cargo temp1 = new cargo();
                                        con.consultarCargo();
                                        for (int i = 0; i < Lcargo.Lacargo.size(); i++) {
                                            temp1 = (cargo) Lcargo.Lacargo.get(i);
                                    %>
                                    <tr>
                                        <td><%=temp1.getId_a()%></td>
                                        <td><%=temp1.getNom()%></td>
                                        <td>
                                            <a href="mantenimientocargo.jsp?id1=<%=temp1.getId_a()%>" class="edit" title="Editar" data-toggle="tooltip"  id="eliminar" name="Editar">Editar</a> 
                                            <a href="mantenimientocargo.jsp?id=<%=temp1.getId_a()%>" class="edit" title="Eliminar" data-toggle="tooltip"  id="eliminar" name="eliminar">Eliminar</a>
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

                    <form class="form-horizontal" action="mantenimientocargo.jsp"> 
                        <!-- fin vista de columna derecha -->
                        <br>
                        <br>
                        <legend>Modificacion Cargo</legend>


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
                                <a href="mantenimientocargo.jsp?idx=actualizar" class="edit" title="Actualizar" data-toggle="Actualizar"  id="Actualizar" name="Actualizar">ACTUALIZAR</a> 
                            </div>
                        </div>
                        <%    if ((String) request.getParameter("confirmar") != null) {
                                String id2 = request.getParameter("nomModif");
                                String id3 = request.getParameter("codModif");
                                con.modificarCargo(id2, id3);
                            }
                        %>

                        <!-- fin vista de columna derecha -->
                    </form> 
                </div>
            </div>
        </div>


    </div>
</div>

<%@include file="pie2.jsp" %>
