void setup(){
  size(400, 400);
  background(105, 200, 242);
}

void draw(){
  background(105, 200, 242);
  noStroke();
  fill(129, 185, 84);
  rect(0, 200, 400, 200);
  fill(194, 242, 132);
  ellipse(300, 440, 360, 280);
  fill(153, 216, 103);
  ellipse(0, 420, 550, 200);
  
 //lago
  fill(167, 234, 250);
  ellipse(210, 250, 280, 50);
  fill(194, 242, 132);
  ellipse(120, 250, 30, 10);
  fill(194, 242, 132);
  ellipse(180, 240, 20, 5);
  fill(153, 216, 103);
  ellipse(165, 245, 15, 5);
  ellipse(182, 247, 13, 5);
  fill(153, 216, 103);
  ellipse(230, 265, 30, 10);
  fill(194, 242, 132);
  ellipse(260, 240, 40, 10);
  fill(153, 216, 103);
  ellipse(310, 250, 25, 8);
  
 //montañas
  fill(144, 160, 126);
  triangle(240, 100, 240, 200, 180, 200);
  fill(165, 183, 144);
  triangle(240, 100, 240, 200, 300, 200);
  
  fill(144, 160, 126);
  triangle(380, 80, 380, 200, 300, 200);
  fill(165, 183, 144);
  triangle(380, 80, 380, 200, 460, 200);
  
  fill(144, 160, 126);
  triangle(120, 100, 120, 200, 80, 200);
  fill(165, 183, 144);
  triangle(120, 100, 120, 200, 160, 200);
  triangle(0, 80, 0, 200, 80, 200);
  
  fill(198, 190, 154);
  triangle(20, 200, 80, 120, 80, 200);
  fill(222, 212, 175);
  triangle(80, 120, 80, 200, 140, 200);
  
  fill(198, 190, 154);
  triangle(180, 80, 180, 200, 120, 200);
  fill(222, 212, 175);
  triangle(180, 80, 180, 200, 240, 200);
  
  fill(198, 190, 154);
  triangle(240, 200, 300, 100, 300, 200);
  fill(222, 212, 175);
  triangle(300, 200, 300, 100, 360, 200);

 //sol
  fill(255, 255, 255, 50);
  ellipse(70, 50, 100, 100);
  fill(255, 255, 255, 70);
  ellipse(70, 50, 70, 70);
  fill(250, 232, 66);
  ellipse(70, 50, 40, 40);
  
 //nubes
  fill(255, 255, 255, 70);
  ellipse(160, 50, 30, 20);
  ellipse(390, 40, 90, 30);
  fill(255, 255, 255, 130);
  ellipse(240, 20, 80, 30);
  fill(255, 255, 255, 140);
  ellipse(290, 70, 100, 40);
  
 //nieve
  fill(232);
  triangle(180, 80, 180, 140, 160, 120);
  fill(255);
  triangle(180, 80, 180, 140, 200, 120);
  fill(232);
  triangle(80, 120, 80, 160, 60, 147);
  fill(255);
  triangle(80, 120, 80, 160, 100, 147);
  fill(232);
  triangle(300, 100, 300, 140, 285, 125);
  fill(255);
  triangle(300, 100, 300, 140, 315, 125);
  
 //árboles
  fill(165, 138, 42);
  rect(320, 210, 10, 120);
  fill(137, 115, 34);
  rect(330, 210, 10, 120);
  
  fill(237, 166, 24);
  ellipse(330, 170, 120, 90);
   fill(255, 188, 52);
   arc(330, 170, 120, 90, radians(90), radians(270), CHORD);
  ellipse(400, 190, 60, 45);
  fill(237, 166, 24);
  ellipse(285, 210, 70, 50);
   fill(250, 216, 45);
   arc(285, 210, 70, 50, radians(90), radians(270), CHORD);
  fill(237, 166, 24);
  ellipse(355, 220, 80, 60);
   fill(250, 216, 45);
   arc(355, 220, 80, 60, radians(90), radians(270), CHORD);
   
  fill(137, 115, 34);
  rect(28, 170, 10, 70);
  fill(118, 170, 52);
  ellipse(30, 167, 50, 40);
   fill(153, 216, 103);
   arc(30, 167, 50, 40, radians(90), radians(270), CHORD);
  fill(118, 170, 52);
  ellipse(15, 190, 40, 30);
   fill(194, 242, 132);
   arc(15, 190, 40, 30, radians(90), radians(270), CHORD);
  fill(118, 170, 52);
  ellipse(55, 190, 40, 30);
   fill(194, 242, 132);
   arc(55, 190, 40, 30, radians(90), radians(270), CHORD);
   
 //honguitos
  stroke(100, 52, 3);
  strokeWeight(4);
  line(120, 340, 120, 347);
  line(100, 345, 100, 350);
  line(240, 340, 240, 345);
  line(260, 330, 260, 335);
  line(360, 360, 360, 365);
  line(20, 370, 20, 377);
  
  strokeWeight(2);
  line(20, 260, 20, 265);
  line(30, 270, 30, 275);
  line(120, 210, 120, 213);
  line(200, 210, 200, 213);
  line(380, 260, 380, 263);
  line(192, 212, 192, 214);
  
  noStroke();
  fill(203, 49, 18);
  arc(120, 340, 20, 20, radians(180), radians(360), CHORD);
  arc(100, 345, 16, 16, radians(180), radians(360), CHORD);
  arc(240, 340, 14, 14, radians(180), radians(360), CHORD);
  arc(260, 330, 14, 14, radians(180), radians(360), CHORD);
  arc(360, 360, 15, 15, radians(180), radians(360), CHORD);
  arc(20, 260, 10, 10, radians(180), radians(360), CHORD);
  arc(30, 270, 9, 9, radians(180), radians(360), CHORD);
  arc(20, 370, 16, 16, radians(180), radians(360), CHORD);
  arc(120, 210, 7, 7, radians(180), radians(360), CHORD);
  arc(200, 210, 7, 7, radians(180), radians(360), CHORD);
  arc(380, 260, 7, 7, radians(180), radians(360), CHORD);
  arc(192, 212, 6, 6, radians(180), radians(360), CHORD);


  
  
  
  
}
