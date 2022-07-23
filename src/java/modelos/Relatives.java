package modelos;

public class Relatives {
    private String usuario, nombre, parentezco, direc, num;
    int nRelative;

    public Relatives() {
    }

    public String getNombre() {
        return nombre;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getParentezco() {
        return parentezco;
    }

    public void setParentezco(String parentezco) {
        this.parentezco = parentezco;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }

    public int getnRelative() {
        return nRelative;
    }

    public void setnRelative(int nRelative) {
        this.nRelative = nRelative;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
}
