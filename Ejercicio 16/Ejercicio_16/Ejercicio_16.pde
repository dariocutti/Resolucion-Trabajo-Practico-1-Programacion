float fahrenheit; 
float celsius; 

void setup() {
  size(400, 200);
  background(255);
  
  pedirTemperatura();
  
  convertirACelsius();
  
  mostrarResultado();
}

void draw() {
}

void pedirTemperatura() {
  fahrenheit = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa la temperatura en grados Fahrenheit:"));
}

void convertirACelsius() {
  celsius = (fahrenheit - 32) * 5 / 9;
}

void mostrarResultado() {
  println("La temperatura equivalente en grados Celsius es: " + celsius);
}
