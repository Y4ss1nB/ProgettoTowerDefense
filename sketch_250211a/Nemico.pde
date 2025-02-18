abstract class Nemico {
    //attributi
    protected float x;
    protected float y;
    protected float velocita;
    protected float vita;
    protected int valoreNemico;

    //costruttore
    public Nemico(float x, float y, float velocita, float vita, valoreNemico){
        this.x = x;
        this.y = y;
        this.velocita = velocita;
        this.vita = vita;
        this.valoreNemico = valoreNemico
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
    public int setValoreNemico(int valoreNemico) {
        this.valoreNemico = valoreNemico;
    }

    public void dannoNemico(float danno){
        vita = vita - danno;
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
