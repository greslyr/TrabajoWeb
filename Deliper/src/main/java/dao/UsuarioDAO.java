package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Usuario;
import util.MySQLConexion;

public class UsuarioDAO {

    public Usuario obtenerUsuario(String usuario, String contraseña) {
        Usuario usr = null;
        String sql = "SELECT * FROM usuarios WHERE usuario = ? AND contraseña = ?";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(2, usuario);
            ps.setString(3, contraseña);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usr = new Usuario();
                usr.setUsuarioId(rs.getInt("usuario_id"));
                usr.setUsuario(rs.getString("usuario"));
                usr.setContraseña(rs.getString("contraseña"));
                usr.setCorreo(rs.getString("correo"));
                usr.setRol(rs.getString("rol"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usr;
    }
}
