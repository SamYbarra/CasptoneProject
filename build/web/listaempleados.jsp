
<%@page import="Logica.Lempleado"%>
<%@page import="Datos.empleado"%>
<%@page import="Logica.Lproductos"%>
<%@page import="Datos.Productos"%>
<%@include file="cabeza2.jsp" %>

<div class="main-body-content w-100 ets-pt">
    <div class="table-responsive bg-light">

        <div class="container">
            <form class="form-horizontal">
                <fieldset>

    <!-- Required meta tags -->
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
                            <th>Usuario</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Dni</th>
                            <th>Cel</th>
                            <th>Distrito</th>
                            <th>Cargo</th>
                            <th>Area</th>
                            <th>Correo</th>
                            <th>Direccion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            /*
                            Listar empleado
                            */
                            
                            empleado temp = new empleado();
                            Lempleado con = new Lempleado();

                            con.mostrarempleado();

                            for (int i = 0; i < Lempleado.Lempleado.size(); i++) {
                                temp = (empleado) Lempleado.Lempleado.get(i);
                        %>
                        <tr>
                            <td><%=temp.getId_a()%></td>
                            <td><%=temp.getUsuario()%></td>
                            <td><%=temp.getNombre()%></td>
                            <td><%=temp.getApellido()%></td>
                            <td><%=temp.getDni()%></td>
                            <td><%=temp.getCel()%></td>
                            <td><%=temp.getDistrito()%></td>
                            <td><%=temp.getCargo()%></td>
                            <td><%=temp.getArea()%></td>
                            <td><%=temp.getCorreo()%></td>
                            <td><%=temp.getDireccion()%></td>
                        </tr>
                        <%
                            }%>

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

                <!-- Optional JavaScript; choose one of the two! -->

                <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
                <script
                    src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
                    crossorigin="anonymous"
                ></script>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
                    crossorigin="anonymous"
                ></script>


     </fieldset>
            </form>
        </div>

    </div>
</div>

<%@include file="pie2.jsp" %>
