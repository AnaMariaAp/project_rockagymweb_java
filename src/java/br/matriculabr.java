/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;
import be.matriculabe;
import dao.matriculadao;
import java.util.List;

/**
 *
 * @author jvegag
 */

public class matriculabr {

public matriculabr (){}

    public matriculabe getMatricula( int id){
        return new matriculadao().getMatricula(id); 
    }

    public List<matriculabe> getMatricula( String parametro1){
        return new matriculadao().getMatricula(parametro1); 
    }
    public List<matriculabe> getMatricula( String parametro1,String parametro2){
        return new matriculadao().getMatricula(parametro1, parametro2);
    }
    public int addMatricula( matriculabe obj){
        return new matriculadao().addMatricula(obj);
    }
    public int updateMatricula( matriculabe obj){
        return new matriculadao().updateMatricula(obj);
    }
}