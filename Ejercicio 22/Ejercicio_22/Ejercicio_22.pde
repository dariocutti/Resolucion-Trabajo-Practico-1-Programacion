void setup() {
  size(600, 600); // Tamaño del lienzo
  
  int totalLineas = 15; // Número total de líneas
  int alturaFranja = height / totalLineas; // Altura de cada franja
  
  background(128, 128, 128); // Fondo blanco
  
  // Dibujar líneas y círculos
  for (int i = 0; i < totalLineas; i++) {
    if (i % 2 == 0) {
      stroke(0, 0, 255); // Color azul para las líneas
      int y = i * alturaFranja - 15; // Posición y de los círculos
      line(0, i * alturaFranja, width, i * alturaFranja); // Dibujar línea
      
      // Dibujar círculos solo en las líneas impares
      if (i % 4 != 2) {
        drawCircles(y, alturaFranja); // Dibujar círculos en la línea actual
      }
    }
  }
}

// Función para dibujar círculos en la línea dada
void drawCircles(int y, int alturaFranja) {
  int x = alturaFranja / 2; // Coordenada x inicial del primer círculo
  while (x < width) {
    fill(random(255), random(255), random(255)); // Color aleatorio para los círculos
    ellipse(x, y, 30, 30); // Dibujar círculo
    x += alturaFranja; // Incrementar la coordenada x para el siguiente círculo
  }
}
