void setup() {
  size(500, 500);
  background(200); // Fondo gris
  stroke(0, 0, 255); // Color azul
  fill(255, 0, 0); // Color rojo para los puntos
  
  int numEscalones = height / 20; // Calculamos el número de escalones basado en la altura del lienzo
  int anchoEscalon = width / numEscalones; // Calculamos el ancho de cada escalón
  
  // Dibujar escalera con líneas azules y puntos rojos en las puntas de los escalones
  for (int i = 0; i < numEscalones; i++) {
    // Coordenadas de inicio y fin de cada escalón
    float x1 = 0;
    float y1 = (i + 1) * 20;
    float x2 = (i + 1) * anchoEscalon;
    float y2 = (i + 1) * 20;
    
    // Dibujar línea horizontal en el borde superior del escalón
    line(x1, y1, x2, y1);
    
    // Dibujar línea vertical en el borde derecho del escalón
    line(x2, y1, x2, y2 + 20);
    
    // Dibujar puntos rojos en las puntas de los escalones
    ellipse(x2, y1, 9,9); // Punto rojo en la punta derecha del escalón
  }
}
