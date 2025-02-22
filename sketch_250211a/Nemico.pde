abstract class Nemico {
    //attributi
    protected float x;
    protected float y;
    protected float velocita;
    protected float vita;
    protected int valoreNemico;
    protected int posizioneNemicoNelPercorso;

    //costruttore
    public Nemico(float x, float y, float velocita, float vita, int valoreNemico){
        this.x = x;
        this.y = y;
        this.velocita = velocita;
        this.vita = vita;
        this.valoreNemico = valoreNemico
        this.posizioneNemicoNelPercorso = 0;
    }

    //getter
    public float getX() {
        return this.x;
    }
    public float getY() {
        return this.y;
    }
    public float getVelocita() {
        return this.velocita;
    }
    public float getVita() {
        return this.vita;
    }
    public int getValoreNemico() {
        return this.valoreNemico;
    }
    public int getPosizioneNemicoNelPercorso(){
        return this.posizioneNemicoNelPercorso;
    }
    
    //setter
    public void setX(float x) {
        this.x = x;
    }
    public void setY(float y) {
        this.y = y;
    }
    public void setVelocita(float velocita) {
        this.velocita = velocita;
    }
    public void setVita(float vita) {
        this.vita = vita;
    }
    public void setValoreNemico(int valoreNemico) {
        this.valoreNemico = valoreNemico;
    }
    public void setPosizioneNemicoNelPercorso(int posizioneNemicoNelPercorso){
        this.posizioneNemicoNelPercorso = posizioneNemicoNelPercorso;
    }

    public void dannoNemico(float danno){
        vita = vita - danno;
    }

    //metodo per far spostare il nemico sul sentiero
    public void muoviNemico(){
        if (this.getPosizioneNemicoNelPercorso() == 0) {
            this.x+= this.getVelocita();
            if (this.getX() >= 200) {
                this.setPosizioneNemicoNelPercorso(1);
            }
        }else if (this.getPosizioneNemicoNelPercorso() == 1) {
            this.y -= this.getVelocita();
            if (this.getY() <= height/2 - 80) {
                this.setPosizioneNemicoNelPercorso(2);
            }
        }else if (this.getPosizioneNemicoNelPercorso() == 2) {
            this.x += this.getVelocita();
            if (this.getX() >= 400) {
                this.setPosizioneNemicoNelPercorso(3);
            }
        }else if (this.getPosizioneNemicoNelPercorso() == 3) {
            this.y += this.getVelocita();
            if (this.getY() >= height/2) {
                this.setPosizioneNemicoNelPercorso(4);
            }
        }else{
            this.x += this.getVelocita();
        }
    }

    public boolean isNemicoMorto(){
        if (this.getVita() <= 0) {
            return true;
        }
        return false;
    }

    public boolean hasNemicoRaggiuntoFine(){
        return (x > width);
    }


    public abstract void display();

}
