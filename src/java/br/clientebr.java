/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;
import be.clientebe;
import dao.clientedao;
import java.util.List;

/**
 *
 * @author jvegag
 */

public class clientebr {

    public clientebr (){}

    public clientebe getCliente( int id){
        return new clientedao().getCliente(id); 
    }

    public List<clientebe> getCliente( String parametro1){
        return new clientedao().getCliente(parametro1);
    }
    
    public List<clientebe> getCliente( String parametro1,String parametro2){
        return new clientedao().getCliente(parametro1, parametro2);
    }
    public int addCliente( clientebe obj){
        return new clientedao().addCliente(obj);
    }
    public int updateCliente( clientebe obj){
        return new clientedao().updateCliente(obj);
    }
}
