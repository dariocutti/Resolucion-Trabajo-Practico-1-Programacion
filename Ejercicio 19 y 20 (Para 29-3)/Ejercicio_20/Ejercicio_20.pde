void setup() {
  size(440, 420);
  background(200);
  strokeWeight(1);
  fill(255, 0, 0);
  
  int anchoRect = 40;
  int altoRect = 20;
  int distanciaX = 20;
  int distanciaY = 20;
  
  int ladrillosPorLinea = 7;
  int lineas = 10;
  
  int separacionVertical = (height - (altoRect * lineas + distanciaY * (lineas - 1))) / 2;
  
  for (int i = 0; i < lineas; i++) {
    for (int j = 0; j < ladrillosPorLinea; j++) {
      int x = (width - (anchoRect * ladrillosPorLinea + distanciaX * (ladrillosPorLinea - 1))) / 2 + j * (anchoRect + distanciaX);
      int y = separacionVertical + i * (altoRect + distanciaY);
      rect(x, y, anchoRect, altoRect);
    }
  }
}

void draw() {
}
