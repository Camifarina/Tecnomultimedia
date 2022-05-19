//VARIABLES
PImage logo, peppa, george, mamaPig, papaPig, logo2, logoNick;
float y;
float posYPeppa, posYLogo, posYPasto, posXGeorge, posXMama, posXPapa;
int abajo, arriba;
boolean boton = mouseX > 517 && mouseX < 582 && mouseY > 317 && mouseY < 382;
PFont letra;
String creditos;
color cuadrado;


void setup() {
  size(600, 400);
  colorMode(RGB);
  background(166, 189, 234);
  textAlign(CENTER, CENTER);
  frameRate(80);

  //ASIGNACIÓN
  logo = loadImage("logo.png");
  peppa = loadImage("peppa.png");
  george = loadImage("george.png");
  mamaPig = loadImage("mamapig.png");
  papaPig = loadImage("papapig.png");
  logo2 = loadImage("logo2.png");
  logoNick = loadImage("logonick.png");
  posYPeppa= 135;
  posYLogo = height/2;
  letra = createFont("PeppaPig.ttf", 20);
  creditos = "created by \n Neville Astley & Mark Baker \n . \n producer \n Phil Davies \n . \n directed by \n Philip Hall & Joris Van Hulzen \n . \n Peppa     Harley Bird \n Narrator     John Sparkes \n Daddy Pig     Richard Ridings \n Mummy Pig     Morwenna Banks \n George     Oliver May & Alice May \n Grandpa Pig     David Graham \n Granny Pig     Frances White \n Suzy Sheep     Meg Hall \n  Miss Rabbit     Sarah Ann Kennedy \n Pedro Pony     Stanley Nickless \n Danny Dog     Jadon Mills \n Zoe Zebra     Sian Taylor \n Emily Elephant     Julia Moss \n Rebecca Rabbit     Alice May \n  Candy Cat     Zara Siddiqi \n  Freddy Fox     Jamie Oram \n Wendy Wolf     Chaniya Mahom \n Richard Rabbit     Zoe Baker \n Edmond Elephant     Jonny Butler \n Madame Gazelle     Morwenna Banks \n Granddad Dog     David Rintoul \n Mr Elephant     Andy Hamilton \n Mr Zebra the Postman     David Graham \n Mr Fox     John Sparkes \n Mr Wolf     Alexander Armstrong \n Mummy Sheep     Debbie McDonald \n Mrs Cow     Judy Flynn \n Baby Alexander     Minnie Kennedy-Parr \n . \n animation team leaders \n Nick Gibson     Nick Wade \n . \n animators \n Simon Bancroft     Oliver Brown \n Christian Chessell     Simona Ciraolo \n Rachel Bancroft     Richard James \n Richard Jones     Chris Mendham \n David Gray     Jim Nolan     James O´Shea \n Aaron Powell     Philippa Prosser \n Gideon Rigal     Will Rose     Tim Sanpher \n . \n editor \n Nathan Cubitt \n . \n assistant editor \n Tomas Gisby \n . \n writers \n Neville Astley     Mark Baker \n Philip Hall     Sam Morrison \n . \n senior layout artist \n James Butler \n . \n layout \n Kate Fortune Jones \n . \n design \n Manu Roig     Sarah Roper \n Alistair Douglas     Jemima Williams \n . \n colour \n Suk Baker \n  . \n music \n Julian Nott \n . \n additional music \n Tomas Gisby \n . \n additional music \n Gavin Courtie & Liz Radford \n . \n guitar \n Phil Davies \n . \n 'Peppa' song vocals \n Lily Snowden-Fine \n . \n . \n an Astley Baker Davies Ltd / Entertainment \n One Family production \n in association with Nick Jr. and Channel 5";
  cuadrado = color(255);
}

void draw() {
  background(166, 189, 234);
  noStroke();
  fill(139, 206, 147);
  rect(0, posYPasto, 600, 100);

  imageMode(CENTER);
  image(logo, width/2, posYLogo, 400, 190);
  image(peppa, 268, posYPeppa, 85, 115);
  image (george, posXGeorge, 290, 75, 85);
  image (mamaPig, posXMama, 240, 185, 200); 
  image (papaPig, posXPapa, 240, 190, 200);

  arriba = 770 - frameCount;
  abajo = frameCount/12;
  posYPeppa = posYPeppa + abajo;
  posYLogo = posYLogo - frameCount/6;
  posYPasto = height - frameCount;
  posXGeorge = 650 - frameCount;
  posXMama = frameCount;
  posXPapa = 800 - frameCount;
  y = 1150 - frameCount;

  if (posYPasto < 300) {
    posYPasto = 300;
  }
  if (posYPeppa > 280) {
    posYPeppa = 280;
  }
  if (posXGeorge < 350) {
    posXGeorge = 350;
  }
  if (posXMama > 150) {
    posXMama = 150;
  }
  if (posXPapa < 460) {
    posXPapa = 460;
  }
  if (arriba <= 0) {
    arriba = 0;
  }
  
  fill(cuadrado);
  rect(0, arriba, width, height);

  if ( y<= 350) {
    y = 350;
  }
  
  //botón play
  stroke(0);
  fill(255, 255, 255, 100);
  circle(550, y, 65);
  triangle(540, y+15, 540, y-15, 565, y);

  //TEXTO
  fill(255);
  textFont(letra);
  text (creditos, width/2, 2600 - frameCount);
  
  //Imagenes finales
  image (logo2, width/2, 4150 - frameCount, 158, 100);
  image (logoNick, width/2, 4250 - frameCount, 95, 25);
  
}

void mousePressed() {
  float d1 = dist(mouseX, mouseY, 550, 350);
  int r1 = 65/2;
  if (d1 < r1) {   
    cuadrado = color(random(255), random(255), random(255));
  }
}
