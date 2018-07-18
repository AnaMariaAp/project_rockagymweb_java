<%-- 
    Document   : matricula
    Created on : 13/06/2018, 10:13:01 PM
    Author     : jvegag
--%>
<%@page import="java.sql.Date"%>
<%@page import="be.matriculabe"%>
<%@page import="br.matriculabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String[] mensaje = new String[4];
      
    String id = request.getParameter("txtId");
    String id_cliente = request.getParameter("txtId_cliente");
    String id_membresia = request.getParameter("txtId_membresia");
    String fh_inicio = request.getParameter("txtFh_inicio");
    String fh_fin = request.getParameter("txtFh_fin");
    String fh_matricula = request.getParameter("txtFh_matricula");
    String id_usuario = request.getParameter("txtId_usuario");
    if( String.valueOf( id).equals("") ){
        id = "0" ;
    }else {
        matriculabr obj = new matriculabr();
        // Deprecated
        java.util.Date now = new java.util.Date();
        java.sql.Date fecha_registro = new java.sql.Date(now.getTime());
        matriculabe e = new matriculabe();

        e.setId(Integer.valueOf( id));
        e.setId_cliente(Integer.valueOf( id_cliente));
        e.setId_membresia(Integer.valueOf( id_membresia));
        e.setFh_inicio(Date.valueOf( fh_inicio));
        e.setFh_fin(Date.valueOf( fh_fin));
        e.setFh_matricula(Date.valueOf( fh_matricula));
        e.setId_usuario(Integer.valueOf( id_usuario));


        Integer resul = 0;

        if (Integer.valueOf(id) == 0) {
            resul = obj.addMatricula(e);
            mensaje[0] = "Se guardaron los datos Correctamente";
        } else if (Integer.valueOf(id) > 0) {
            resul = obj.updateMatricula(e);
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