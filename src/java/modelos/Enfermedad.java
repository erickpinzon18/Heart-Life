package modelos;

public class Enfermedad {
    private String user, nombre, gravedad, fec_det, tratado;
    private int nEnfer = 0;

    public Enfermedad() {
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

    public int getnEnfer() {
        return nEnfer;
    }

    public void setnEnfer(int nEnfer) {
        this.nEnfer = nEnfer;
    }
}
