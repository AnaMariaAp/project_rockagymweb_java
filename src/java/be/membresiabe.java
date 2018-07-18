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

public class membresiabe {

    private int id; 
    private String nombre; 
    private double costo; 
    private int meses; 
    
    public membresiabe (){}

    public membresiabe (int id,String nombre,double costo,int meses){
        this.id=id; 
        this.nombre=nombre; 
        this.costo=costo; 
        this.meses=meses; 
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

    public double getCosto(){
        return costo; 
    }
    
    public void setCosto(double costo){
        this.costo=costo; 
    }

    public int getMeses(){
        return meses; 
    }
    
    public void setMeses(int meses){
        this.meses=meses; 
    }

}
