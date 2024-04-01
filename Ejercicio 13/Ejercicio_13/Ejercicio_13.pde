float base;
float altura;
float perimetro;
float area;

void setup() {
  size(400, 200);
  background(255);
  
  pedirBase();
  pedirAltura();
  
  calcularPerimetro();
  calcularArea();
  
  println("El perímetro del rectángulo es: " + perimetro);
  println("El área del rectángulo es: " + area);
}

void draw() {
}

void pedirBase() {
  base = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa la base del rectángulo:"));
}

void pedirAltura() {
  altura = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa la altura del rectángulo:"));
}

void calcularPerimetro() {
  perimetro = 2 * (base + altura);
}

void calcularArea() {
  area = base * altura;
}
