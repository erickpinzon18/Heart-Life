package bd;

import com.mysql.cj.Messages;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import modelos.Usuario;

public class Conexion {
    public Connection con;
    public Statement smt;
    public ResultSet rs;

    public Conexion() {
    }
    
    public void conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:8889/HeartLife", "root", "root");
            System.out.println("Conexion realizada correctamente");
            smt = con.createStatement();
        } catch (Exception e) {
            System.out.println("Error en la conexión: " + e);
        }
    }
    
    public void desconectar() {
        try {
           con.close();
        } catch (SQLException e) {
            System.out.println("Error al desconectar: " + e);
        }
    }
    
    public int insertarUsuario (Usuario u) {
        //System.out.println(u.getFec_nac());
        String sql = "INSERT INTO user (user, password, id_fb, nombre, fec_nac, correo) values "
                + "('"+u.getUsuario()+"',"
                + "'"+u.getPassword()+"',"
                + "'"+u.getId_fb()+"',"
                + "'"+u.getNombre()+"',"
                + "'"+u.getFec_nac()+"',"
                + "'"+u.getCorreo()+"')";
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al insertar registro: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public boolean validarEnBD (String col, String value) {
        //Cambiar esto jeje
        String sql = "SELECT "+col+" FROM USER WHERE "+col+ " = '"+value+"'";
        boolean exists = false;
        try {
            conectar();
            rs = smt.executeQuery(sql);
            
            if (rs != null) {
                while (rs.next()) {
                    if (!rs.getString(1).equals("")) {
                        exists = true;
                    }
                }
            }
            desconectar();
            return exists;
        } catch (SQLException ex) {
            System.out.println("Error al validar: "+ ex +" | SQL: "+ sql);
            return false;
        }
    }
    
    public boolean login (String pass, String user) {
        //
        String sql = "SELECT password FROM USER WHERE user = '"+user+"'";
        
        boolean logBD = false;
        try {
            conectar();
            rs = smt.executeQuery(sql);
            if (rs != null) {
                while (rs.next()) {
                    String passQry = rs.getString("password");
                    if (passQry.equals(pass)) {
                        logBD = true;
                    }
                }
            }
            desconectar();
            return logBD;
        } catch (SQLException ex) {
            System.out.println("Error al login: "+ ex +" | SQL: "+ sql);
            return false;
        }
    }
}
