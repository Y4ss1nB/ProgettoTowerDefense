class TorreVerde extends Torre{
    //costruttore
    public TorreVerde(float x, float y, int raggioAzioneSparo, float tempoRicaricaSparo, float tempoAttesaPerSparare, float potenzaColpo){
        super(x, y, raggioAzioneSparo, tempoRicaricaSparo, tempoAttesaPerSparare, potenzaColpo);
    }

    public void display(){
        fill(0, 255, 0);
        triangle(x, y-10, x-10, y+10, x+10, y+10);
    }
}
