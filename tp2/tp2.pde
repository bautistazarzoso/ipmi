PImage fondo;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;

PFont miFuente;
PFont miFuente2;

int pantalla = 1;

int tiempoCambio = 7000;
int tiempoUltimo = 0;

int Texto = 500;
int Texto2 = -100;

void setup() {

  size(640, 480);

  fondo = loadImage("inicioJuego.jpg");
  fondo2 = loadImage("fotoJuego1.jpg");
  fondo3 = loadImage("fotoJuego2.jpg");
  fondo4 = loadImage("fotoJuego3.jpg");
  fondo5 = loadImage("play again.jpg");

  miFuente = loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  miFuente2 = loadFont("TimesNewRomanPS-BoldItalicMT-48.vlw");

  textFont(miFuente);
}

void draw() {
  if (millis() - tiempoUltimo > tiempoCambio) {

    if (pantalla < 5) {
      pantalla = pantalla + 1;
      tiempoUltimo = millis();
      Texto = 500;
      Texto2 = -100;
    }
  }
  if (Texto > 390) {
    Texto = Texto - 2;
  }
    if (Texto2 < 50) {
      Texto2 = Texto2 + 2;
  }

  if (pantalla == 1) {
    image(fondo, 0, 0, 640, 480);
    textFont(miFuente);
    textAlign(CENTER);
    textSize(35);
    fill(255);
    text(" ¿Sabés qué es un juego? ", 320, Texto);
  }
  
  if (pantalla == 2) {
    image(fondo2, 0, 0, 640, 480);
    textFont(miFuente2);
    textAlign(CENTER);
    textSize(23);
    fill(255);
    text(" Sirve como manera de", 320, Texto2);
    text("poder desconectarse del", 320, Texto2 + 30);
    text("mundo real ", 320, Texto2 + 60);
  }

  if (pantalla == 3) {
    image(fondo3, 0, 0, 640, 480);
    textFont(miFuente2);
    textAlign(CENTER);
    textSize(25);
    fill(0);
    text(" Es donde la imaginación", 320, Texto);
   text("puede superar cualquier límite ", 320, Texto + 30);
  }

  if (pantalla == 4) {
    image(fondo4, 0, 0, 640, 480);
    textFont(miFuente2);
    textAlign(CENTER);
    textSize(20);

    fill(255);
    text(" Donde uno puede ser libre", 320, Texto);
    text("dentro de miles de mundos", 320, Texto + 30);
    text("siempre distintos ", 320, Texto + 60);
  }

  if (pantalla == 5) {
    image(fondo5, 0, 0, 640, 480);
    textFont(miFuente2);
    textAlign(CENTER);
    textSize(25);
    fill(0);
    text(" Entonces, si no se entendió... ", 320, Texto - 150);

  }
}


void mousePressed() {
  if (pantalla == 5) {
    if (mouseX > 278 && mouseX < 345 && mouseY > 357 && mouseY < 378) {
      pantalla = 1;
      tiempoUltimo = millis();
      Texto = 500;
    }
  }
}
  
