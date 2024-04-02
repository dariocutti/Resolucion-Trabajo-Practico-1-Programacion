float x1, y1;
float x2, y2;
float distancia;
boolean juegoTerminado = false;

void setup() {
  size(400, 400);
  x1 = width/2;
  y1 = height/2;
  x2 = random(width);
  y2 = random(height);
}

void draw() {
  background(255);
  
  dibujarLink();
  
  dibujarPowerUp();
  
  calcularDistancia();
  
  fill(0);
  textSize(16);
  text("Link: (" + x1 + ", " + y1 + ")", 10, 20);
  
  if (distancia <= 15 && !juegoTerminado) {
    fill(255, 0, 0);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("¡Ganaste!", width/2, height/2);
    juegoTerminado = true;
  }
  
  if (!juegoTerminado) {
    moverLink();
  }
}

void dibujarLink() {
  fill(0, 0, 255);
  ellipse(x1, y1, 30, 30);
}

void dibujarPowerUp() {
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(x2, y2, 30, 30);
}

void calcularDistancia() {
  distancia = dist(x1, y1, x2, y2);
}

void moverLink() {
  x1 = mouseX;
  y1 = mouseY;
}
