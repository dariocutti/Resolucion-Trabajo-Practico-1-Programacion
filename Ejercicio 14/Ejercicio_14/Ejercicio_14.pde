float cateto1; 
float cateto2; 
float hipotenusa; 

void setup() {
  size(400, 200);
  background(255);
  
  pedirCateto1();
  pedirCateto2();
  
  calcularHipotenusa();
  
  println("La longitud de la hipotenusa es: " + hipotenusa);
}

void draw() {
}

void pedirCateto1() {
  cateto1 = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa la longitud del primer cateto:"));
}

void pedirCateto2() {
  cateto2 = float(javax.swing.JOptionPane.showInputDialog("Por favor, ingresa la longitud del segundo cateto:"));
}

void calcularHipotenusa() {
  hipotenusa = sqrt(pow(cateto1, 2) + pow(cateto2, 2));
}
