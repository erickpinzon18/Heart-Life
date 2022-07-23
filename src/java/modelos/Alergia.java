package modelos;

public class Alergia {
    private String user, nombre, gravedad, fec_det, tratado;
    private int nAler = 0;

    public Alergia() {
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

    public String getGravedad() {
        return gravedad;
    }

    public void setGravedad(String gravedad) {
        this.gravedad = gravedad;
    }

    public String getFec_det() {
        return fec_det;
    }

    public void setFec_det(String fec_det) {
        this.fec_det = fec_det;
    }

    public String getTratado() {
        return tratado;
    }

    public void setTratado(String tratado) {
        this.tratado = tratado;
    }

    public int getnAler() {
        return nAler;
    }

    public void setnAler(int nAler) {
        this.nAler = nAler;
    }
}
