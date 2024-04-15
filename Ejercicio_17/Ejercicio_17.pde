float x1 = 1; // Posición de Link en x
float y1 = 1; // Posición de Link en y
float x2 = 2; // Posición del tesoro en x
float y2 = 4; // Posición del tesoro en y

void setup() {
  size(600, 400); // Tamaño de la pantalla
}

void draw() {
  background(255); // Fondo blanco
  
  // Calcular distancia entre Link y el tesoro usando Pitágoras
  float distancia = dist(x1, y1, x2, y2);
  
  // Mover el círculo de Link con el cursor del mouse
  x1 = mouseX / 100.0; // Convertir posición del mouse a la escala del programa
  y1 = mouseY / 100.0; // Convertir posición del mouse a la escala del programa
  
  // Dibujar Link (círculo)
  fill(0, 0, 255); // Color azul
  ellipse(x1 * 100, y1 * 100, 30, 30); // Círculo centrado en (x1, y1) con diámetro 30
  
  // Dibujar tesoro (cuadrado)
  fill(255, 255, 0); // Color amarillo
  rectMode(CENTER); // El punto de referencia del rectángulo es el centro
  rect(x2 * 100, y2 * 100, 30, 30); // Cuadrado centrado en (x2, y2) con lado 30
  
  // Mostrar la distancia en la pantalla
  fill(0); // Color negro
  textSize(20);
  text("Distancia: " + distancia, 20, 30); // Mostrar distancia en la esquina superior izquierda
}
