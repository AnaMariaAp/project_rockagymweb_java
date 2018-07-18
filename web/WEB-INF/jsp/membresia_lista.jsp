<%-- 
    Document   : membresia_lista
    Created on : 13/06/2018, 06:13:20 PM
    Author     : jvegag
--%>
<%@page import="java.util.List"%>
<%@page import="br.membresiabr"%>
<%@page import="be.membresiabe"%> 

<%
    List<membresiabe> lista = new membresiabr().getMembresia("");
%>
<script>
    function deshabilitar(id,nombre,costo,meses){
        var parametros = {   
            txtId:-id,
            txtNombre:nombre,
            txtCosto:costo,
            txtMeses:meses
        }; 
        $.ajax({
            url: "membresia_tabla.htm",
            type: 'POST', 
            data: parametros,
            success: function (data) { 
                console.log(data);
                location.reload();
                document.getElementById("mensaje").innerHTML = data.mensaje;
            }
        });    
    }
   
    function editar(id,nombre,costo,meses){
        var parametros = {
            txtId:id,
            txtNombre:nombre,
            txtCosto:costo,
            txtMeses:meses
        }; 
        $.ajax({
            url: "membresia_tabla.htm",
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
            <h1 class="jumbotron-heading">Membresia</h1>
            <p class="lead text-muted">Aquí podras gestionar membresias y los costos de cada uno.</p>
            <p>
                <a href="inicio.htm?page=membresia_lista&titulo=membresia" class="btn btn-primary">Lista de Membresias</a>
                <a href="inicio.htm?page=membresia_mantenimiento" class="btn btn-secondary">Agregar membresia nueva</a>
            </p>
        </div>
    </section>
    <div class="jumbotron text-center" style="padding: 1rem 2rem;">
        <h1>Lista de Membresias</h1>
    </div>
  

    <table class="table table-bordered">
        <thead class="text-uppercase">
            <tr>
                <th>Id de Membresia</th>
                <th>Nombre</th>
                <th>Costo</th>
                <th>Meses</th> 
                <th>Opciones</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(membresiabe e:lista){
        %>
            <tr> 
                <td><%=e.getId()%></td>
                <td><%=e.getNombre()%></td>
                <td><%=e.getCosto()%></td>
                <td><%=e.getMeses()%></td>
                <td>
                    <a class="btn btn-primary" href="inicio.htm?page=membresia_mantenimiento&
                        id=<%=e.getId()%>&
                        nombre=<%=e.getNombre()%>&
                        costo=<%=e.getCosto()%>&
                        meses=<%=e.getMeses()%>&
                    ">Editar</a>                            
                        
                    <input type="button" class="btn btn-danger" value="Eliminar" onclick="if(confirm('Esta seguro de eliminar el Registro')) deshabilitar(
                    '<%=e.getId()%>',
                    '<%=e.getNombre()%>',
                    '<%=e.getCosto()%>',
                    '<%=e.getMeses()%>')">
 
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>                    
