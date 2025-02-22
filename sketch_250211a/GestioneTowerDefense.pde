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

    public boolean isTorreRispettanteParametriPosizione(float xTorre, float yTorre){
        int distanzaMinimaTraTorri = 30;
        //controllo se la torre è sul sentiero
        if ((xTorre >= 0 && xTorre <= 200 && yTorre >= height / 2 - 20 && yTorre <= height / 2 + 20) || 
            (xTorre >= 180 && xTorre <= 220 && yTorre >= height / 2 - 100 && yTorre <= height / 2 + 20) || 
            (xTorre >= 180 && xTorre <= 380 && yTorre >= height / 2 - 100 && yTorre <= height / 2 - 60) || 
            (xTorre >= 380 && xTorre <= 420 && yTorre >= height / 2 - 100 && yTorre <= height / 2 + 20) || 
            (xTorre >= 380 && xTorre <= width && yTorre >= height / 2 - 20 && yTorre <= height / 2 + 20)) { 
            return false; //in caso la torre sia sul sentiero ritorna false ovvero che è falso che la torre rispetta il parametro
        }

        for (Torre torre : this.torri) {
            if (dist(xTorre, yTorre, torre.getX(), torre.getY()) < distanzaMinimaTraTorri) {
                return false; // in caso la torre sia più vicina di 30 ad un altra torre allora il parametro non è rispettato
            }
        }

        return true; //se i due parametri di prima sono rispettati allora la torre può essere posizionata
    }

    //metodo per posizionare la torre tramite mouse
    public void posizionaTorreConMouse(){
        float xCliccato = mouseX;
        float yCliccato = mouseY;

        int costoTorreRossa = 20;
        int costoTorreVerde = 60;
        int costoTorreBlu = 100;

        int raggioAzioneSparoTorre = 0;
        float tempoRicaricaSparoTorre = 0;
        float potenzaColpoTorre = 0;

        if (this.isTorreRispettanteParametriPosizione()) {
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

    public void creaOndata(){
        int numeroNemici = Ondata*3 //ad ogni ondata ci sranno un numero di nemici equivalente al triplo del numero dell'ondata
        int tipoNemico = rand.nextInt(3);

        float vita = 0;;
        float velocita = 0;
        float valoreNemico = 0;
        int xNemico = 0;

        for (int i = 0; i < numeroNemici; ++i) {
            xNemico = -i*40; //distanza 40 pixel tra una torre e l'altra alla partenza
            if (tipoNemico == 0) {

                velocita = 2;
                vita = 3;
                valoreNemico = 15;

                NemicoArancione nemicoArancione = new NemicoArancione(xNemico, height/2, velocita, vita, valoreNemico);
                this.nemici.add(nemicoArancione);

            }else if (tipoNemico == 1) {
                velocita = 1.5;
                vita = 4;
                valoreNemico = 30;

                NemicoViola nemicoViola = new NemicoViola(xNemico, height/2, velocita, vita, valoreNemico);
                this.nemici.add(nemicoViola);

            }else if (tipoNemico == 2) {
                velocita = 1;
                vita = 6;
                valoreNemico = 50;

                NemicoNero nemicoNero = new NemicoNero(xNemico, height/2, velocita, vita, valoreNemico);
                this.nemici.add(nemicoNero);
            }
        }
    }
    

}