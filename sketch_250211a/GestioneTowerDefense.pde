import java.util.ArrayList;
import java.util.Random;

class GestioneTowerDefense {  
    //attributi
    ArrayList<Torre> torri;
    ArrayList<Nemico> nemici;
    int numeroOndata;
    int vite;
    int monete;
    Random rand;

    //costruttore
    public GestioneTowerDefense(){
        this.torri = new ArrayList<Torre>();
        this.nemici = new ArrayList<Nemico>();
        this.numeroOndata = 0;
        this.vite = 3;
        this.monete = 220;
        this.rand = new Random();
    }

    //getter
    public ArrayList<Torre> getTorri() {
        return this.torri;
    }
    public ArrayList<Nemico> getNemici() {
        return this.nemici;
    }
    public int getNumeroOndata() {
        return this.numeroOndata;
    }
    public int getVite() {
        return this.vite;
    }
    public int getMonete() {
        return this.monete;
    }

    //setter
    public void setNumeroOndata(int numeroOndata) {
        this.numeroOndata = numeroOndata;
    }
    public void setVite(int vite) {
        this.vite = vite;
    }
    public void setMonete(int monete) {
        this.monete = monete;
    }
    

}