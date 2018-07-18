/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;
import be.membresiabe;
import dao.membresiadao;
import java.util.List;

/**
 *
 * @author jvegag
 */

public class membresiabr {

    public membresiabr (){}

    public membresiabe getMembresia( int id){
        return new membresiadao().getMembresia(id); 
    }

    public List<membresiabe> getMembresia( String parametro1){
        return new membresiadao().getMembresia(parametro1);
    }
    public List<membresiabe> getMembresia( String parametro1,String parametro2){
        return new membresiadao().getMembresia(parametro1, parametro2);
    }
    public int addMembresia( membresiabe obj){
        return new membresiadao().addMembresia(obj);
    }
    
    public int updateMembresia( membresiabe obj){
        return new membresiadao().updateMembresia(obj);
    }
}