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

    //metodo per mostarre lo sfondo, il sentiero e le informazioni utili al giocatore
    public void display(){
        background(0, 128, 0);

        fill(150, 100, 150);
        rect(0, height/2 - 20, 200, 40);
        rect(180, height/2 - 100, 40, 120);
        rect(180, height/2 - 100, 200, 40);
        rect(380, height/2 - 100, 40, 120);
        rect(380, height/2 - 20, width - 380, 40);

        for (Torre torre : torri) {
            torre.display();
        }

        for (Nemico nemico : nemici) {
            nemico.display();
        }

        fill(0, 0, 255);
        textSize(14);
        text("Ondata: "+this.getNumeroOndata(), 10, 20);
        text("Vite: "+this.getVite(), 10, 40);
        text("Monete: "+this.getMonete, width - 100, 20);
    }
    

}