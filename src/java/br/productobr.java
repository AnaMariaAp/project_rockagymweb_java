/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;
import be.productobe;
import dao.productodao;
import java.util.List;

/**
 *
 * @author jvegag
 */

public class productobr {

    public productobr (){}

    public productobe getProducto( int id){
        return new productodao().getProducto(id); 
    }

    public List<productobe> getProducto( String parametro1){
        return new productodao().getProducto(parametro1);
    }
    public List<productobe> getProducto( String parametro1,String parametro2){
        return new productodao().getProducto(parametro1, parametro2);
    }
    public int addProducto( productobe obj){
        return new productodao().addProducto(obj);
    }
    public int updateProducto( productobe obj){
        return new productodao().updateProducto(obj);
    }
}