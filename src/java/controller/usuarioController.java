/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller; 

import be.usuariobe;
import br.usuariobr;
import java.sql.Date;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author jvegag
 */

@Controller
@RequestMapping("/validar")
public class usuarioController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String entradaGET(Model m){
        return "index";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String respuesta(
	@RequestParam("txtUsername") String username, 
	@RequestParam("txtPassword") String password, 
	Model m){
        
        if(username.equals("") || password.equals("")){
            m.addAttribute("mensaje","Ingrese datos correctos");
            return "index";
        }else{
            usuariobr obj = new usuariobr();
            List<usuariobe> entidad = obj.getUsuario(username,password);
            
            if(entidad != null && entidad.size()>0){
                m.addAttribute("valor",username);
                m.addAttribute("dpto",entidad);
                return "principal";
            }else{  
                m.addAttribute("mensaje","No existe usuario y/o contraseña" + username + password);
                return "index";
            }
            
            
        }

    }
} 
