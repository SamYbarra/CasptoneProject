<!-- Importacion de archivos de la Logia de JAVA -->
<%@page import="Logica.Lusuario"%>
<%@page import="Datos.Usuario"%>
<%@page import="Logica.Lmarcas"%>
<%@page import="Datos.Marcas"%>
<!-- Llamado de cabecera-->
<%@include file="cabeza2.jsp" %>

<!-- Inicio de cuerpo contenido-->
<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">



        <div class="container">      
            <div class="row">
                <div class="col-md-6">

                    <div class="container">
                        <form class="form-horizontal" action="agregarusuario.jsp">
                            <fieldset>

                                <!-- Inicio vista de columna izqueirda -->
                                <legend>Mantenimiento Usuario</legend>


                                <!-- Ingreso de datos -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="nombre">NOMBRE</label>  
                                    <div class="col-md-6">
                                        <input id="nombre" name="nombre" placeholder="ingrese nombre de usuario" class="form-control input-md" required="" type="text">
                                    </div>

                                    <label class="col-md-4 control-label" for="nombre">CONTRA</label>  
                                    <div class="col-md-6">
                                        <input id="nombre" name="contra" placeholder="ingrese contra de usuario" class="form-control input-md" required="" type="text">
                                    </div>

                                </div>

                                <!-- Boton Guardar -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="guardar"></label>
                                    <div class="col-md-8">
                                        <button id="guardar" name="guardar" class="btn btn-success">GUARDAR</button>
                                    </div>
                                </div>
                                <!--ingreso de empleado  -->
                                <%
                                    Usuario temp = new Usuario();
                                    Lusuario con = new Lusuario();
                                    if ((String) request.getParameter("guardar") != null) {
                                        temp = new Usuario(
                                                100,
                                                request.getParameter("nombre"),
                                                request.getParameter("contra")
                                        );
                                        con.insertarUsuario(temp);%>
                                <script>
                                    alert('¡Se ingreso la usuario!');
                                </script>
                                <%    }

                                    if ((String) request.getParameter("id") != null) {
                                        String idx = request.getParameter("id");
                                        con.eliminarUsuario(idx);
                                    }


                                %>

                            </fieldset>
                            <div class="form-group">

                            </div>
                        </form>
                    </div>
                    <div class="container">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-8"><h2>Lista <b>Usuario</b></h2></div>
                                    <div class="col-sm-4">

                                    </div>
                                </div>
                            </div>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Nombre</th>
                                        <th>Contraseña</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Agregar Usuario-->
                                    <%                            Usuario temp1 = new Usuario();

                                        con.consultarUsuario();
                                        for (int i = 0; i < Lusuario.Lausuario.size(); i++) {
                                            temp1 = (Usuario) Lusuario.Lausuario.get(i);
                                    %>
                                    <tr>
                                        <td><%=temp1.getId_a()%></td>
                                        <td><%=temp1.getNom()%></td>
                                        <td><%=temp1.getContra()%></td>
                                        <td>
                                            <a href="agregarusuario.jsp?id1=<%=temp1.getId_a()%>" class="edit" title="Editar" data-toggle="tooltip"  id="eliminar" name="Editar">Editar</a> 
                                            <a href="agregarusuario.jsp?id=<%=temp1.getId_a()%>" class="edit" title="Eliminar" data-toggle="tooltip"  id="eliminar" name="eliminar">Eliminar</a>
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

                    <form class="form-horizontal" action="agregarusuario.jsp"> 
                        <!-- fin vista de columna derecha -->
                        <br>
                        <br>
                        <legend>Modificacion Usuario</legend>


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="codModif">CODIGO</label>  
                            <div class="col-md-6">
                                <!-- Nos habilita el espacio de codigo para poder editar-->

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
                            <label class="col-md-4 control-label" for="nomModif">CONTRASEÑA</label>  
                            <div class="col-md-6">
                                <input id="conModif" name="conModif" placeholder="" class="form-control input-md" required="" type="text">
                            </div>

                        </div>

                        <!-- Boton confirmar -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="confirmar"></label>
                            <div class="col-md-8">
                                <button id="confirmar" name="confirmar" class="btn btn-success">CONFIRMAR</button>
                                <br>
                                <br>
                                <a href="agregarusuario.jsp?idx=actualizar" class="edit" title="Actualizar" data-toggle="Actualizar"  id="Actualizar" name="Actualizar">ACTUALIZAR</a> 
                            </div>
                        </div>
                        <!-- funcion de codigo que actualiza el usuario toma 3 valores el codigo,el nombre y contraseña  -->
                        <%    if ((String) request.getParameter("confirmar") != null) {
                                String id2 = request.getParameter("nomModif");
                                String id3 = request.getParameter("conModif");
                                String id4 = request.getParameter("codModif");
                                con.modificarUsuario(id2, id3, id4);
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
