/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import be.clientebe;
import br.clientebr;
import java.sql.Date;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/**
 *
 * @author anamaria
 */


/* 
*Nombre Archivo : ControlCliente.jsp
*Creador Archivo: LAPTOP-FA9TF70H
*Fecha Creacion : 2018-06-13 03:03:59
*/
@Controller
@RequestMapping("/cliente.htm")
public class clienteController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String entradaGET(Model m){
        return "index";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String respuesta(
        @RequestParam("txtId") int id, 
        @RequestParam("txtNombre") String nombre, 
        @RequestParam("txtApellido") String apellido, 
        @RequestParam("txtTelefono") int telefono, 
        @RequestParam("txtDireccion") String direccion, 
        @RequestParam("txtDni") int dni, 
        @RequestParam("txtSexo") String sexo, 
        @RequestParam("txtEdad") int edad, 
        @RequestParam("txtFh_nacimiento") Date fh_nacimiento, Model m)
    {

        if( String.valueOf( id).equals("") ){
            m.addAttribute("mensaje","Ingrese datos correctos");
            m.addAttribute("componente","txtId");
            return "index";			
        }else{
            clientebr obj = new clientebr();
            clientebe e = new clientebe(id,nombre,apellido,telefono,direccion,dni,sexo,edad,fh_nacimiento);

            Integer resul =0;
            resul = obj.addCliente(e);

            if( resul>0){ 
                m.addAttribute("mensaje","Se guardaron los datos correctamente");
                return "principal";
            }else{
                m.addAttribute("mensaje","No se guardaron los datos correctamente");
                return "index";
            }
        }
    }
} 
