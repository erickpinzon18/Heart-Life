package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelos.EmergencyContacts;
import modelos.General;
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
    
    public boolean validarEnBD (String col, String value) {
        //Cambiar esto jeje
        String sql = "SELECT "+col+" FROM USERH WHERE "+col+ " = '"+value+"'";
        System.out.println(sql);
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
    
    public int insertarUsuario (Usuario u) {
        //System.out.println(u.getFec_nac());
        String sql = "INSERT INTO userh (usr, pass, id_fb, nombre, fec_nac, correo) values "
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
    
    public List<Usuario> mostrarUsuarios(String user) {
        List <Usuario> lista = new ArrayList<>();
        String sql = "Select * from userh WHERE usr = '"+user+"'";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setNombre(rs.getString("nombre"));
                u.setUsuario(rs.getString("usr"));
                u.setPassword(rs.getString("pass"));
                u.setCorreo(rs.getString("correo"));
                u.setId_fb(rs.getString("id_fb"));
                u.setFec_nac(rs.getString("fec_nac"));
                lista.add(u);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla userh: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public String validarIdFB(String id_fb) {
        String sql = "Select usr from userh WHERE id_fb = '"+id_fb+"'";
        String user = null;
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                user = rs.getString("usr");
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al validar usuario de FB: "+ex+" , SQL: "+sql);
            user = null;
        }
        return user;
    }
    
    public int modificarUsuario (Usuario u) {
        String sql = "UPDATE userh set "
                + "usr = '"+u.getUsuario()+"',"
                + "nombre = '"+u.getNombre()+"',"
                + "correo = '"+u.getCorreo()+"',"
                + "fec_nac = '"+u.getFec_nac()+"'"
                + "where usr = '"+u.getUsuario()+"'";
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al modificar registro de Usuario: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public List<General> mostrarGeneral(String user) {
        List <General> lista = new ArrayList<>();
        String sql = "Select * from general WHERE usr = '"+user+"'";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                General g = new General();
                g.setUser(rs.getString("usr"));
                g.setDirec(rs.getString("direccion"));
                g.setCiudad(rs.getString("ciudad"));
                g.setEstado(rs.getString("estado"));
                g.setCp(rs.getInt("cp"));
                lista.add(g);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla general: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public int modificarGeneral (General g) {
        String sql = "UPDATE general set "
                + "direccion = '"+g.getDirec()+"',"
                + "ciudad = '"+g.getCiudad()+"',"
                + "cp = "+g.getCp()+","
                + "estado = '"+g.getEstado()+"'"
                + " where usr = '"+g.getUser()+"'";
        System.out.println(sql);
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al modificar registro de General: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int insertarEmergency (EmergencyContacts e) {
        String sql = "INSERT INTO emergencyContacts (usr, nContacto, nombre, email, direc, numero) values "
                + "('"+e.getUser()+"',"
                + ""+e.getnContacto()+","
                + "'"+e.getNombre()+"',"                
                + "'"+e.getEmail()+"',"
                + "'"+e.getDirec()+"',"
                + "'"+e.getNumero()+"')";
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al insertar registro en Emergency Contacts: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public List<EmergencyContacts> mostrarEmergencyContacts(String user) {
        List <EmergencyContacts> lista = new ArrayList<>();
        String sql = "Select * from emergencyContacts WHERE usr = '"+user+"'";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                EmergencyContacts e = new EmergencyContacts();
                e.setNombre(rs.getString("nombre"));
                e.setUser(rs.getString("usr"));
                e.setnContacto(rs.getInt("nContacto"));
                e.setEmail(rs.getString("email"));
                e.setDirec(rs.getString("direc"));
                e.setNumero(rs.getString("numero"));
                lista.add(e);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla emergencyContacts: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public int modificarEmergency (EmergencyContacts e) {
        String sql = "UPDATE emergencyContacts set "
                + "nContacto = '"+e.getnContacto()+"',"
                + "nombre = '"+e.getNombre()+"',"
                + "email = '"+e.getEmail()+"',"
                + "numero = '"+e.getNumero()+"',"
                + "direc = '"+e.getDirec()+"'"
                + " where usr = '"+e.getUser()+"' and nContacto = "+e.getnContacto();
        System.out.println(sql);
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al modificar registro de emergencyContacts: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int eliminarEmergency (EmergencyContacts e) {
        //System.out.println(u.getFec_nac());
        String sql = "DELETE FROM emergencyContacts WHERE usr ='"+e.getUser()+"' and nContacto = "+e.getnContacto();
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al eliminar registro de emergencyContacts: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int maxEmergency (String user) {
        String sql = "SELECT max(nContacto)+1 max FROM emergencyContacts WHERE usr = '"+user+"'";
        int max = 0;
        try {
            conectar();
            rs = smt.executeQuery(sql);
            if (rs != null) {
                while (rs.next()) {
                    max = rs.getInt("max");
                }
            }
            desconectar();
            return max;
        } catch (SQLException ex) {
            System.out.println("Error al buscar maxEmergency: "+ ex +" | SQL: "+ sql);
            return max;
        }
    }
    
    
    
    public boolean login (String pass, String user) {
        String sql = "SELECT pass FROM USERH WHERE usr = '"+user+"'";
        boolean logBD = false;
        try {
            conectar();
            rs = smt.executeQuery(sql);
            if (rs != null) {
                while (rs.next()) {
                    String passQry = rs.getString("pass");
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
    
    // Buscar usuario
    
}
