String nombre; // Variable para almacenar el nombre ingresado por el usuario

void setup() {
  size(400, 200);
  background(255);
  
  // Llamamos a la función para pedir el nombre al usuario
  pedirNombre();
  
  // Llamamos a la función para presentar el saludo
  presentarSaludo(nombre);
}

void draw() {
  // No se necesita en este caso
}

void pedirNombre() {
  // Solicitamos al usuario que ingrese su nombre
  nombre = javax.swing.JOptionPane.showInputDialog("Por favor, ingresa tu nombre:");
}

void presentarSaludo(String nombre) {
  // Presentamos en pantalla un saludo utilizando el nombre proporcionado por el usuario
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("¡Hola " + nombre + "! Bienvenido(a) a Processing.", width/2, height/2);
}
