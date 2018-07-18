<%-- 
    Document   : usuario_mantenimiento
    Created on : 13/06/2018, 01:38:53 PM
    Author     : jvegag
--%>

<script src="src-rg/js/principal.js" type="text/javascript"></script>
<% 
    String id="";
    if (request.getParameter("id" ) != null) { 
        id = request.getParameter("id").toString();
    }
    String username="";
    if (request.getParameter("username" ) != null) { 
        username = request.getParameter("username").toString();
    }
    String password="";
    if (request.getParameter("password" ) != null) { 
        password = request.getParameter("password").toString();
    }
    String tipo_usuario="";
    if (request.getParameter("tipo_usuario" ) != null) { 
        tipo_usuario = request.getParameter("tipo_usuario").toString();
    }
    String ST="";
    if (request.getParameter("ST" ) != null) { 
        ST = request.getParameter("ST").toString();
    }
%> 
<script>
    
    limite = 8;

    function guardar() {  
       if( $('#txtEstado').prop('checked') ) 
        estado=1; 

        var parametros = {
            txtId: $("#txtId").val(),
            txtUsername: $("#txtUsername").val(),
            txtPassword: $("#txtPassword").val(),
            txtTipo_usuario: $("#txtTipo_usuario").val(),
            txtSt: $("#txtSt").val()
        };  
        $.ajax({
            url: 'usuario_tabla.htm',
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
            <h1>Mantenimiento de Usuario</h1>
        </div>
            <div class='form-control'>
                <div class='row'>  
                    <div class='col-10'> 
                        <h3>Mantenimiento <small>usuario</small></h3>
                    </div>
                </div>    
            </div>
            <div class='row'>
                <div class='col-md-2'>&nbsp;<br></div>
                <div class='col-md-10'>
                    <form class='form-horizontal' action=usuario.htm role='form' method='post'>  <br>
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
                                    <label for='txtUsername' class='col-sm-2 control-label'>Username</label>
                                    <div class='col-sm-10'>
                                        <input type='text' value = '<%=username%>' class='form-control' id='txtUsername' name ='txtUsername' placeholder='username'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='row'>
                                <div class='col-sm-2'>
                                    <label for='txtPassword' class='col-sm-2 control-label'>Password</label>
                                    <div class='col-sm-10'>
                                        <input type='text' value = '<%=password%>' class='form-control' id='txtPassword' name ='txtPassword' placeholder='password'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='row'>
                                <div class='col-sm-12'>
                                    <label for='txtTipo_usuario' class='col-sm-2 control-label'>Tipo_usuario</label>
                                    <div class='col-sm-10'>
                                        <input type='text' value = '<%=tipo_usuario%>' class='form-control' id='txtTipo_usuario' name ='txtTipo_usuario' placeholder='tipo_usuario'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='row'>
                                <div class='col-sm-12'>
                                    <label for='txtSt' class='col-sm-2 control-label'>St</label>
                                    <div class='col-sm-10'>
                                        <input type='text' value = '<%=ST%>' class='form-control' id='txtSt' name ='txtSt' placeholder='ST'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='form-group'>
                            <p id = 'mensaje' class="text-center text-danger"> </p>
                            <div class='col-sm-offset-2 col-sm-10'>
                                <button type='submit' onclick="guardar();return false" class='btn btn-default alert-primary'>Grabar</button>
                                <a class='btn btn-default alert-primary' href="inicio.htm?page=usuario_lista&titulo=usuario" >Regresar</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    