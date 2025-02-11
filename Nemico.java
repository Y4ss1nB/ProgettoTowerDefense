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
    
}