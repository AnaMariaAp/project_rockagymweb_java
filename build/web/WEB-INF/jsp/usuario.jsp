<%-- 
    Document   : usuario
    Created on : 13/06/2018, 01:57:30 PM
    Author     : jvegag
--%>
<%@page import="be.usuariobe"%>
<%@page import="br.usuariobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String[] mensaje = new String[4];
      
    String id = request.getParameter("txtId");
    String username = request.getParameter("txtUsername");
    String password = request.getParameter("txtPassword");
    String tipo_usuario = request.getParameter("txtTipo_usuario");
    String ST = request.getParameter("txtSt");
    if( String.valueOf( id).equals("") ){
        id = "0" ;
    }else {
        usuariobr obj = new usuariobr();
        // Deprecated
        java.util.Date now = new java.util.Date();
        java.sql.Date fecha_registro = new java.sql.Date(now.getTime());
        usuariobe e = new usuariobe();

        e.setId(Integer.valueOf( id));
        e.setUsername( username);
        e.setPassword( password);
        e.setTipo_usuario( tipo_usuario);
        e.setSt(Integer.valueOf( ST));


        Integer resul = 0;

        if (Integer.valueOf(id) == 0) {
            resul = obj.addUsuario(e);
            mensaje[0] = "Se guardaron los datos Correctamente";
        } else if (Integer.valueOf(id) > 0) {
            resul = obj.updateUsuario(e);
            mensaje[0] = "Se Actualizaron los datos Correctamente";
        } else if (Integer.valueOf(id) < 0) {
            resul = obj.deshabilitarUsuario(e);
            mensaje[0] = "Se deshabilitaron los datos Correctamente";
        }

        if (resul > 0) {
            
            mensaje[1] = "1";
            mensaje[2] = "Success";

        } else {
            mensaje[0] = "No se guardaron los datos Correctamente";
            mensaje[1] = "1";
            mensaje[2] = "Danger";
        }
    }

%>

{"mensaje":"<%=mensaje[0]%>", "componente":"<%=mensaje[1]%>", "estado": "<%=mensaje[2]%>"}

<%
    // Returns all employees (active and terminated) as json.
    response.setContentType("application/json");
%>