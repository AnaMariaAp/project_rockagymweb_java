<%-- 
    Document   : cliente_lista
    Created on : 13/06/2018, 09:56:00 PM
    Author     : jvegag
--%>
<%@page import="java.util.List"%>
<%@page import="br.clientebr"%>
<%@page import="be.clientebe"%> 

<%
    List<clientebe> lista = new clientebr().getCliente("");
%>
<script>
    
    function deshabilitar(id,nombre,apellido,telefono,direccion,dni,sexo,edad,fh_nacimiento){
        var parametros = {   
            txtId:-id,
            txtNombre:nombre,
            txtApellido:apellido,
            txtTelefono:telefono,
            txtDireccion:direccion,
            txtDni:dni,
            txtSexo:sexo,
            txtEdad:edad,
            txtFh_nacimiento:fh_nacimiento
        }; 
        $.ajax({
            url: "cliente_tabla.htm",
            type: 'POST', 
            data: parametros,
            success: function (data) { 
                console.log(data);
                location.reload();
                document.getElementById("mensaje").innerHTML = data.mensaje;
            }
        });
    }
    
    function editar(id,nombre,apellido,telefono,direccion,dni,sexo,edad,fh_nacimiento){
        var parametros = {
            txtId:id,
            txtNombre:nombre,
            txtApellido:apellido,
            txtTelefono:telefono,
            txtDireccion:direccion,
            txtDni:dni,
            txtSexo:sexo,
            txtEdad:edad,
            txtFh_nacimiento:fh_nacimiento
       }; 
        $.ajax({
            url: "cliente_tabla.htm",
            type: 'POST', 
            data: parametros,
            success: function (data) { 
                console.log(data);
                location.reload();
                document.getElementById("mensaje").innerHTML = data.mensaje; 
            }
        });
   }
</script>
    <section class="jumbotron text-center" style="background-color: transparent; margin-bottom: 0px;">
        <div class="container">
            <h1 class="jumbotron-heading">Cliente</h1>
            <p class="lead text-muted">Aquí podras gestionar los clientes como edicion de informacion y busqueda del mismo.</p>
            <p>
                <a href="inicio.htm?page=cliente_lista&titulo=cliente" class="btn btn-primary">Lista de Clientes</a>
                <a href="inicio.htm?page=cliente_mantenimiento" class="btn btn-secondary">Agregar cliente nuevo</a>
            </p>
        </div>
    </section>
    <div class="jumbotron text-center" style="padding: 1rem 2rem;">
        <h1>Lista de Clientes</h1>
    </div>


    <table class="table table-bordered">
        <thead class="text-uppercase text-danger">
            <tr>
                <th>Id de Cliente</th>
                <th>Nombres</th>
                <th>Apellido</th>
                <th>Telefono</th>
                <th>Direccion</th>
                <th>Dni</th>
                <th>Sexo</th>
                <th>Edad</th>
                <th>Fecha de Nacimiento</th> 
                <th>Opciones</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(clientebe e:lista){
        %>
            <tr> 
                <td><%=e.getId()%></td>
                <td><%=e.getNombre()%></td>
                <td><%=e.getApellido()%></td>
                <td><%=e.getTelefono()%></td>
                <td><%=e.getDireccion()%></td>
                <td><%=e.getDni()%></td>
                <td><%=e.getSexo()%></td>
                <td><%=e.getEdad()%></td>
                <td><%=e.getFh_nacimiento()%></td>
                <td>
                    <a class="btn btn-primary" href="inicio.htm?page=cliente_mantenimiento&
                        id=<%=e.getId()%>&
                        nombre=<%=e.getNombre()%>&
                        apellido=<%=e.getApellido()%>&
                        telefono=<%=e.getTelefono()%>&
                        direccion=<%=e.getDireccion()%>&
                        dni=<%=e.getDni()%>&
                        sexo=<%=e.getSexo()%>&
                        edad=<%=e.getEdad()%>&
                        fh_nacimiento=<%=e.getFh_nacimiento()%>&
                    ">Editar</a>                            
                        
                    <input type="button" class="btn btn-danger" value="Eliminar" onclick="if(confirm('Esta seguro de eliminar el Registro')) deshabilitar(
                    '<%=e.getId()%>',
                    '<%=e.getNombre()%>',
                    '<%=e.getApellido()%>',
                    '<%=e.getTelefono()%>',
                    '<%=e.getDireccion()%>',
                    '<%=e.getDni()%>',
                    '<%=e.getSexo()%>',
                    '<%=e.getEdad()%>',
                    '<%=e.getFh_nacimiento()%>')">
 
                </td>
            </tr>
        <%
            }
        %>
    </tbody>
</table>                    
