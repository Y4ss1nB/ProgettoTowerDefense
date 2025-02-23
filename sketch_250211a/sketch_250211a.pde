GestioneLogicaTowerDefense gestioneLogicaTowerDefense;

void setup(){
  size(800, 600);
  gestioneLogicaTowerDefense = new GestioneLogicaTowerDefense();
}

void draw(){
 background(0, 51, 0);
  gestioneLogicaTowerDefense.proseguimentoGioco();
  gestioneLogicaTowerDefense.display();
  
  //stampo scritta game over
  if(gestioneLogicaTowerDefense.getVite()<= 0){
    textAlign(CENTER, CENTER);
    textSize(105);
    fill(255, 255, 0); 
    text("GAME OVER", width / 2, height / 4); 
  }

}

void mousePressed(){
  gestioneLogicaTowerDefense.posizionaTorreConMouse();
}
