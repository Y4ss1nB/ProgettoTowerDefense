class NemicoArancione extends Nemico{

    public NemicoArancione(float x, float y, float velocita, float vita, int valoreNemico){
        super(x, y, velocita, vita, valoreNemico);
    }

    void display(){
        fill(255, 165, 0);
        beginShape();
        vertex(x, y - 10);
        vertex(x + 10, y);
        vertex(x, y + 10);
        vertex(x - 10, y);
        endShape(CLOSE);
    }
}
