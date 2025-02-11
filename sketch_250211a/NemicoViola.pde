public class NemicoViola extends Nemico{

    public NemicoViola(float x, float y, float velocita, float vita){
        super(x, y, velocita, vita);
    }

    void display() {
        fill(128, 0, 128);
        beginShape();
        vertex(x, y - 10);
        vertex(x + 10, y);
        vertex(x, y + 10);
        vertex(x - 10, y);
        endShape(CLOSE);
    }
    
}
