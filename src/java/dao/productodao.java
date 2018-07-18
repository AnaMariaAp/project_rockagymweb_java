/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Date;
import be.productobe;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jvegag
 */
public class productodao {

    public productodao (){}

    public productobe getProducto( int id){
        productobe obj = null;
        String sql="select id,nombre,precio from rokagym_db.producto"+" where id = "+id;
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();obj = new productobe(rs.getInt("id"),rs.getString("nombre"),rs.getDouble("precio"));
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }

    public List<productobe> getProducto( String parametro1){
        List<productobe> obj = new ArrayList();

        String sql="select id,nombre,precio from rokagym_db.producto where id like '%"+parametro1+"%'";
        Connection c=null;


        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  productobe(rs.getInt("id"),rs.getString("nombre"),rs.getDouble("precio")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public List<productobe> getProducto( String parametro1,String parametro2){
        List<productobe> obj = new ArrayList();

        String sql="select id,nombre,precio from rokagym_db.producto where id like '%"+parametro1+"%'";
        Connection c=null;


        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  productobe(rs.getInt("id"),rs.getString("nombre"),rs.getDouble("precio")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public int addProducto( productobe obj){
        String sql=" insert into rokagym_db.producto"+
        "   select (select max(id)from rokagym_db.producto)+1,'"+obj.getNombre()+"',"+obj.getPrecio()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return r; 
    }
    public int updateProducto( productobe obj){
        String sql=" update rokagym_db.producto  set id="+obj.getId()+",nombre='"+obj.getNombre()+"',precio="+obj.getPrecio()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }

    public int deshabilitarProducto( productobe obj){
        String sql = " update rokagym_db.producto  set estado = 0 where id=" + -1*obj.getId() + ";";

        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(productodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }
}