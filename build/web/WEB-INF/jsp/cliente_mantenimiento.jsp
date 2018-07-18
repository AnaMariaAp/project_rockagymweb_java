<%-- 
    Document   : cliente_mantenimiento
    Created on : 13/06/2018, 10:02:57 PM
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
    String apellido="";
    if (request.getParameter("apellido" ) != null) { 
        apellido = request.getParameter("apellido").toString();
    }
    String telefono="";
    if (request.getParameter("telefono" ) != null) { 
        telefono = request.getParameter("telefono").toString();
    }
    String direccion="";
    if (request.getParameter("direccion" ) != null) { 
        direccion = request.getParameter("direccion").toString();
    }
    String dni="";
    if (request.getParameter("dni" ) != null) { 
        dni = request.getParameter("dni").toString();
    }
    String sexo="";
    if (request.getParameter("sexo" ) != null) { 
        sexo = request.getParameter("sexo").toString();
    }
    String edad="";
    if (request.getParameter("edad" ) != null) { 
        edad = request.getParameter("edad").toString();
    }
    String fh_nacimiento="";
    if (request.getParameter("fh_nacimiento" ) != null) { 
        fh_nacimiento = request.getParameter("fh_nacimiento").toString();
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
            txtApellido: $("#txtApellido").val(),
            txtTelefono: $("#txtTelefono").val(),
            txtDireccion: $("#txtDireccion").val(),
            txtDni: $("#txtDni").val(),
            txtSexo: $("#txtSexo").val(),
            txtEdad: $("#txtEdad").val(),
            txtFh_nacimiento: $("#txtFh_nacimiento").val()
        };  
        $.ajax({
            url: 'cliente_tabla.htm',
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
            <h1>Mantenimiento de Cliente</h1>
        </div>
        <div class='row'>
            <div class='col-md-2'>&nbsp;<br></div>
            <div class='col-md-10'>
                <form class='form-horizontal' action=cliente.htm role='form' method='post'>  <br>
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
                                <label for='txtApellido' class='col-sm-2 control-label'>Apellido</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=apellido%>' class='form-control' id='txtApellido'  name ='txtApellido' placeholder='apellido'>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='form-group'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <label for='txtTelefono' class='col-sm-2 control-label'>Telefono</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=telefono%>' class='form-control' id='txtTelefono' name ='txtTelefono' placeholder='telefono'>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='form-group'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <label for='txtDireccion' class='col-sm-2 control-label'>Direccion</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=direccion%>' class='form-control' id='txtDireccion' name ='txtDireccion' placeholder='direccion'>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='form-group'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <label for='txtDni' class='col-sm-2 control-label'>Dni</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=dni%>' class='form-control' id='txtDni' name ='txtDni' placeholder='dni'>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='form-group'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <label for='txtSexo' class='col-sm-2 control-label'>Sexo</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=sexo%>' class='form-control' id='txtSexo' name ='txtSexo' placeholder='sexo'>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='form-group'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <label for='txtEdad' class='col-sm-2 control-label'>Edad</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=edad%>' class='form-control' id='txtEdad' name ='txtEdad' placeholder='edad'>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='form-group'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <label for='txtFh_nacimiento' class='col-sm-2 control-label'>Fh_nacimiento</label>
                                <div class='col-sm-10'>
                                    <input type='text' value = '<%=fh_nacimiento%>' class='form-control' id='txtFh_nacimiento' name ='txtFh_nacimiento' placeholder='fh_nacimiento'>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <div class='form-group'>
                        <p id = 'mensaje' class="text-center text-danger"> </p>
                        <div class='col-sm-offset-2 col-sm-10'>
                            <button type='submit' onclick="guardar();return false" class='btn btn-default alert-primary'>Grabar</button>
                            <a class='btn btn-default alert-primary' href="inicio.htm?page=cliente_lista&titulo=cliente" >Regresar</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
     
