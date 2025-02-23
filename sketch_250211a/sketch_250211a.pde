GestioneLogicaTowerDefense gestioneLogicaTowerDefense;

void setup(){
  size(800, 600);
  gestioneLogicaTowerDefense = new GestioneLogicaTowerDefense();
}

void draw(){
 background(0, 51, 0);
  
  gestioneLogicaTowerDefense.proseguimentoGioco();
  gestioneLogicaTowerDefense.display();
}

void mousePressed(){
  gestioneLogicaTowerDefense.posizionaTorreConMouse();
}
