class TorreBlu extends Torre{
    public TorreBlu(float x, float y, int raggioAzioneSparo, float tempoRicaricaSparo, float potenzaColpo){
        super(x, y, raggioAzioneSparo, tempoRicaricaSparo, potenzaColpo);
    }

    public void display(){
        fill(0, 0, 255);
        ellipse(x, y, 20, 20);
    }

}
