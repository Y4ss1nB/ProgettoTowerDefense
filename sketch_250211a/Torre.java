import java.util.ArrayList;

abstract class Torre {

  //attributi
  protected float x;
  protected float y;
  protected int raggioAzioneSparo;
  protected float tempoRicaricaSparo;
  protected float tempoAttesaPerSparare;
  protected float potenzaColpo;
    
  public Torre(float x, float y, int raggioAzioneSparo, float tempoRicaricaSparo, float tempoAttesaPerSparare, float potenzaColpo) {
    this.x = x;
    this.y = y;
    this.raggioAzioneSparo = raggioAzioneSparo;
    this.tempoRicaricaSparo = tempoRicaricaSparo;
    this.tempoAttesaPerSparare = tempoAttesaPerSparare;
    this.potenzaColpo = potenzaColpo;
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
  public float getTempoAttesaPerSparare() {
    return this.tempoAttesaPerSparare;
  }
  public float getPotenzaColpo() {
      return this.potenzaColpo;
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
  public void setTempoAttesaPerSparare(float tempoAttesaPerSparare) {
    this.tempoAttesaPerSparare = tempoAttesaPerSparare;
  }
  public void setPotenzaColpo(float potenzaColpo) {
      this.potenzaColpo = potenzaColpo;
  }

  //metodo per cercare i nemici che hanno x o y comune alla torre e spararli
  public void cercaNemicoNellArea(ArrayList<Nemico> nemici){
    tempoAttesaPerSparare--;
    if (this.getTempoAttesaPerSparare() <= 0) {
      for (Nemico nemico : nemici) {
        if (this.getX() == nemico.getX() || this.getY() == nemico.getY()) { // se il nemico è su stessa x o y la torre gli spara
          this.spara(nemico);
          tempoAttesaPerSparare = tempoRicaricaSparo;
          break;
        }
      }
    }
  }

  //metodo che fa danno ad un nemico 
  public void spara(Nemico nemico){
    nemico.dannoNemico(potenzaColpo);
  }

  public abstract void display();
    
}
