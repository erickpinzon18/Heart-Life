package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.management.Notification;
import modelos.Alergia;
import modelos.EmergencyContacts;
import modelos.Enfermedad;
import modelos.General;
import modelos.Notifications;
import modelos.Relatives;
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
            //con = DriverManager.getConnection("jdbc:mysql://34.125.237.140:3306/HeartLife", "root", "utsjr");
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
                g.setSangre(rs.getString("sangre"));
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
                + "sangre = '"+g.getSangre()+"',"
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
                + "nContacto = "+e.getnContacto()+","
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
    
    public int insertarRelatives (Relatives r) {
        String sql = "INSERT INTO relatives values "
                + "('"+r.getUsuario()+"',"
                + ""+r.getnRelative()+","
                + "'"+r.getNombre()+"',"                
                + "'"+r.getParentezco()+"',"
                + "'"+r.getDirec()+"',"
                + "'"+r.getNum()+"')";
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al insertar registro en relatives: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public List<Relatives> mostrarRelatives(String user) {
        List <Relatives> lista = new ArrayList<>();
        String sql = "Select * from relatives WHERE usr = '"+user+"'";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                Relatives r = new Relatives();
                r.setNombre(rs.getString("nombre"));
                r.setUsuario(rs.getString("usr"));
                r.setnRelative(rs.getInt("nRelative"));
                r.setParentezco(rs.getString("parentezco"));
                r.setDirec(rs.getString("direc"));
                r.setNum(rs.getString("numero"));
                lista.add(r);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla relatives: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public int modificarRelatives (Relatives r) {
        String sql = "UPDATE relatives set "
                + "nRelative = "+r.getnRelative()+","
                + "nombre = '"+r.getNombre()+"',"
                + "parentezco = '"+r.getParentezco()+"',"
                + "numero = '"+r.getNum()+"',"
                + "direc = '"+r.getDirec()+"'"
                + " where usr = '"+r.getUsuario()+"' and nRelative = "+r.getnRelative();
        System.out.println(sql);
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al modificar registro de relatives: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int eliminarRelatives (Relatives r) {
        String sql = "DELETE FROM relatives WHERE usr ='"+r.getUsuario()+"' and nRelative = "+r.getnRelative();
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al eliminar registro de relatives: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int maxRelatives (String user) {
        String sql = "SELECT max(nRelative)+1 max FROM relatives WHERE usr = '"+user+"'";
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
            System.out.println("Error al buscar maxRelatives: "+ ex +" | SQL: "+ sql);
            return max;
        }
    }
    
    public int insertarEnfermedad (Enfermedad e) {
        String sql = "INSERT INTO Enfermedad (usr, nEnfer, nombre, gravedad, fec_det, tratado) values "
                + "('"+e.getUser()+"',"
                + ""+e.getnEnfer()+","
                + "'"+e.getNombre()+"',"                
                + "'"+e.getGravedad()+"',"
                + "'"+e.getFec_det()+"',"
                + "'"+e.getTratado()+"')";
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al insertar registro en Enfermedad: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public List<Enfermedad> mostrarEnfermedad(String user) {
        List <Enfermedad> lista = new ArrayList<>();
        String sql = "Select * from enfermedad WHERE usr = '"+user+"'";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                Enfermedad e = new Enfermedad();
                e.setNombre(rs.getString("nombre"));
                e.setUser(rs.getString("usr"));
                e.setnEnfer(rs.getInt("nEnfer"));
                e.setGravedad(rs.getString("gravedad"));
                e.setFec_det(rs.getString("fec_det"));
                e.setTratado(rs.getString("tratado"));
                lista.add(e);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla Enfermedad: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public int modificarEnfermedad (Enfermedad e) {
        String sql = "UPDATE enfermedad set "
                + "nEnfer = "+e.getnEnfer()+","
                + "nombre = '"+e.getNombre()+"',"
                + "gravedad = '"+e.getGravedad()+"',"
                + "fec_det = '"+e.getFec_det()+"',"
                + "tratado = '"+e.getTratado()+"'"
                + " where usr = '"+e.getUser()+"' and nEnfer = "+e.getnEnfer();
        System.out.println(sql);
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al modificar registro de Enfermedad: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int eliminarEnfermedad (Enfermedad e) {
        String sql = "DELETE FROM enfermedad WHERE usr ='"+e.getUser()+"' and nEnfer = "+e.getnEnfer();
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al eliminar registro de enfermedad: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int maxEnfermedad (String user) {
        String sql = "SELECT max(nEnfer)+1 max FROM enfermedad WHERE usr = '"+user+"'";
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
            System.out.println("Error al buscar maxEnfermedad: "+ ex +" | SQL: "+ sql);
            return max;
        }
    }
    
    public int insertarAlergia (Alergia a) {
        String sql = "INSERT INTO alergia (usr, nAlergia, nombre, gravedad, fec_det, tratado) values "
                + "('"+a.getUser()+"',"
                + ""+a.getnAler()+","
                + "'"+a.getNombre()+"',"                
                + "'"+a.getGravedad()+"',"
                + "'"+a.getFec_det()+"',"
                + "'"+a.getTratado()+"')";
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al insertar registro en Alergia: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public List<Alergia> mostrarAlergia(String user) {
        List <Alergia> lista = new ArrayList<>();
        String sql = "Select * from alergia WHERE usr = '"+user+"'";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                Alergia a = new Alergia();
                a.setNombre(rs.getString("nombre"));
                a.setUser(rs.getString("usr"));
                a.setnAler(rs.getInt("nAlergia"));
                a.setGravedad(rs.getString("gravedad"));
                a.setFec_det(rs.getString("fec_det"));
                a.setTratado(rs.getString("tratado"));
                lista.add(a);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla Alergia: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public int modificarAlergia (Alergia a) {
        String sql = "UPDATE alergia set "
                + "nAlergia = "+a.getnAler()+","
                + "nombre = '"+a.getNombre()+"',"
                + "gravedad = '"+a.getGravedad()+"',"
                + "fec_det = '"+a.getFec_det()+"',"
                + "tratado = '"+a.getTratado()+"'"
                + " where usr = '"+a.getUser()+"' and nAlergia = "+a.getnAler();
        System.out.println(sql);
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al modificar registro de Alergia: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int eliminarAlergia (Alergia a) {
        String sql = "DELETE FROM alergia WHERE usr ='"+a.getUser()+"' and nAlergia = "+a.getnAler();
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al eliminar registro de Alergia: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int maxAlergia (String user) {
        String sql = "SELECT max(nAlergia)+1 max FROM Alergia WHERE usr = '"+user+"'";
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
            System.out.println("Error al buscar maxAlergia: "+ ex +" | SQL: "+ sql);
            return max;
        }
    }
    
    public List<Notifications> mostrarNotifications(String user) {
        List <Notifications> lista = new ArrayList<>();
        String sql = "Select * from notification WHERE usr = '"+user+"' order by grado";
        try {
            conectar();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
                Notifications n = new Notifications();
                n.setDesc(rs.getString("descripcion"));
                n.setUser(rs.getString("usr"));
                n.setGrado(rs.getInt("grado"));
                n.setnNotif(rs.getInt("nNotif"));
                lista.add(n);
            }
            desconectar();
        } catch (SQLException ex) {
            System.out.println("Error al obtener los datos de MySQL en la tabla Notification: "+ex+" , SQL: "+sql);
            lista = null;
        }
        return lista;
    }
    
    public int eliminarNotifications (Notifications n) {
        String sql = "DELETE FROM notification WHERE usr ='"+n.getUser()+"' and nNotif = "+n.getnNotif();
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            return regs;
        } catch (SQLException ex) {
            System.out.println("Error al eliminar registro de Notification: "+ ex +" | SQL: "+ sql);
            return 0;
        }
    }
    
    public int maxNotifications (String user) {
        String sql = "SELECT count(nNotif) max FROM notification WHERE usr = '"+user+"'";
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
            System.out.println("Error al buscar maxNorif: "+ ex +" | SQL: "+ sql);
            return max;
        }
    }
    
    public boolean login (String pass, String user) {
        String sql = "SELECT pass FROM USERH WHERE usr = '"+user+"'";
        System.out.println(sql);
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
    
    public boolean changePassword (String pass, String user) {
        String sql = "Update userh set pass = '"+pass+"' where usr = '"+user+"'";
        System.out.println(sql);
        boolean logBD = false;
        try {
            conectar();
            int regs;
            regs = smt.executeUpdate(sql);
            logBD = true;
            desconectar();
            return logBD;
        } catch (SQLException ex) {
            System.out.println("Error al cambiar pass: "+ ex +" | SQL: "+ sql);
            return false;
        }
    }
}