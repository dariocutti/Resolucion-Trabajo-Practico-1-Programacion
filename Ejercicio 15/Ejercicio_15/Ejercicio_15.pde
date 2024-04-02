float numero1; 
float numero2; 
float suma; 
float resta; 
float multiplicacion; 
float division;

void setup() {
  size(400, 200);
  background(255);
  
  pedirNumeros();
  
  calcularOperaciones();
  
  mostrarResultados();
}

void draw() {
}

void pedirNumeros() {
  numero1 = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa el primer número:"));
  numero2 = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa el segundo número:"));
}

void calcularOperaciones() {
  suma = numero1 + numero2;
  
  resta = numero1 - numero2;
  
  multiplicacion = numero1 * numero2;
  
  if (numero2 != 0) {
    division = numero1 / numero2;
  } else {
    division = 0; 
  }
}

void mostrarResultados() {
  println("Suma: " + suma);
  println("Resta: " + resta);
  println("Multiplicación: " + multiplicacion);
  println("División: " + division);
}
