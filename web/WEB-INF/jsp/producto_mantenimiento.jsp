<%-- 
    Document   : producto_mantenimiento
    Created on : 13/06/2018, 09:18:13 PM
    Author     : jvegag
--%>

<% 
    String id="";
    if (request.getParameter("id" ) != null) { 
        id = request.getParameter("id").toString();
    }
    String nombre="";
    if (request.getParameter("nombre" ) != null) { 
        nombre = request.getParameter("nombre").toString();
    }
    String precio="";
    if (request.getParameter("precio" ) != null) { 
        precio = request.getParameter("precio").toString();
    }
%> 
<script>
    limite = 8;
    function guardar() {  
        if( $('#txtEstado').prop('checked') ) 
            estado=1; 

        var parametros = {
            txtId: $("#txtId").val(),
            txtNombre: $("#txtNombre").val(),
            txtPrecio: $("#txtPrecio").val()
        };  
        $.ajax({
            url: 'producto_tabla.htm',
            type: 'POST', 
            data: parametros,
            success: function (data) { 
                console.log(data);
                document.getElementById("mensaje").innerHTML = data.mensaje;
            }
        });
    }
</script>

    <div class="jumbotron text-center" style="padding: 1rem 2rem; margin-top: 25px">
        <h1>Mantenimiento de Producto</h1>
    </div>
    <div class='row'>
        <div class='col-md-2'>&nbsp;<br></div>
        <div class='col-md-10'>
            <form class='form-horizontal' action=producto.htm role='form' method='post'>  <br>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtId' class='col-sm-2 control-label'>Id</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=id%>' class='form-control' id='txtId' name ='txtId' placeholder='id'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtNombre' class='col-sm-2 control-label'>Nombre</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=nombre%>' class='form-control' id='txtNombre' name ='txtNombre' placeholder='nombre'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtPrecio' class='col-sm-2 control-label'>Precio</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=precio%>' class='form-control' id='txtPrecio' name ='txtPrecio' placeholder='precio'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <p id = 'mensaje' class="text-center text-danger"> </p>
                    <div class='col-sm-offset-2 col-sm-10'>
                        <button type='submit' onclick="guardar();return false" class='btn btn-default alert-primary'>Grabar</button>
                        <a class='btn btn-default alert-primary' href="inicio.htm?page=producto_lista&titulo=producto" >Regresar</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
  
