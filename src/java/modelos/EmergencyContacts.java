package modelos;

public class EmergencyContacts {
    private String user, nombre, email, direc, numero;
    private int nContacto = 0;

    public EmergencyContacts() {
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getnContacto() {
        return nContacto;
    }

    public void setnContacto(int nContacto) {
        this.nContacto = nContacto;
    }
}
