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
}
