<%-- 
    Document   : producto_lista
    Created on : 13/06/2018, 09:18:02 PM
    Author     : jvegag
--%>
<%@page import="java.util.List"%>
<%@page import="br.productobr"%>
<%@page import="be.productobe"%> 
<%
    List<productobe> lista = new productobr().getProducto("");
%>
<script>  
   function deshabilitar(id,nombre,precio){
        var parametros = {   
            txtId:-id,
            txtNombre:nombre,
            txtPrecio:precio
        }; 
        $.ajax({
            url: "producto_tabla.htm",
            type: 'POST', 
            data: parametros,
            success: function (data) { 
                console.log(data);
                location.reload();
                document.getElementById("mensaje").innerHTML = data.mensaje;
            }
        }); 
    }
    function editar(id,nombre,precio){
        var parametros = {
            txtId:id,
            txtNombre:nombre,
            txtPrecio:precio
        }; 
        $.ajax({
            url: "producto_tabla.htm",
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
        <h1 class="jumbotron-heading">Productos</h1>
        <p class="lead text-muted">Aquí podras gestionar tus productos.</p>
        <p>
            <a href="inicio.htm?page=producto_lista&titulo=producto" class="btn btn-primary">Lista de Productos</a>
            <a href="inicio.htm?page=producto_mantenimiento" class="btn btn-secondary">Agregar producto nuevo</a>
        </p>
    </div>
</section>
<div class="jumbotron text-center" style="padding: 1rem 2rem;">
    <h1>Lista de Clientes</h1>
</div>



    <table class="table table-bordered">
        <thead class="text-uppercase text-danger">
            <tr>
                <th>Id de producto</th>
                <th>Nombre de Producto</th>
                <th>Precio</th> 
		<th>Opciones</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(productobe e:lista){
        %>
            <tr> 
                <td><%=e.getId()%></td>
                <td><%=e.getNombre()%></td>
                <td><%=e.getPrecio()%></td>
                <td>
                    <a class="btn btn-primary" href="inicio.htm?page=producto_mantenimiento&
                        id=<%=e.getId()%>&
                        nombre=<%=e.getNombre()%>&
                        precio=<%=e.getPrecio()%>&
                    ">Editar</a>                            
                        
                    <input type="button" class="btn btn-danger" value="Eliminar" onclick="if(confirm('Esta seguro de eliminar el Registro')) deshabilitar(
                    '<%=e.getId()%>',
                    '<%=e.getNombre()%>',
                    '<%=e.getPrecio()%>')">
 
                </td>
            </tr>
        <%
            }
        %>
    </tbody>
</table>                    
