abstract class Torre {

    //attributi
    protected float x;
    protected float y;
    protected int raggioAzioneSparo;
    protected float tempoRicaricaSparo;
    protected int tempoAttesaPerSparare;
    
  public Torre(float x, float y, int raggioAzioneSparo, float tempoRicaricaSparo, int tempoAttesaPerSparare) {
    this.x = x;
    this.y = y;
    this.raggioAzioneSparo = raggioAzioneSparo;
    this.tempoRicaricaSparo = tempoRicaricaSparo;
    this.tempoAttesaPerSparare = tempoAttesaPerSparare;
  }

  //getter
  public float getX() {
    return this.x;
  }
  public float getY() {
    return this.y;
  }
  public int getRaggioAzioneSparo() {
    return this.raggioAzioneSparo;
  }
  public float getTempoRicaricaSparo() {
    return this.tempoRicaricaSparo;
  }
  public int getTempoAttesaPerSparare() {
    return this.tempoAttesaPerSparare;
  }

  //setter
  public void setX(float x) {
    this.x = x;
  }
  public void setY(float y) {
    this.y = y;
  }
  public void setRaggioAzioneSparo(int raggioAzioneSparo) {
    this.raggioAzioneSparo = raggioAzioneSparo;
  }
  public void setTempoRicaricaSparo(float tempoRicaricaSparo) {
    this.tempoRicaricaSparo = tempoRicaricaSparo;
  }
  public void setTempoAttesaPerSparare(int tempoAttesaPerSparare) {
    this.tempoAttesaPerSparare = tempoAttesaPerSparare;
  }


    
}
