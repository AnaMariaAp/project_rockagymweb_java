/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;
import java.sql.Date;

/**
 *
 * @author jvegag
 */


public class matriculabe {

    private int id; 
    private int id_cliente; 
    private int id_membresia; 
    private Date fh_inicio; 
    private Date fh_fin; 
    private Date fh_matricula; 
    private int id_usuario; 

    public matriculabe (){}

    public matriculabe (int id,int id_cliente,int id_membresia,Date fh_inicio,Date fh_fin,Date fh_matricula,int id_usuario){
        this.id=id; 
        this.id_cliente=id_cliente; 
        this.id_membresia=id_membresia; 
        this.fh_inicio=fh_inicio; 
        this.fh_fin=fh_fin; 
        this.fh_matricula=fh_matricula; 
        this.id_usuario=id_usuario; 
    }

    public int getId(){
        return id; 
    }
    public void setId(int id){
        this.id=id; 
    }

    public int getId_cliente(){
        return id_cliente; 
    }
    
    public void setId_cliente(int id_cliente){
        this.id_cliente=id_cliente; 
    }

    public int getId_membresia(){
        return id_membresia; 
    }
    
    public void setId_membresia(int id_membresia){
        this.id_membresia=id_membresia; 
    }

    public Date getFh_inicio(){
    return fh_inicio; 
    }
    
    public void setFh_inicio(Date fh_inicio){
        this.fh_inicio=fh_inicio; 
    }

    public Date getFh_fin(){
        return fh_fin; 
    }
    
    public void setFh_fin(Date fh_fin){
        this.fh_fin=fh_fin; 
    }

    public Date getFh_matricula(){
        return fh_matricula; 
    }
    
    public void setFh_matricula(Date fh_matricula){
        this.fh_matricula=fh_matricula; 
    }

    public int getId_usuario(){
        return id_usuario; 
    }
    
    public void setId_usuario(int id_usuario){
        this.id_usuario=id_usuario; 
    }

}
