/*
  TRABAJO PRÁCTICO NRO 3
 
 Alumna: Camila Fariña
 Nro de legajo: 91350/1
 
 Link de video explicativo: https://youtu.be/ZITBDMv2IDI
 */

String estado;
PImage fondo, topo;
PFont letra1, letra2;
color marron;
int cant, tam, j, p, tam2, posX, posY, click, tiempo;
String [] texIn;
String [] texC;

void setup() {
  size(600, 500);
  background (255);
  textAlign(CENTER, CENTER);
  colorMode(RGB);

  fondo = loadImage("fondo_tierra.jpg");
  topo = loadImage("topo.png");
  letra1 = createFont("Soft Marshmallow.otf", 85);
  letra2 = createFont("Black.otf", 25);
  marron = color(167, 130, 85);
  cant = 100;
  estado = "home";
  tam = width / cant ;
  j = 1; 
  p = 1;
  tam2 = 100;
  posX = 0;
  posY = 0;
  click = 0;
  tiempo = 0;
  texIn = loadStrings ("instrucciones.txt");
  texC = loadStrings ("creditos.txt");
}

void draw() {

  if (estado.equals("home")) {
    image(fondo, 0, 0, width, height);

    //BOTÓN

    pushStyle();
    rectMode(CENTER);
    fill(marron, 100);
    stroke(255);
    strokeWeight(4);
    rect (width/2, height/2 + 90, 200, 70);
    popStyle();

    //TEXTO
    fill (255);
    textFont (letra1);
    text ("Topos Locos", width/2, height/2 - 80);
    textSize (60);
    text ("Jugar", width/2, height/2 + 80);
  } else if (estado.equals("instrucciones")) {
    image(fondo, 0, 0, width, height);

    //TEXTO
    fill (255);
    textFont (letra1);
    textSize (60);
    text ("Instrucciones", width/2, 100);

    for (int i = 0; i <texIn.length; i++) {
      textFont (letra2);
      textSize(20);
      text (texIn[i], width/2, (i*40 + 200));
    }

    //BOTÓN
    if (dist(mouseX, mouseY, 500, 400) <= 40) {
      fill(255);
    }
    fill(marron, 100);
    stroke(255);
    strokeWeight(3);
    ellipse(500, 400, 80, 80);
    triangle(490, 380, 490, 420, 520, 400);
  } else if (estado.equals("juego")) {

    if ((j == 1) && (p == 1)) {
      topos();
      linterna();
    }

    tiempo++;
    if (tiempo >= 10*60) {
      estado = "perdiste";
    }

    //  println (click);
  } else if (estado.equals("perdiste")) {
    image(fondo, 0, 0, width, height);

    //BOTONES
    pushStyle();
    rectMode(CENTER);
    fill(marron, 100);
    stroke(255);
    strokeWeight(4);
    rect (170, 350, 210, 60);
    rect (430, 350, 150, 60);
    popStyle();

    //TEXTO
    fill (255);
    textFont (letra1);
    textSize (60);
    text ("¡Se acabó el tiempo!", width/2, 180);
    textSize(30);
    text ("Volver a jugar", 170, 345);
    text ("Créditos", 430, 345);
  } else if (estado.equals("ganaste")) {
    image(fondo, 0, 0, width, height);

    //BOTONES
    pushStyle();
    rectMode(CENTER);
    fill(marron, 100);
    stroke(255);
    strokeWeight(4);
    rect (170, 350, 210, 60);
    rect (430, 350, 150, 60);
    popStyle();

    //TEXTO
    fill (255);
    textFont (letra1);
    textSize (90);
    text ("¡Felicidades!", width/2, 150);
    textSize (40);
    text ("Lo lograste", width/2, 220);
    textSize(30);
    text ("Volver a jugar", 170, 345);
    text ("Créditos", 430, 345);
  } else if (estado.equals("creditos")) {
    image(fondo, 0, 0, width, height);

    //TEXTO
    fill (255);
    textFont (letra1);
    textSize (60);
    text ("Créditos", width/2, 100);

    for (int i = 0; i <texC.length; i++) {
      textFont (letra2);
      textSize(20);
      text (texC[i], width/2, (i*45 + 195));
    }

    fill(marron);
    textFont (letra2);
    textSize (15);
    text ("(Presionar la barra espaciadora para volver a inicio)", width/2, 450);
  }
}

void linterna() {

  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {
      float d = dist( i*tam, j*tam, mouseX, mouseY );
      float t = d*200/dist(100, 100, 0, 0);
      noStroke();
      fill( 0, t);
      rect( i*tam, j*tam, tam, tam );
    }
  }
}

void topos() {

  image(fondo, 0, 0, width, height);

  posX = floor(random(50, 550));
  posY = floor(random(50, 450));

  image (topo, posX, posY, tam2, tam2);

  p = 0;
}


void mousePressed() {
  if (estado.equals("instrucciones") && dist (mouseX, mouseY, 500, 400) <= 40) {
    estado = "juego";
  }

  if (estado.equals("home") && (mouseX>200 && mouseX<400 && mouseY>305 && mouseY<375)) {
    estado = "instrucciones";
  }
  if (estado.equals("perdiste") && (mouseX>65 && mouseX<275 && mouseY>320 && mouseY<380)) {
    estado = "juego";
    j = 1;
    p = 1;
    click = 0;
    tiempo = 0;
  }
  if (estado.equals("perdiste") && (mouseX>355 && mouseX<505 && mouseY>320 && mouseY<380)) {
    estado = "creditos";
  }
  if (estado.equals("ganaste") && (mouseX>65 && mouseX<275 && mouseY>320 && mouseY<380)) {
    estado = "juego";
    j = 1;
    p = 1;
    click = 0;
    tiempo = 0;
  }
  if (estado.equals("ganaste") && (mouseX>355 && mouseX<505 && mouseY>320 && mouseY<380)) {
    estado = "creditos";
  }

  //Condición para hacer click en los topos
  if (estado.equals("juego") && (j == 1) && (p == 0)) {
    p = 1;
    if ((mouseX>posX-tam2) && (mouseX<posX+tam2) && (mouseY>posY-tam2) && (mouseY<posY+tam2)) {
      click ++;
    }
    if (click == 5) {
      estado = "ganaste";
    }
  }
}

void keyPressed() {
  if (estado.equals("creditos") && (key == ' ')) {
    estado = "home";
    j = 1;
    p = 1;
    click = 0;
    tiempo = 0;
  }
}
