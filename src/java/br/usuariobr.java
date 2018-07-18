    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;
import be.usuariobe;
import dao.usuariodao;
import java.util.List;

/**
 *
 * @author jvegag
 */

public class usuariobr {
    
    public usuariobr (){}

    public usuariobe getUsuario( int id){
        return new usuariodao().getUsuario(id); 
    }

    public List<usuariobe> getUsuario( String parametro1){
        return new usuariodao().getUsuario(parametro1);
    }
    public List<usuariobe> getUsuario( String parametro1,String parametro2){
        return new usuariodao().getUsuario(parametro1, parametro2);
    }
    public int addUsuario( usuariobe obj){
        return new usuariodao().addUsuario(obj);
    }
    public int updateUsuario( usuariobe obj){
        return new usuariodao().updateUsuario(obj);
    }
    
    public int deshabilitarUsuario( usuariobe obj){
        return new usuariodao().deshabilitarUsuario(obj);
 
    }
}