<%-- 
    Document   : membresia
    Created on : 13/06/2018, 06:13:37 PM
    Author     : jvegag
--%>

<%-- 
*Nombre Archivo : Membresia.jsp
*Creador Archivo: 01-040479
*Fecha Creacion : 2018-06-13 20:30:46
--%>
<%@page import="be.membresiabe"%>
<%@page import="br.membresiabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String[] mensaje = new String[4];

    String id = request.getParameter("txtId");
    String nombre = request.getParameter("txtNombre");
    String costo = request.getParameter("txtCosto");
    String meses = request.getParameter("txtMeses");
    if( String.valueOf( id).equals("") ){
        id = "0" ;
    } else {
        membresiabr obj = new membresiabr();
        // Deprecated
        java.util.Date now = new java.util.Date();
        java.sql.Date fecha_registro = new java.sql.Date(now.getTime());
        membresiabe e = new membresiabe();

        e.setId(Integer.valueOf( id));
        e.setNombre( nombre);
        e.setCosto(Integer.valueOf( costo));
        e.setMeses(Integer.valueOf( meses));
        
        Integer resul = 0;

        if (Integer.valueOf(id) == 0) {
            resul = obj.addMembresia(e);
            mensaje[0] = "Se guardaron los datos Correctamente";
        } else if (Integer.valueOf(id) > 0) {
            resul = obj.updateMembresia(e);
            mensaje[0] = "Se Actualizaron los datos Correctamente";
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