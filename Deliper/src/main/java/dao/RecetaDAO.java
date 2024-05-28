package dao;

import interfaces.CRUDRecetas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Receta;
import util.MySQLConexion;

public class RecetaDAO implements CRUDRecetas{
    
    MySQLConexion cn=new MySQLConexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Receta r=new Receta();

    @Override
    public List listar() {
        ArrayList<Receta>list=new ArrayList<>();
        String sql="select * from recetas";
        try{
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Receta rec=new Receta();
                rec.setId(rs.getInt("receta_id"));
                rec.setTitulo(rs.getString("titulo"));
                rec.setDescripcion(rs.getString("descripcion"));
                rec.setPreparacion(rs.getString("preparacion"));
                list.add(rec);
            }
        }catch (Exception e){
            
        }
        return list;
    }

    @Override
    public Receta list(int id) {
        String sql="select * from recetas where receta_id="+id;
        try{
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                r.setId(rs.getInt("receta_id"));
                r.setTitulo(rs.getString("titulo"));
                r.setDescripcion(rs.getString("descripcion"));
                r.setPreparacion(rs.getString("preparacion"));
            }
        }catch (Exception e){
            
        }
        return r;
    }

    @Override
    public boolean add(Receta rec) {
        String sql="insert into recetas(titulo, descripcion, preparacion)values('"+rec.getTitulo()+"','"+rec.getDescripcion()+"','"+rec.getPreparacion()+"')";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
        return false;
    }


    @Override
    public boolean edit(Receta rec) {
        String sql="update recetas set titulo='"+rec.getTitulo()+"',descripcion='"+rec.getDescripcion()+"',preparacion='"+rec.getPreparacion()+"'where receta_id="+rec.getId();
        try {
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from recetas where receta_id="+id;
        try {
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
