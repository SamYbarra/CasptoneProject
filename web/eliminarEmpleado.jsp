<%@page import="Logica.Lempleado"%>
<%@page import="Datos.empleado"%>
<%@page import="com.oracle.jrockit.jfr.Producer"%>
<%@include file="cabeza2.jsp" %>
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">
        <div class="container">
            <form class="form-horizontal" action="eliminarEmpleado.jsp">
                <fieldset>
                    <legend>Eliminacion de Empleado</legend>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="dniEmpleado">Ingrese DNI a Buscar</label>  
                        <div class="col-md-6">
                            <input id="dniEmpleado" name="dniEmpleado" placeholder="Ingrese DNI" class="form-control input-md" required="" type="text" >
                        </div>



                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="buscar1"></label>
                        <div class="col-md-8">
                            <button id="buscar1" name="buscar1" class="btn btn-success">BUSCAR</button>
                        </div>
                    </div>
                    <div class="table-responsive bg-light">

                        <div class="container">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">

                                        <div class="col-sm-8"><h2>Lista De <b>Empleados</b></h2></div>
                                        <div class="col-sm-4">

                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Codigo</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>DNI</th>
                                            <th>Opciones</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        <%
                                            empleado temp5 = new empleado();
                                            Lempleado con5 = new Lempleado();
                                            String y = request.getParameter("dniEmpleado");

                                            con5.buscarEmpleado(y);

                                            System.out.println(y);
                                            for (int i = 0; i < Lempleado.Lempleado.size(); i++) {
                                                temp5 = (empleado) Lempleado.Lempleado.get(i);
                                        %>
                                        <tr>
                                            <td><%=temp5.getId_a()%></td>
                                            <td><%=temp5.getNombre()%></td>
                                            <td><%=temp5.getApellido()%></td>
                                            <td><%=temp5.getDni()%></td>
                                            <td> <a href="eliminarEmpleado.jsp?id=<%=temp5.getId_a()%>" class="edit" title="Eliminar" data-toggle="tooltip"  id="eliminar" name="eliminar">Eliminar</a></td>

                                        </tr>
                                       
                                        
                                        
                                        
                                        <%
                                            }
                                            if ((String) request.getParameter("id") != null) {
                                                String idx = request.getParameter("id");
                                                con5.eliminarEmpleado(idx);
                                        %><script>
                                            alert('¡Se elimino el Empleado!');
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

<%@include file="pie2.jsp" %>