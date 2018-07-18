/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Date;
import be.membresiabe;
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
public class membresiadao {

    public membresiadao (){}

    public membresiabe getMembresia( int id){
        
        membresiabe obj = null;
        String sql="select id,nombre,costo,meses from rokagym_db.membresia"+" where id = "+id;
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();obj = new membresiabe(rs.getInt("id"),rs.getString("nombre"),rs.getDouble("costo"),rs.getInt("meses"));
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }

    public List<membresiabe> getMembresia( String parametro1){
        
        List<membresiabe> obj = new ArrayList();
        String sql="select id,nombre,costo,meses from rokagym_db.membresia where id like '%"+parametro1+"%'";
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  membresiabe(rs.getInt("id"),rs.getString("nombre"),rs.getDouble("costo"),rs.getInt("meses")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public List<membresiabe> getMembresia( String parametro1,String parametro2){
        
        List<membresiabe> obj = new ArrayList();
        String sql="select id,nombre,costo,meses from rokagym_db.membresia where id like '%"+parametro1+"%'";
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  membresiabe(rs.getInt("id"),rs.getString("nombre"),rs.getDouble("costo"),rs.getInt("meses")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public int addMembresia( membresiabe obj){
        String sql=" insert into rokagym_db.membresia"+
        "   select (select max(id)from rokagym_db.membresia)+1,'"+obj.getNombre()+"',"+obj.getCosto()+","+obj.getMeses()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return r; 
    }
    public int updateMembresia( membresiabe obj){
        String sql=" update rokagym_db.membresia  set id="+obj.getId()+",nombre='"+obj.getNombre()+"',costo="+obj.getCosto()+",meses="+obj.getMeses()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }

    public int deshabilitarMembresia( membresiabe obj){
       String sql = " update rokagym_db.membresia  set estado = 0 where id=" + -1*obj.getId() + ";";
       Connection c=null;
       int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(membresiadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }
}