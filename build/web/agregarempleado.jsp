<!-- Importacion de archivos de la Logia de JAVA -->
<%@page import="Logica.Lempleado"%>
<%@page import="Datos.empleado"%>
<%@page import="Logica.Larea"%>
<%@page import="Datos.area"%>
<%@page import="Logica.Lcargo"%>
<%@page import="Datos.cargo"%>
<%@page import="Logica.Lusuario"%>
<%@page import="sun.launcher.resources.launcher"%>
<%@page import="Datos.Usuario"%>
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@page import="Datos.Tipos"%>
<%@page import="Logica.Lmarcas"%>
<%@page import="Logica.Ltipos"%>
<%@page import="Datos.Marcas"%>
<!-- Llamado de cabecera-->
<%@include file="cabeza2.jsp" %>

<!-- Inicio de cuerpo contenido-->
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">

        <div class="container">
            <form class="form-horizontal">
                <fieldset>
                    <!--ingreso de empleado  -->
                    <legend>Agregar Empleado</legend>
                    <legend>Ingreso Usuario</legend>
                    <label class="col-md-4 control-label" for="idusuario">Id usuario</label>  
                    <div class="col-md-6">
                        <select id="inputState" class="form-control col-4" name="idusuario">
                            <!--Muesta el usuario a relacionar con el empleado  -->
                            <option selected>Elija Usuario</option>
                            <%
                                Usuario temp = new Usuario();
                                Lusuario con = new Lusuario();
                                con.consultarUsuario();
                                for (int i = 0; i < Lusuario.Lausuario.size(); i++) {
                                    temp = (Usuario) Lusuario.Lausuario.get(i);
                            %>
                            <option value="<%=temp.getId_a()%>"><%=temp.getNom()%></option>
                            <%
                                }%>
                        </select>
                    </div>

                    <div class="form-group">

                        <!-- Parametros de ingreso-->

                        <label class="col-md-4 control-label" for="nomempleado">Nombre de empleado</label>  
                        <div class="col-md-6">
                            <input id="nombre" name="nomempleado" placeholder="ingrese nombre" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="apeempleado">Apellido de empleado</label>  
                        <div class="col-md-6">
                            <input id="nombre" name="apeempleado" placeholder="ingrese apellido" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="dni">Dni</label>  
                        <div class="col-md-6">
                            <input id="descripcion" name="dni" placeholder="Ingrese Dni" class="form-control input-md" required="" type="text">
                        </div>

                        <label class="col-md-4 control-label" for="Cel">Cel</label>  
                        <div class="col-md-6">
                            <input id="stock" name="Cel" placeholder="ingrese Cel" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="Distrito">Distrito</label>  
                        <div class="col-md-6">
                            <input id="nombre" name="Distrito" placeholder="ingrese Distrito" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="Cargo">Cargo</label>  
                        <div class="col-md-6">
                            <select id="inputState" class="form-control col-4" name="Cargo">
                                <option selected>Elija Cargo</option>
                                <!--Muestra la lista de los cargos disponibles -->
                                <%
                                    cargo temp2 = new cargo();
                                    Lcargo con2 = new Lcargo();
                                    con2.consultarCargo();
                                    for (int i = 0; i < Lcargo.Lacargo.size(); i++) {
                                        temp2 = (cargo) Lcargo.Lacargo.get(i);
                                %>
                                <option value="<%=temp2.getId_a()%>"><%=temp2.getNom()%></option>
                                <%
                                    }%>
                            </select>
                        </div>

                        <label class="col-md-4 control-label" for="Area">Area</label>  
                        <div class="col-md-6">
                            <select id="inputState" class="form-control col-4" name="Area">
                                <option selected>Elija Area</option>
                                <!--Muestra la lista de las areas  disponibles -->
                                <%
                                    area temp3 = new area();
                                    Larea con3 = new Larea();
                                    con3.consultarArea();
                                    for (int i = 0; i < Larea.Larea.size(); i++) {
                                        temp3 = (area) Larea.Larea.get(i);
                                %>
                                <option value="<%=temp3.getId_a()%>"><%=temp3.getNom()%></option>
                                <%
                                    }%>
                            </select>
                        </div>

                        <label class="col-md-4 control-label" for="Correo">Correo</label>  
                        <div class="col-md-6">
                            <input id="stock" name="Correo" placeholder="ingrese Correo" class="form-control input-md" required="" type="text" >
                        </div>

                        <label class="col-md-4 control-label" for="Direccion">Direccion</label>  
                        <div class="col-md-6">
                            <input id="stock" name="Direccion" placeholder="ingrese Direccion" class="form-control input-md" required="" type="text" >
                        </div>

                        <!-- Agregar Empleado-->
                        <%
                            empleado temp4 = new empleado();
                            Lempleado con4 = new Lempleado();
                            if ((String) request.getParameter("guardar") != null) {
                                temp4 = new empleado(
                                        100,
                                        request.getParameter("idusuario"),
                                        request.getParameter("nomempleado"),
                                        request.getParameter("apeempleado"),
                                        Integer.valueOf(request.getParameter("dni")),
                                        Integer.valueOf(request.getParameter("Cel")),
                                        request.getParameter("Distrito"),
                                        request.getParameter("Cargo"),
                                        request.getParameter("Area"),
                                        request.getParameter("Correo"),
                                        request.getParameter("Direccion")
                                );
                                con4.insertaraEmpleado(temp4);%>
                        <script>
                            alert('¡Se ingreso el Empleado!');
                        </script>
                        <%    }


                        %>

                        <!-- Button (Double) -->
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
<%@include file="pie2.jsp" %>