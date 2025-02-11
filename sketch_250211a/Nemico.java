public abstract class Nemico {
    //attributi
    protected float x;
    protected float y;
    protected float velocita;
    protected float vita;

    //costruttore
    public Nemico(float x, float y, float velocita, float vita){
        this.x = x;
        this.y = y;
        this.velocita = velocita;
        this.vita = vita;
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
}