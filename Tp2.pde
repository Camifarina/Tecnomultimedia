
//VARIABLES
int an1;
int an2;
int alto;
float a;


void setup() {
  size (400, 400);

  an1 = 100;
  an2 = 80;
  alto = 60;
  a = 1;
}

void draw() {

  float n = map (mouseX, 0, width, 0, 255);  //de negro a blanco
  float b = map (mouseX, 0, width, 255, 0);  // de balnco a negro
  background (b);
  Figura(width/2, height/2, n, a++);
}

void Figura (float x, float y, float relleno, float opacidad) {

  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 24; i++) {
    rotate(PI/5); 
    fill(0, opacidad);
    arc(width/2 - 75, 0, an1, alto, radians(0), radians(180), CHORD);
    fill(255, opacidad);
    arc(width/2 - 75, 0, an1, alto, radians(180), radians(360), CHORD);
  }

  for (int i = 0; i < 24; i++) {
    rotate(PI/5); 
    noStroke();
    fill(relleno, opacidad);
    ellipse(width/2 - 75, 0, an2, alto - 20);
  }
  popMatrix();
}

void keyPressed() {
  if (key == ' ') {
    a = 1;
  }
}
