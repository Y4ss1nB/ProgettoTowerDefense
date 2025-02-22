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

    public void posizionaTorreConMouse(){
        float xCliccato = mouseX;
        float yCliccato = mouseY;

        int costoTorreRossa = 20;
        int costoTorreVerde = 60;
        int costoTorreBlu = 100;

        int raggioAzioneSparoTorre = 0;
        float tempoRicaricaSparoTorre = 0;
        float potenzaColpoTorre = 0;

        if (key == '1' && this.getMonete() >= costoTorreRossa) {

            raggioAzioneSparoTorre = 100;
            tempoRicaricaSparoTorre = 1;
            potenzaColpoTorre = 1;

            Torre torreRossa = new TorreRossa(xCliccato, yCliccato, raggioAzioneSparoTorre, tempoRicaricaSparoTorre, potenzaColpoTorre);
            this.torri.add(torreRossa);

            this.monete -= costoTorreRossa;

        }else if (key == '2' && this.getMonete() >= costoTorreVerde) {

            raggioAzioneSparoTorre = 120;
            tempoRicaricaSparoTorre = 1.5;
            potenzaColpoTorre = 1.5;

            Torre torreVerde = new TorreVerde(xCliccato, yCliccato, raggioAzioneSparoTorre, tempoRicaricaSparoTorre, potenzaColpoTorre);
            this.torri.add(torreVerde);

            this.monete -= costoTorreVerde;

        }else if (key == '3' && this.getMonete() >= costoTorreBlu) {
            raggioAzioneSparoTorre = 60;
            tempoRicaricaSparoTorre = 1.5;
            potenzaColpoTorre = 2;

            Torre torreBlu = new torreBlu(xCliccato, yCliccato, raggioAzioneSparoTorre, tempoRicaricaSparoTorre, potenzaColpoTorre);
            this.torri.add(torreBlu);

            this.monete -= costoTorreBlu;
        }
    }
    

}