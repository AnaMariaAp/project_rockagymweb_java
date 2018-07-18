/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Date;
import be.clientebe;
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

public class clientedao {

    public clientedao (){}

    public clientebe getCliente( int id){
        clientebe obj = null;
        String sql="select id,nombre,apellido,telefono,direccion,dni,sexo,edad,fh_nacimiento from rokagym_db.cliente"+" where id = "+id;
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();obj = new clientebe(rs.getInt("id"),rs.getString("nombre"),rs.getString("apellido"),rs.getInt("telefono"),rs.getString("direccion"),rs.getInt("dni"),rs.getString("sexo"),rs.getInt("edad"),rs.getDate("fh_nacimiento"));
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }

    public List<clientebe> getCliente( String parametro1){
        List<clientebe> obj = new ArrayList();
        String sql="select id,nombre,apellido,telefono,direccion,dni,sexo,edad,fh_nacimiento from rokagym_db.cliente where id like '%"+parametro1+"%'";
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  clientebe(rs.getInt("id"),rs.getString("nombre"),rs.getString("apellido"),rs.getInt("telefono"),rs.getString("direccion"),rs.getInt("dni"),rs.getString("sexo"),rs.getInt("edad"),rs.getDate("fh_nacimiento")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    
    public List<clientebe> getCliente( String parametro1,String parametro2){
        List<clientebe> obj = new ArrayList();
        String sql="select id,nombre,apellido,telefono,direccion,dni,sexo,edad,fh_nacimiento from rokagym_db.cliente where id like '%"+parametro1+"%'";
        Connection c=null;


        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  clientebe(rs.getInt("id"),rs.getString("nombre"),rs.getString("apellido"),rs.getInt("telefono"),rs.getString("direccion"),rs.getInt("dni"),rs.getString("sexo"),rs.getInt("edad"),rs.getDate("fh_nacimiento")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public int addCliente( clientebe obj){
        String sql=" insert into rokagym_db.cliente"+
        "   select (select max(id)from rokagym_db.cliente)+1,'"+obj.getNombre()+"','"+obj.getApellido()+"',"+obj.getTelefono()+",'"+obj.getDireccion()+"',"+obj.getDni()+",'"+obj.getSexo()+"',"+obj.getEdad()+",'"+obj.getFh_nacimiento()+"'";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return r; 
    }
    
    public int updateCliente( clientebe obj){
        String sql=" update rokagym_db.cliente  set id="+obj.getId()+",nombre='"+obj.getNombre()+"',apellido='"+obj.getApellido()+"',telefono="+obj.getTelefono()+",direccion='"+obj.getDireccion()+"',dni="+obj.getDni()+",sexo='"+obj.getSexo()+"',edad="+obj.getEdad()+",fh_nacimiento='"+obj.getFh_nacimiento()+"'";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }

    public int deshabilitarCliente( clientebe obj){
        String sql = " update rokagym_db.cliente  set estado = 0 where id=" + -1*obj.getId() + ";";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(clientedao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }
}