<%-- 
    Document   : matricula_lista
    Created on : 13/06/2018, 10:13:08 PM
    Author     : jvegag
--%>

<%-- 
*Nombre Archivo : Matricula_lista.jsp
*Creador Archivo: 01-040479
*Fecha Creacion : 2018-06-13 22:24:36
--%>


<%@page import="java.util.List"%>
<%@page import="br.matriculabr"%>
<%@page import="be.matriculabe"%> 

<%
    List<matriculabe> lista = new matriculabr().getMatricula("");
%>

<script>
    
    function deshabilitar(id,id_cliente,id_membresia,fh_inicio,fh_fin,fh_matricula,id_usuario){
        var parametros = {   
            txtId:-id,
            txtId_cliente:id_cliente,
            txtId_membresia:id_membresia,
            txtFh_inicio:fh_inicio,
            txtFh_fin:fh_fin,
            txtFh_matricula:fh_matricula,
            txtId_usuario:id_usuario
        }; 
        $.ajax({
            url: "matricula_tabla.htm",
            type: 'POST', 
            data: parametros,
            success: function (data) { 
                console.log(data);
                location.reload();
                document.getElementById("mensaje").innerHTML = data.mensaje;
            }
        });
    }
   
    function editar(id,id_cliente,id_membresia,fh_inicio,fh_fin,fh_matricula,id_usuario){
        var parametros = {
            txtId:id,
            txtId_cliente:id_cliente,
            txtId_membresia:id_membresia,
            txtFh_inicio:fh_inicio,
            txtFh_fin:fh_fin,
            txtFh_matricula:fh_matricula,
            txtId_usuario:id_usuario
        }; 
        $.ajax({
            url: "matricula_tabla.htm",
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
            <h1 class="jumbotron-heading">Matricula</h1>
            <p class="lead text-muted">Aquí podras gestionar la matricula del cliente a una membresia..</p>
            <p>
                <a href="inicio.htm?page=matricula_lista&titulo=matricula" class="btn btn-primary">Lista de Matricula</a>
                <a href="inicio.htm?page=matricula_mantenimiento" class="btn btn-secondary">Agregar matricula nueva</a>
            </p>
        </div>
    </section>
    <div class="jumbotron text-center" style="padding: 1rem 2rem;">
        <h1>Lista de Matriculas</h1>
    </div>



    <table class="table table-bordered">
        <thead class="text-uppercase">
            <tr>
                <th>Id de Matricula</th>
                <th>Id de Cliente</th>
                <th>Id de Membresia</th>
                <th>Fecha de inicio</th>
                <th>Fecha de termino</th>
                <th>Fecha Matricula</th>
                <th>Id de Usuario</th> 
                <th>Opciones</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(matriculabe e:lista){
        %>
            <tr> 
                <td><%=e.getId()%></td>
                <td><%=e.getId_cliente()%></td>
                <td><%=e.getId_membresia()%></td>
                <td><%=e.getFh_inicio()%></td>
                <td><%=e.getFh_fin()%></td>
                <td><%=e.getFh_matricula()%></td>
                <td><%=e.getId_usuario()%></td>
                <td>
                    <a class="btn btn-primary" href="inicio.htm?page=matricula_mantenimiento&
                        id=<%=e.getId()%>&
                        id_cliente=<%=e.getId_cliente()%>&
                        id_membresia=<%=e.getId_membresia()%>&
                        fh_inicio=<%=e.getFh_inicio()%>&
                        fh_fin=<%=e.getFh_fin()%>&
                        fh_matricula=<%=e.getFh_matricula()%>&
                        id_usuario=<%=e.getId_usuario()%>&
                    ">Editar</a>                            
                        
                    <input type="button" class="btn btn-danger" value="Eliminar" onclick="if(confirm('Esta seguro de eliminar el Registro')) deshabilitar(
                        '<%=e.getId()%>',
                        '<%=e.getId_cliente()%>',
                        '<%=e.getId_membresia()%>',
                        '<%=e.getFh_inicio()%>',
                        '<%=e.getFh_fin()%>',
                        '<%=e.getFh_matricula()%>',
                        '<%=e.getId_usuario()%>')">
                </td>
            </tr>
        <%
            }
        %>
    </tbody>
</table>                    

