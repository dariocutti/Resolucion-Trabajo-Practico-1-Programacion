float a, b, c;
float delta;
float raiz1, raiz2;

void setup() {
  a = float(javax.swing.JOptionPane.showInputDialog("Ingrese el coeficiente a:"));
  b = float(javax.swing.JOptionPane.showInputDialog("Ingrese el coeficiente b:"));
  c = float(javax.swing.JOptionPane.showInputDialog("Ingrese el coeficiente c:"));
  
  delta = b * b - 4 * a * c;
  
  if (delta > 0) {
    raiz1 = (-b + sqrt(delta)) / (2 * a);
    raiz2 = (-b - sqrt(delta)) / (2 * a);
    println("Las raíces son reales y distintas:");
    println("Raíz 1: " + raiz1);
    println("Raíz 2: " + raiz2);
  } else if (delta == 0) {
    
    raiz1 = -b / (2 * a);
    println("Las raíces son reales e iguales:");
    println("Raíz: " + raiz1);
  } else {
    
    float parteReal = -b / (2 * a);
    float parteImaginaria = sqrt(-delta) / (2 * a);
    println("Las raíces son complejas y conjugadas:");
    println("Raíz 1: " + parteReal + " + " + parteImaginaria + "i");
    println("Raíz 2: " + parteReal + " - " + parteImaginaria + "i");
  }
}
