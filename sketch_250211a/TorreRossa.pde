class TorreRossa extends Torre{

    //costruttore
    public TorreRossa(float x, float y, int raggioAzioneSparo, float tempoRicaricaSparo, float potenzaColpo){
        super(x, y, raggioAzioneSparo, tempoRicaricaSparo, potenzaColpo);
    }
    
    public void display(){
        fill(255, 0, 0);
        rect(x - 10, y - 10, 20, 20);
    }
}
