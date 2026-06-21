//Bautista Zarzoso COMISION 2
//https://youtu.be/6tzYslXxJYI


PImage OpArt;
boolean efecto = false;


void setup () {
  size (800, 400);

  OpArt = loadImage ("OpArt.jpg");
}

void draw() {
  background(96, 148, 144);


  image(OpArt, 0, 0, 400, 400);
  
 
  fill(199, 55, 28);
  noStroke();                            //cuadrado rojo
  rect(535, 135, 135, 135);




  stroke(0);
  strokeWeight(3);

  for (int i = 427; i < 800; i += 27) {
    line(i, 0, i, 400);
  }                                             //lineas

  for (int j = 27; j < 400; j += 27) {
    line(400, j, 800, j);
  }




  for (int i = 427; i <= 800; i += 27) {
    for (int j = 27; j <= 400; j += 27) {    //rombos
      
     
      pushMatrix();
      translate(i, j);   //pasado a 0 por el traslate
      
      
      float angulo = map(mouseX, 0, 800, 0, 3);
      rotate(angulo);

      fill(0);
      noStroke();                                                   
      quad(0, -10, 10, 0, 0, 10, -10, 0);                            


      stroke(255);
      strokeWeight(5);
      

      float largo = distancia(i, j);
      
      if (i >= 535 && i <= 670 && j >= 135 && j <= 270) {
        if (efecto == false) {
          line(-largo, -largo, largo, largo); 
        } else {
          line(-largo, largo, largo, -largo); 
        }
      } else {        
        
        if (efecto == false) {
          line(-largo, largo, largo, -largo); 
        } else {
          line(-largo, -largo, largo, largo); 
        }
      }
      
      popMatrix();            
    }
  }
}

float distancia (float posI, float posJ) {
  float d = dist(mouseX, mouseY, posI, posJ);             //para medir distancia de mouse
  if (d < 50) {
    return 2;        // si el mouse pasa cerca, la linea se achica un poco
  } else {
    return 4;        // si no
  }
}

                 
void keyPressed() {
  if (key == ' ') {
    efecto = !efecto;    //interruptor para cambiar de direccion
  }
  
  
  if (key == 'r' ) {
    efecto = false;
  }
}
