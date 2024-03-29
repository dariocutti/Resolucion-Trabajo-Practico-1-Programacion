PVector puntoInicialLinea;
PVector puntoFinalLinea;
PVector velocidadLinea;

PVector centroCirculo;
float diametroCirculo = 40;
PVector velocidadCirculo;

void setup() {
  size(400, 400);
  puntoInicialLinea = new PVector(0, height / 2);
  puntoFinalLinea = new PVector(width, height / 2);
  velocidadLinea = new PVector(0, 1);
  
  centroCirculo = new PVector(width / 2, height / 2);
  velocidadCirculo = new PVector(0, 1);
}

void draw() {
  background(0);
  dibujarLinea();
  desplazarLinea();
  dibujarCirculo();
  desplazarCirculo();
}

void dibujarLinea() {
  stroke(0, 255, 0);
  line(puntoInicialLinea.x, puntoInicialLinea.y, puntoFinalLinea.x, puntoFinalLinea.y);
}

void desplazarLinea() {
  puntoInicialLinea.add(velocidadLinea);
  puntoFinalLinea.add(velocidadLinea);
  
  if (puntoInicialLinea.y >= height || puntoInicialLinea.y <= 0) {
    velocidadLinea.y *= -1;
  }
}

void dibujarCirculo() {
  fill(0, 255, 0);
  ellipse(centroCirculo.x, centroCirculo.y, diametroCirculo, diametroCirculo);
}

void desplazarCirculo() {
  centroCirculo.y = (puntoInicialLinea.y + puntoFinalLinea.y) / 2 + (velocidadLinea.y > 0 ? 1 : -1) * diametroCirculo / 2;
}
