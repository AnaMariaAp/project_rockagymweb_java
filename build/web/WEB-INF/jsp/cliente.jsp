<%-- 
    Document   : cliente
    Created on : 13/06/2018, 09:52:43 PM
    Author     : jvegag
--%>

<%@page import="java.sql.Date"%>
<%@page import="be.clientebe"%>
<%@page import="br.clientebr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String[] mensaje = new String[4];

      
    String id = request.getParameter("txtId");
    String nombre = request.getParameter("txtNombre");
    String apellido = request.getParameter("txtApellido");
    String telefono = request.getParameter("txtTelefono");
    String direccion = request.getParameter("txtDireccion");
    String dni = request.getParameter("txtDni");
    String sexo = request.getParameter("txtSexo");
    String edad = request.getParameter("txtEdad");
    String fh_nacimiento = request.getParameter("txtFh_nacimiento");
     if( String.valueOf( id).equals("") ){
         id = "0" ;
     }else {
        clientebr obj = new clientebr();
        // Deprecated
        java.util.Date now = new java.util.Date();
        java.sql.Date fecha_registro = new java.sql.Date(now.getTime());
        clientebe e = new clientebe();

        e.setId(Integer.valueOf( id));
        e.setNombre( nombre);
        e.setApellido( apellido);
        e.setTelefono(Integer.valueOf( telefono));
        e.setDireccion( direccion);
        e.setDni(Integer.valueOf( dni));
        e.setSexo( sexo);
        e.setEdad(Integer.valueOf( edad));
        e.setFh_nacimiento(Date.valueOf( fh_nacimiento));


        Integer resul = 0;

        if (Integer.valueOf(id) == 0) {
            resul = obj.addCliente(e);
            mensaje[0] = "Se guardaron los datos Correctamente";
        } else if (Integer.valueOf(id) > 0) {
            resul = obj.updateCliente(e);
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