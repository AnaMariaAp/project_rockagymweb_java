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
public class usuariobe {

    private int id; 
    private String username; 
    private String password; 
    private String tipo_usuario; 
    private int ST; 

    public usuariobe (){}

    public usuariobe (int id,String username,String password,String tipo_usuario,int ST){
        this.id=id; 
        this.username=username; 
        this.password=password; 
        this.tipo_usuario=tipo_usuario; 
        this.ST=ST; 
    }

    public int getId(){
        return id; 
    }
    public void setId(int id){
        this.id=id; 
    }

    public String getUsername(){
        return username; 
    }
    public void setUsername(String username){
        this.username=username; 
    }

    public String getPassword(){
        return password; 
    }
    public void setPassword(String password){
        this.password=password; 
    }

    public String getTipo_usuario(){
        return tipo_usuario; 
    }
    public void setTipo_usuario(String tipo_usuario){
        this.tipo_usuario=tipo_usuario; 
    }

    public int getSt(){
        return ST; 
    }
    public void setSt(int ST){
        this.ST=ST; 
    }

}
