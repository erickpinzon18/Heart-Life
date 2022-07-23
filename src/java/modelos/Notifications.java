package modelos;

public class Notifications {
    private String user, desc;
    private int nNotif, grado;

    public Notifications() {
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getnNotif() {
        return nNotif;
    }

    public void setnNotif(int nNotif) {
        this.nNotif = nNotif;
    }

    public int getGrado() {
        return grado;
    }

    public void setGrado(int grado) {
        this.grado = grado;
    }
}
