    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Date;
import be.usuariobe;
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

public class usuariodao {

    public usuariodao (){}

    public usuariobe getUsuario( int id){
        usuariobe obj = null;
        String sql="select id,username,password,tipo_usuario,ST from rokagym_db.usuario"+" where id = "+id;
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();obj = new usuariobe(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("tipo_usuario"),rs.getInt("ST"));
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }

    public List<usuariobe> getUsuario( String parametro1){
        List<usuariobe> obj = new ArrayList();
        String sql="select id,username,password,tipo_usuario,ST from rokagym_db.usuario where id like '%"+parametro1+"%'";
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  usuariobe(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("tipo_usuario"),rs.getInt("ST")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public List<usuariobe> getUsuario( String parametro1,String parametro2){
        List<usuariobe> obj = new ArrayList();
        String sql="select id,username,password,tipo_usuario,ST from rokagym_db.usuario where username = '"+parametro1+"' and password = '" +parametro2 + "';";
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  usuariobe(rs.getInt("id"),rs.getString("username"),rs.getString("password"),rs.getString("tipo_usuario"),rs.getInt("ST")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public int addUsuario( usuariobe obj){
        String sql=" insert into rokagym_db.usuario"+
        "   select (select max(id)from rokagym_db.usuario)+1,'"+obj.getUsername()+"','"+obj.getPassword()+"','"+obj.getTipo_usuario()+"',"+obj.getSt()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return r; 
    }
    public int updateUsuario( usuariobe obj){
        String sql=" update rokagym_db.usuario  set id="+obj.getId()+",username='"+obj.getUsername()+"',password='"+obj.getPassword()+"',tipo_usuario='"+obj.getTipo_usuario()+"',ST="+obj.getSt()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }

    public int deshabilitarUsuario( usuariobe obj){
        String sql = " update rokagym_db.usuario  set estado = 0 where id=" + -1*obj.getId() + ";";
        Connection c=null;
        int r = 0;
        
        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(usuariodao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }
}