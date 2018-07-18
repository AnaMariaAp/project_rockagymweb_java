<%-- 
    Document   : matricula_mantenimiento
    Created on : 13/06/2018, 10:13:16 PM
    Author     : jvegag
--%>

<% 

    String id="";
    if (request.getParameter("id" ) != null) { 
        id = request.getParameter("id").toString();
    }
    String id_cliente="";
    if (request.getParameter("id_cliente" ) != null) { 
        id_cliente = request.getParameter("id_cliente").toString();
    }
    String id_membresia="";
    if (request.getParameter("id_membresia" ) != null) { 
        id_membresia = request.getParameter("id_membresia").toString();
    }
    String fh_inicio="";
    if (request.getParameter("fh_inicio" ) != null) { 
        fh_inicio = request.getParameter("fh_inicio").toString();
    }
    String fh_fin="";
    if (request.getParameter("fh_fin" ) != null) { 
        fh_fin = request.getParameter("fh_fin").toString();
    }
    String fh_matricula="";
    if (request.getParameter("fh_matricula" ) != null) { 
        fh_matricula = request.getParameter("fh_matricula").toString();
    }
    String id_usuario="";
    if (request.getParameter("id_usuario" ) != null) { 
        id_usuario = request.getParameter("id_usuario").toString();
    }
 
%> 
<script>
    limite = 8;

    function guardar() {  
        if( $('#txtEstado').prop('checked') ) 
            estado=1; 

        var parametros = {
            txtId: $("#txtId").val(),
            txtId_cliente: $("#txtId_cliente").val(),
            txtId_membresia: $("#txtId_membresia").val(),
            txtFh_inicio: $("#txtFh_inicio").val(),
            txtFh_fin: $("#txtFh_fin").val(),
            txtFh_matricula: $("#txtFh_matricula").val(),
            txtId_usuario: $("#txtId_usuario").val()
        };  
        $.ajax({
            url: 'matricula_tabla.htm',
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
            <h1>Mantenimiento de Matricula</h1>
        </div>
    <div class='row'>
        <div class='col-md-2'>&nbsp;<br></div>
        <div class='col-md-10'>
            <form class='form-horizontal' action=matricula.htm role='form' method='post'>  <br>
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
                            <label for='txtId_cliente' class='col-sm-2 control-label'>Id_cliente</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=id_cliente%>' class='form-control' id='txtId_cliente' name ='txtId_cliente' placeholder='id_cliente'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtId_membresia' class='col-sm-2 control-label'>Id_membresia</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=id_membresia%>' class='form-control' id='txtId_membresia' name ='txtId_membresia' placeholder='id_membresia'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtFh_inicio' class='col-sm-2 control-label'>Fh_inicio</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=fh_inicio%>' class='form-control' id='txtFh_inicio' name ='txtFh_inicio' placeholder='fh_inicio'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtFh_fin' class='col-sm-2 control-label'>Fh_fin</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=fh_fin%>' class='form-control' id='txtFh_fin'  name ='txtFh_fin' placeholder='fh_fin'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtFh_matricula' class='col-sm-2 control-label'>Fh_matricula</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=fh_matricula%>' class='form-control' id='txtFh_matricula' name ='txtFh_matricula' placeholder='fh_matricula'>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='form-group'>
                    <div class='row'>
                        <div class='col-sm-12'>
                            <label for='txtId_usuario' class='col-sm-2 control-label'>Id_usuario</label>
                            <div class='col-sm-10'>
                                <input type='text' value = '<%=id_usuario%>' class='form-control' id='txtId_usuario' name ='txtId_usuario' placeholder='id_usuario'>
                            </div>
                        </div>
                    </div>
                </div>

                <div class='form-group'>
                    <p id = 'mensaje' class="text-center text-danger"> </p>
                    <div class='col-sm-offset-2 col-sm-10'>
                        <button type='submit' onclick="guardar();return false" class='btn btn-default alert-primary'>Grabar</button>
                        <a class='btn btn-default alert-primary' href="inicio.htm?page=matricula_lista&titulo=matricula" >Regresar</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
        