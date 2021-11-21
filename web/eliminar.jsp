<%@page import="com.oracle.jrockit.jfr.Producer"%>
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@include file="cabeza.jsp" %>
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">
        <div class="container">
            <form class="form-horizontal" action="eliminar.jsp">
                <fieldset>
                    <legend>Eliminacion de Productos</legend>
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
                    <div class="table-responsive bg-light">

                        <div class="container">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">

                                        <div class="col-sm-8"><h2>Lista De <b>Productos</b></h2></div>
                                        <div class="col-sm-4">

                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Codigo</th>
                                            <th>Nombre</th>
                                            <th>Descripcion</th>
                                            <th>Opciones</th>
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
                                            <td> <a href="eliminar.jsp?id=<%=temp5.getId_a()%>" class="edit" title="Eliminar" data-toggle="tooltip"  id="eliminar" name="eliminar">Eliminar</a></td>

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
                            </div>
                        </div>        
                    </div>
                </fieldset>
            </form>
        </div> 
    </div> 
</div> 

<%@include file="pie.jsp" %>