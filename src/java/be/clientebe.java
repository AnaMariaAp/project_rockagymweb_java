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


public class clientebe {

    private int id; 
    private String nombre; 
    private String apellido; 
    private int telefono; 
    private String direccion; 
    private int dni; 
    private String sexo; 
    private int edad; 
    private Date fh_nacimiento; 

    public clientebe (){}

    public clientebe (int id,String nombre,String apellido,int telefono,String direccion,int dni,String sexo,int edad,Date fh_nacimiento){
        this.id=id; 
        this.nombre=nombre; 
        this.apellido=apellido; 
        this.telefono=telefono; 
        this.direccion=direccion; 
        this.dni=dni; 
        this.sexo=sexo; 
        this.edad=edad; 
        this.fh_nacimiento=fh_nacimiento; 
    }

    public int getId(){
        return id; 
    }
    public void setId(int id){
        this.id=id; 
    }

    public String getNombre(){
        return nombre; 
    }
    public void setNombre(String nombre){
        this.nombre=nombre; 
    }

    public String getApellido(){
        return apellido; 
    }
    
    public void setApellido(String apellido){
        this.apellido=apellido; 
    }

    public int getTelefono(){
        return telefono; 
    }
    public void setTelefono(int telefono){
        this.telefono=telefono; 
    }

    public String getDireccion(){
        return direccion; 
    }
    public void setDireccion(String direccion){
        this.direccion=direccion; 
    }

    public int getDni(){
        return dni; 
    }
    
    public void setDni(int dni){
        this.dni=dni; 
    }

    public String getSexo(){
        return sexo; 
    }
    
    public void setSexo(String sexo){
        this.sexo=sexo; 
    }

    public int getEdad(){
        return edad; 
    }
    public void setEdad(int edad){
        this.edad=edad; 
    }

    public Date getFh_nacimiento(){
        return fh_nacimiento; 
    }
    
    public void setFh_nacimiento(Date fh_nacimiento){
        this.fh_nacimiento=fh_nacimiento; 
    }

}
