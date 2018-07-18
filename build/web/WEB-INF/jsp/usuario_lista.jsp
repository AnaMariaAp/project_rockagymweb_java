<%-- 
    Document   : lista_usuarios
    Created on : 13/06/2018, 01:34:48 PM
    Author     : jvegag
--%>

<%@page import="java.util.List"%>
<%@page import="br.usuariobr"%>
<%@page import="be.usuariobe"%> 
<%
    List<usuariobe> lista = new usuariobr().getUsuario("");
%>
<script>
    function deshabilitar(id,username,password,tipo_usuario,ST){
        var parametros = {   
            txtId:-id,
            txtUsername:username,
            txtPassword:password,
            txtTipo_usuario:tipo_usuario,
            txtSt:ST
        }; 
        $.ajax({
            url: "usuario_tabla.htm",
            type: 'POST', 
            data: parametros,
            success: function (data) { 
            console.log(data);
            location.reload();
            document.getElementById("mensaje").innerHTML = data.mensaje;
            }
        });
    }
    function editar(id,username,password,tipo_usuario,ST){
        var parametros = {
            txtId:id,
            txtUsername:username,
            txtPassword:password,
            txtTipo_usuario:tipo_usuario,
            txtSt:ST
        };       
        $.ajax({
            url: "usuario_tabla.htm",
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
        <h1 class="jumbotron-heading">Clientes</h1>
        <p class="lead text-muted">Aquí podras gestionar los clientes como edicion de informacion y busqueda del mismo.</p>
        <p>
            <a href="clientes" class="btn btn-primary">Lista de Clientes</a>
            <a href="agragarclientes" class="btn btn-secondary">Agregar cliente nuevo</a>
        </p>
    </div>
</section>
<div class="jumbotron text-center" style="padding: 1rem 2rem;">
    <h1>Lista de Clientes</h1>
</div>

    <div class="form-control">
        <div class="row">  
            <div class="col-10"> 
                <h3>Mantenimiento <small>usuario</small></h3>
                <h3><small id ="mensaje"></small></h3>
            </div>
            <div class="col-2">
                <a href="inicio.htm?page=usuario_mantenimiento"  class="btn btn-outline-success">Agregar</a>
            </div>
        </div>    
    </div>

<table class="table table-bordered">
    <thead class="text-uppercase ">
        <tr>
            <th>ID DE USUARIO</th>
            <th>NOMBRE DE USUARIO</th>
            <th>CONTRASEÑA</th>
            <th>TIPO DE USUARIO</th>
            <th>ESTADO</th> 
            <th>OPCIONES</th>
        </tr>
    </thead>
    <tbody>
    <%
        for(usuariobe e:lista){
    %>
        <tr> 
            <td><%=e.getId()%></td>
            <td><%=e.getUsername()%></td>
            <td><%=e.getPassword()%></td>
            <td><%=e.getTipo_usuario()%></td>
            <td><%=e.getSt()%></td>
            <td>
                <a class="btn btn-primary" href="inicio.htm?page=usuario_mantenimiento&id=<%=e.getId()%>&username=<%=e.getUsername()%>
               &password=<%=e.getPassword()%>&tipo_usuario=<%=e.getTipo_usuario()%>&ST=<%=e.getSt()%>&">Editar</a>                            
                <input type="button" class="btn btn-danger" value="Eliminar" onclick="if(confirm('Esta seguro de eliminar el Registro')) deshabilitar(
                '<%=e.getId()%>',
                '<%=e.getUsername()%>',
                '<%=e.getPassword()%>',
                '<%=e.getTipo_usuario()%>',
                '<%=e.getSt()%>')">
            </td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>                    
