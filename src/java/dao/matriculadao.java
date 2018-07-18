/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Date;
import be.matriculabe;
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

public class matriculadao {

    public matriculadao (){}

    public matriculabe getMatricula( int id){
        matriculabe obj = null;
        String sql="select id,id_cliente,id_membresia,fh_inicio,fh_fin,fh_matricula,id_usuario from rokagym_db.matricula"+" where id = "+id;
        Connection c=null;
        
        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql);
            rs.next();obj = new matriculabe(rs.getInt("id"),rs.getInt("id_cliente"),rs.getInt("id_membresia"),rs.getDate("fh_inicio"),rs.getDate("fh_fin"),rs.getDate("fh_matricula"),rs.getInt("id_usuario"));
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }

    public List<matriculabe> getMatricula( String parametro1){
        List<matriculabe> obj = new ArrayList();

        String sql="select id,id_cliente,id_membresia,fh_inicio,fh_fin,fh_matricula,id_usuario from rokagym_db.matricula where id like '%"+parametro1+"%'";
        Connection c=null;


        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  matriculabe(rs.getInt("id"),rs.getInt("id_cliente"),rs.getInt("id_membresia"),rs.getDate("fh_inicio"),rs.getDate("fh_fin"),rs.getDate("fh_matricula"),rs.getInt("id_usuario")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public List<matriculabe> getMatricula( String parametro1,String parametro2){
        List<matriculabe> obj = new ArrayList();

        String sql="select id,id_cliente,id_membresia,fh_inicio,fh_fin,fh_matricula,id_usuario from rokagym_db.matricula where id like '%"+parametro1+"%'";
        Connection c=null;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery(sql); 

            while(rs.next()){obj.add(new  matriculabe(rs.getInt("id"),rs.getInt("id_cliente"),rs.getInt("id_membresia"),rs.getDate("fh_inicio"),rs.getDate("fh_fin"),rs.getDate("fh_matricula"),rs.getInt("id_usuario")));}
             c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return obj; 
    }
    public int addMatricula( matriculabe obj){
        String sql=" insert into rokagym_db.matricula"+
        "   select (select max(id)from rokagym_db.matricula)+1,"+obj.getId_cliente()+","+obj.getId_membresia()+",'"+obj.getFh_inicio()+"','"+obj.getFh_fin()+"','"+obj.getFh_matricula()+"',"+obj.getId_usuario()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return r; 
    }
    public int updateMatricula( matriculabe obj){
        String sql=" update rokagym_db.matricula  set id="+obj.getId()+",id_cliente="+obj.getId_cliente()+",id_membresia="+obj.getId_membresia()+",fh_inicio='"+obj.getFh_inicio()+"',fh_fin='"+obj.getFh_fin()+"',fh_matricula='"+obj.getFh_matricula()+"',id_usuario="+obj.getId_usuario()+"";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }

    public int deshabilitarMatricula( matriculabe obj){
        String sql = " update rokagym_db.matricula  set estado = 0 where id=" + -1*obj.getId() + ";";
        Connection c=null;
        int r = 0;

        try {
            c = new data().getMysql();
            Statement st = c.createStatement();
             r = st.executeUpdate(sql); 
            c.close();
            c=null;
        } catch (SQLException ex) {
            Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                if(c!=null){
                    c.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(matriculadao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return 1; 
    }
}