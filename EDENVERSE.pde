import processing.sound.*;
SoundFile MainTheme;
SoundFile Move;
SoundFile Accept;
SoundFile Accept2;
SoundFile Accept3;
SoundFile AT1;
SoundFile AT2;
SoundFile AT3;

/////////////////////////////////////////// variable declarator /////////////////
PGraphics P1;
PGraphics P2;
PGraphics P3;
PGraphics P4;
PGraphics P5;
PGraphics BG;
int HP1= 1500; 
int HP2= 1500;
int MP1= 0;
int MP2= 0;
int SKL1= 0; 
int SKL2= 0; 
int SKL3 = 0;
int SKL4 = 0;
int SKL5 = 0;
int SKL6 = 0;
int MPGAIN1 = 0;
int MPGAIN2 = 0;
int MPSKL2 = 0;
int MPSKL3 = 0;
int MPSKL5 = 0;
int MPSKL6 = 0;
int turn = 0; 
int turnsel = 0; 
int screen = 0; 
int dscreen= 1;
float theta;
int x = 0; 
int x1 = 1290;
int dx= 1;
int y= 100; 
int dy= 1;
int text = 28; 
PFont font;
int sel1 = 0;
int sel2 = 0;
String A1 = "0"; 
String A2 = "0";
String A3 = "0";
String A4 = "0";
String A5 = "0";
String A6 = "0";
String C1 = "HARALD, THE HERO";
String C2 = "UNKO, THE UNDEAD";
String C3 = "ARELLYS, THE HEROINE";
String C4 = "SETH, THE SAGE";
String C5 = "AURON, THE KING DRAGON";
String T1 = "0";
String T2 = "0";
String D1 = "A YOUNG HERO FROM THE LANDS OF EDEN, HE IS ON A QUEST TO SLAY THE DRAGON THAT MURDERED HIS FATHER.";
String D2 = "A MERCENARY THAT WAS MURDERED BY HIS OWN MEN, HE RETURNED FROM THE GRAVE TO LAY WASTE ON EDEN.";
String D3 = "A PRINCESS FROM EDEN, IN QUEST TO SAVE HIS BROTHER FROM A TERRIBLE CURSE.";
String D4 = "A MYSTERIOUS WANDERER TASKED WITH THE MISSION OF BANISHING THE UNDEAD ARMY THAT SEEKS TO DESTROY EDEN.";
String D5 = "AN ANCIENT BEING WITH THE SOLE DESIRE OF BURNING THE LAND OF EDEN TO THE GROUND.";

///////////////////////////////////////////// SETUP //////////////////////////
void setup()
{

  MainTheme = new SoundFile(this, "Theme.mp3");
  Move = new SoundFile(this, "Move.Wav");
  Accept = new SoundFile(this, "Accept.wav");
  Accept2 = new SoundFile (this, "Accept2.wav");
  Accept3 = new SoundFile (this, "Accept3.wav");
  AT1 = new SoundFile (this, "AT1.wav");
  AT2 = new SoundFile (this, "AT2.wav");
  AT3 = new SoundFile (this, "AT3.wav");

  MainTheme.play();
  MainTheme.amp(0.3);
  frameRate(60);
  font= loadFont(".-48.vlw");
  textFont(font);
  size (1366, 768);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  P1 = createGraphics (1366, 768);
  P2 = createGraphics (1366, 768);
  P3 = createGraphics (1366, 768);
  P4 = createGraphics (1366, 768);
  P5 = createGraphics (1366, 768);
}

void keyReleased() 

{
  ////////////////////// SOUND EFFECTS) //////////////////////////////////////////
  if (key == ENTER && screen == 0)
  {
    screen = 1;
    x = 10;
  }
  if (key == ENTER && screen == 1 && sel1 > 0 && sel2 > 0)
  {
    screen = 2;
  }
  if (key == ENTER)
  {
    Accept.amp(0.3);
    Accept.play();
  }

  if (key == 'A' || key == 'a' || key == 'd' || key == 'D' || keyCode == LEFT || keyCode == RIGHT)
  {
    Move.play();
  }
  if (key == 'b' || key == 'B')
  {
    Accept2.play();
  }
  if (key == 'l' || key == 'L')
  {
    Accept3.play();
  }

  if (key == '1' || key == '8')
  {
    AT1.play();
  }

  if (key == '2' || key == '9')
  {
    AT2.play();
  }

  if (key == '3' || key == '0')
  {
    AT3.play();
  }
  if (key == 'p' || key == 'P')
  {
    screen -= 1;
  }
  if ( screen <=0)
  {
    screen =0;
  }

  if (key == 'd' || key == 'D')
  {
    x+=150;
  }
  if (key == 'a' || key == 'A')
  {
    x-=150;
  }
  if ( keyCode == LEFT)
  {
    x1 -= 150;
  }
  if (keyCode == RIGHT)
  {
    x1 += 150;
  }
  if (x1 < 700)
  {
    x1 = 700;
  }
  if (x1 > 1300)
  {
    x1 = 1300;
  }

  if (x < 0)
  {
    x= 0;
  }
  if ( x>600)
  {
    x = 600;
  }
  if ( MP1 > 301)
  {
    MP1 = 300;
  }
  if (MP2 > 301)
  {  
    MP2 = 300;
  }
  if ( x == 0 && key == 'b' || key == 'B')
  {
    sel1 = 1;
  }
  if ( x == 150 && key == 'b' || key == 'B')
  {
    sel1 = 2;
  }
  if ( x == 300 && key == 'b'  || key == 'B')
  {
    sel1 = 3;
  }
  if ( x == 450 && key == 'b'  || key == 'B')
  {
    sel1 = 4;
  }
  if ( x == 600 & key == 'b'  || key == 'B')
  {
    sel1 = 5;
  }
  if ( x1 == 1300 & key == 'l'  || key == 'B')
  {
    sel2= 10;
  }
  if ( x1 == 1150 & key == 'l'  || key == 'L')
  {
    sel2 = 9;
  }
  if ( x1 == 1000 & key == 'l'  || key == 'L')
  {
    sel2 = 8;
  }
  if ( x1 == 850 & key == 'l'  || key == 'L')
  {
    sel2 = 7;
  }
  if ( x1 == 700 & key == 'l'  || key == 'L')
  {
    sel2 = 6;
  }

  if (HP1 > 0 && HP2 > 0 && turn == 0 && key == '1')
  {

    HP2 -= SKL1;
    MP1 += MPGAIN1;
    turn += 1;
  }
  if (HP1 > 0 && HP2 > 0 && turn == 0 && key == '2' && MP1 >= MPSKL2)
  {
    HP2 -= SKL2;
    MP1 -= MPSKL2;
    turn += 1;
  }

  if ( HP1 > 0 && HP2 > 0 && turn == 0 && key == '3' && MP1 >= MPSKL3)
  {
    HP2 -= SKL3;
    MP1 -= MPSKL3;
    turn += 1;
  }



  if (HP1 > 0 && HP2 > 0 && turn == 1 && key == '8')
  {
    HP1 -= SKL4;
    MP2 += MPGAIN2;
    turn -= 1;
  }
  if (HP1 > 0 && HP2 > 0 &&turn == 1 && key == '9' && MP2 >= 100)
  {
    HP1 -= SKL5;
    MP2 -= MPSKL5;
    turn -= 1;
  }

  if (HP1 > 0 && HP2 > 0 && turn == 1 && key == '0' && MP2 >= 200)
  {
    HP1 -= SKL6;
    MP2 -= MPSKL6;
    turn -= 1;
  }
}


void draw() 
{
  drawP1();
  drawP2();
  drawP3();
  drawP4();
  drawP5();

  ///////////////////////// conditionals ///////////////////////////////

  theta += 0.05;


  /////////////////////////// SCREEN 0 ////////////////////////////////////   
  if (screen == 0)

  {

    rectMode(CENTER);
    //Fondo Ladrillos
    for (int i= 0; i<3000; i+=100)
      for (int j= 0; j<768; j+=60)
      {
        stroke(#565115);
        fill (130);
        rect (i, j, 100, 30);
      }
    for (int i= -50; i<3000; i+=100)
      for (int j= 30; j<768; j+=60)
      {
        stroke(#565115);
        fill (130);
        rect (i, j, 100, 30);
      }
    for (int i= 0; i<1366; i+=100)
      for (int j= 0; j<1366; j+=60)
      {
        noStroke();
        fill (200);
        rect (i, j, 80, 20);
      } 
    for (int i= -50; i<1366; i+=100)
      for (int j= 30; j<1366; j+=60)
      {
        noStroke();
        fill (200);
        rect (i, j, 80, 20);
        //Fin Fondo de Ladrillos
      } 

    //Fuego
    fill(#d83625);
    for (int i= 0; i<1366; i++) {
      rect(i*4, height, 4, -noise(i*0.1, theta)*1500);
    }
    fill(#d18e34);
    for (int i= 0; i<1366; i++) {
      rect(i*4, height+100, 4, -noise(i*0.1, theta)*1500);
    }
    fill(255);
    for (int i= 0; i<1366; i++) {
      rect(i*4, height+200, 4, -noise(i*0.1, theta)*1500);
      //Fin Fuego
    }
    //LOGO INTERFAZ

    beginShape();
    fill(#3baaaa);
    strokeWeight(3);
    stroke(0);
    vertex(480, 291);
    vertex(447, 250);
    vertex(417, 233);
    vertex(417, 271);
    vertex(435, 291);
    vertex(394, 287);
    vertex(291, 199);
    vertex(326, 300);
    vertex(398, 331);
    vertex(369, 343);
    vertex(283, 327);
    vertex(260, 291);
    vertex(260, 339);
    vertex(320, 385);
    vertex(396, 405);
    vertex(354, 422);
    vertex(292, 399);
    vertex(350, 461);
    vertex(412, 447);
    vertex(441, 424);
    vertex(427, 465);
    vertex(444, 479);
    vertex(458, 450);
    vertex(470, 417);
    endShape();

    beginShape();
    fill(#5b2017);
    strokeWeight(3);
    stroke(0);
    vertex(950, 291);
    vertex(983, 250);
    vertex(1014, 233);
    vertex(1014, 271);
    vertex(995, 291);
    vertex(1036, 287);
    vertex(1139, 199);
    vertex(1104, 300);
    vertex(1032, 331);
    vertex(1061, 343);
    vertex(1147, 327);
    vertex(1170, 291);
    vertex(1170, 339);
    vertex(1100, 385);
    vertex(1034, 405);
    vertex(1076, 422);
    vertex(1138, 399);
    vertex(1080, 461);
    vertex(1018, 447);
    vertex(989, 424);
    vertex(1003, 465);
    vertex(986, 479);
    vertex(972, 450);
    vertex(960, 417);
    endShape();

    fill(80);
    rect (width/2, height/2-30, 590, 150);
    fill(200);
    rect (width/2, height/2-30, 560, 125);
    fill(0);
    textSize(text);

    if (text <=44)
    {
      dx = 1;
    }
    if (text >= 80)
    {
      dx= -1;
    }
    fill (255);
    text("EDEN VERSE", width/2, height/2-80);
    textSize(28);
    text= text + dx;
    text("", 570, 200);
    text("PRESS ENTER TO START", width/2, height/2-20);
    text("                     x: "    +    mouseX+" y: "+mouseY, 10, 15);
  }
  ///////////////////////////////////////// SCREEN 1 /////////////////////
  if (screen == 1)
  { 
    rectMode(CENTER);
    imageMode(CORNER);
    for (int i= 0; i<1400; i+=100)
      for (int j= 0; j<768; j+=60)
      {
        stroke(#565115);
        fill (130);
        rect (i, j, 100, 30);
      }
    for (int i= -50; i<1400; i+=100)
      for (int j= 30; j<768; j+=60)
      {
        stroke(#565115);
        fill (130);
        rect (i, j, 100, 30);
      }
    for (int i= 0; i<1366; i+=100)
      for (int j= 0; j<1366; j+=60)
      {
        noStroke();
        fill (200);
        rect (i, j, 80, 20);
      } 
    for (int i= -50; i<1366; i+=100)
      for (int j= 30; j<1366; j+=60)
      {
        noStroke();
        fill (200);
        rect (i, j, 80, 20);
        //Fin Fondo de Ladrillos
      } 

    fill(#d83625);
    for (int i= 0; i<1366; i++) 
    {
      rect(i*4, height, 4, -noise(i*0.1, theta)*1500);
    }
    fill(#d18e34);
    for (int i= 0; i<1366; i++) 
    {
      rect(i*4, height+100, 4, -noise(i*0.1, theta)*1500);
    }
    fill(255);
    for (int i= 0; i<1366; i++) 
    {
      rect(i*4, height+200, 4, -noise(i*0.1, theta)*1500);
      //Fin Fuego
    }
    pushMatrix();
    scale (0.35);
    translate( 50, 350);
    image(P1, 0, 0);
    popMatrix();

    pushMatrix();
    scale (0.4);
    translate( 500, 200);
    image(P2, 0, 0);
    popMatrix();

    pushMatrix();
    scale(0.35);
    translate (1200, 350);
    image(P3, 0, 0);
    popMatrix();

    pushMatrix();
    scale(0.4);
    translate (1600, 250);
    image(P4, 0, 0);
    popMatrix();

    pushMatrix();
    scale(0.4);
    translate(2200, 200);
    image(P5, 0, 0);
    popMatrix();

    pushMatrix();
    translate (0, 0);
    textSize (17);
    scale(1);

    text (C1, 150, 100);
    text (C2, 400, 100);
    text (C3, 690, 100);
    text (C4, 950, 100);
    text (C5, 1200, 100);
    popMatrix();

    pushMatrix();
    text (sel1, 100, 20);
    text (sel2, 1200, 20);
    fill (100, 170, 255);
    if ( x==0)
    {
      triangle (135, 55, 185, 55, 160, 80);
    }
    if (x == 150)
    {
      triangle (385, 55, 435, 55, 410, 80);
    }
    if ( x == 300)
    { 
      triangle (685, 55, 735, 55, 710, 80);
    }
    if ( x == 450)
    {
      triangle (985, 55, 1035, 55, 1010, 80);
    }
    if ( x== 600)
    {
      triangle (1185, 55, 1235, 55, 1210, 80);
    }

    popMatrix();

    pushMatrix();
    fill (250, 170, 175);
    if ( x1==700)
    {
      triangle (135, 55, 185, 55, 160, 80);
    }
    if (x1 == 850)
    {
      triangle (385, 55, 435, 55, 410, 80);
    }
    if ( x1 == 1000)
    { 
      triangle (685, 55, 735, 55, 710, 80);
    }
    if ( x1 == 1150)
    {
      triangle (985, 55, 1035, 55, 1010, 80);
    }
    if ( x1== 1300)
    {
      triangle (1185, 55, 1235, 55, 1210, 80);
    }
    popMatrix();

    pushMatrix();

    stroke(0);
    fill( 180);
    rectMode(CORNER);
    textAlign(CENTER);
    rect ( 60, 400, 200, 150);
    rect ( 320, 400, 200, 150);
    rect ( 580, 400, 200, 150);
    rect ( 840, 400, 200, 150);
    rect ( 1100, 400, 200, 150);
    rect ( 0, 600, 1366, 50);

    fill( 255);
    text (D1, 65, 430, 195, 746);
    text (D2, 325, 430, 190, 746);
    text (D3, 580, 430, 190, 746);
    text (D4, 845, 430, 190, 746);
    text (D5, 1105, 430, 190, 746);
    text ("PLAYER 1 'A' OR 'D' TO MOVE AND B TO SELECT", 200, 630);
    text ("player 2 'LEFT' or 'RIGHT' TO MOVE AND L TO SELECT", 1150, 630);
    popMatrix();
  }


  if ( screen == 2)
  {

    if (HP1 <= 0)
    {
      HP1 = 0;
    }
    if (HP2 <=0)
    {
      HP2 = 0;
    }
    if (screen == 3);
    {


      rectMode(CORNER);
      pushMatrix();
      stroke(2);
      strokeWeight(3);
      beginShape();
      fill(#68655e);
      vertex(1246, 289);
      bezierVertex(1246, 289, 1115, 214, 1114, 213);
      bezierVertex(1112, 211, 837, 324, 837, 324);
      vertex(720, 285);
      vertex(559, 186);
      vertex(265, 355);
      vertex(149, 238);
      vertex(120, 191);
      vertex(31, 116);
      vertex(1, 188);
      vertex(1, 456);
      vertex(54, 459);
      vertex(179, 443);
      vertex(729, 419);
      vertex(1205, 503);
      vertex(1367, 515);
      vertex(1367, 319);
      vertex(1246, 289);
      endShape();

      beginShape();
      fill(#b4dbd3);
      vertex(1255, 126);
      vertex(1021, 116);
      bezierVertex(1021, 116, 865, 110, 861, 107);
      bezierVertex(857, 104, 676, 116, 670, 116);
      bezierVertex(664, 116, 480, 154, 476, 152);
      bezierVertex(471, 149, 271, 152, 271, 152);
      vertex(157, 107);
      vertex(87, 99);
      vertex(1, 108);
      vertex(1, 188);
      vertex(32, 116);
      vertex(120, 191);
      vertex(149, 238);
      vertex(265, 355);
      vertex(559, 186);
      vertex(720, 285);
      vertex(837, 324);
      bezierVertex(837, 324, 1112, 211, 1114, 213);
      bezierVertex(1115, 214, 1246, 289, 1246, 289);
      vertex(1367, 318);
      vertex(1367, 186);
      vertex(1339, 186);
      vertex(1255, 126);
      endShape();

      beginShape();
      fill(#7dada4);
      vertex(1, 1);
      vertex(1, 83);
      vertex(1, 108);
      vertex(87, 99);
      vertex(157, 107);
      vertex(271, 152);
      bezierVertex(271, 152, 471, 150, 476, 152);
      bezierVertex(480, 154, 664, 116, 670, 116);
      bezierVertex(676, 116, 857, 104, 861, 107);
      bezierVertex(865, 110, 1021, 116, 1021, 116);
      vertex(1255, 126);
      vertex(1339, 186);
      vertex(1367, 186);
      vertex(1367, 1);
      vertex(1, 1);
      endShape();

      beginShape();
      fill(255);
      vertex(378, 290);
      vertex(426, 324);
      vertex(530, 283);
      vertex(648, 283);
      vertex(684, 263);
      vertex(559, 186);
      endShape(CLOSE);

      beginShape();
      fill(255);
      vertex(966, 272);
      vertex(1009, 271);
      vertex(1083, 255);
      vertex(1155, 286);
      vertex(1187, 255);
      vertex(1113, 213);
      endShape(CLOSE);

      beginShape();
      fill(255);
      vertex(1, 241);
      vertex(23, 241);
      vertex(76, 352);
      vertex(95, 241);
      vertex(121, 221);
      vertex(120, 191);
      vertex(32, 116);
      vertex(1, 188);
      endShape(CLOSE);


      line(1126, 533, 1210, 617);
      stroke(0);
      beginShape();
      fill(#3f3d38);
      vertex(327, 401);
      vertex(301, 335);
      vertex(265, 355);
      vertex(149, 238);
      vertex(120, 191);
      vertex(121, 221);
      vertex(95, 241);
      vertex(129, 257);
      vertex(144, 345);
      vertex(105, 433);
      vertex(194, 433);
      vertex(216, 441);
      vertex(277, 441);
      endShape(CLOSE);

      beginShape();
      fill(#3f3d38);
      vertex(837, 324);
      vertex(720, 285);
      vertex(684, 263);
      vertex(648, 283);
      vertex(668, 301);
      vertex(658, 335);
      vertex(581, 373);
      bezierVertex(581, 373, 654, 388, 660, 385);
      bezierVertex(666, 382, 728, 419, 728, 419);
      vertex(770, 426);
      vertex(767, 396);
      vertex(837, 324);
      endShape();

      beginShape();
      fill(#3f3d38);
      vertex(1289, 300);
      vertex(1246, 289);
      vertex(1187, 255);
      vertex(1155, 286);
      vertex(1083, 255);
      vertex(1126, 316);
      vertex(1094, 397);
      bezierVertex(1094, 397, 1020, 432, 1025, 433);
      bezierVertex(1029, 435, 1126, 441, 1126, 441);
      vertex(1175, 376);
      vertex(1199, 419);
      vertex(1205, 503);
      vertex(1233, 503);
      vertex(1246, 415);
      vertex(1310, 364);
      vertex(1289, 300);
      endShape();

      beginShape();
      fill(#74a95b);
      vertex(899, 299);
      endShape();

      beginShape();
      fill(#74a95b);
      vertex(944, 769);
      bezierVertex(957, 769, 957, 749, 944, 749);
      bezierVertex(931, 749, 931, 769, 944, 769);
      vertex(944, 769);
      endShape();

      beginShape();
      fill(#74a95b);
      vertex(1, 515);
      vertex(179, 443);
      vertex(729, 419);
      vertex(1205, 503);
      vertex(1367, 515);
      vertex(1367, 769);
      vertex(1, 769);
      endShape(CLOSE);

      beginShape();
      fill(#4b7c32);
      vertex(1, 655);
      vertex(126, 580);
      vertex(295, 589);
      vertex(573, 548);
      vertex(936, 574);
      vertex(1097, 655);
      vertex(1283, 580);
      vertex(1341, 567);
      vertex(1367, 567);
      vertex(1367, 515);
      vertex(1205, 503);
      vertex(729, 419);
      vertex(179, 443);
      vertex(54, 459);
      vertex(1, 456);
      endShape(CLOSE);

      beginShape();
      fill(#324c22);
      vertex(1, 550);
      vertex(165, 516);
      vertex(447, 537);
      vertex(579, 502);
      vertex(735, 474);
      vertex(1000, 533);
      vertex(1155, 550);
      vertex(1367, 548);
      vertex(1367, 515);
      vertex(1205, 503);
      vertex(729, 419);
      vertex(179, 443);
      vertex(54, 459);
      vertex(1, 456);
      endShape(CLOSE);

      beginShape();
      fill(#ccc2ba);
      vertex(164, 533);
      vertex(1223, 533);
      vertex(1343, 617);
      vertex(43, 617);
      endShape(CLOSE);

      fill(#8e837b);
      rect(43, 617, 1301, 23);

      beginShape();
      vertex(357, 617);
      endShape();

      beginShape();
      fill(#a8ccca);
      vertex(440, 533);
      endShape();

      beginShape();
      fill(#a8ccca);
      vertex(470, 617);
      endShape();

      beginShape();
      fill(#a8ccca);
      vertex(537, 533);
      endShape();

      line(290, 533, 194, 617);

      beginShape();
      fill(#a8ccca);
      vertex(566, 617);
      endShape();

      beginShape();
      fill(#1c1c1c);
      vertex(620, 533);
      endShape();

      line(693, 533, 693, 617);
      line(113, 569, 1283, 569);
      line(488, 533, 440, 617);
      line(899, 533, 944, 617);
      ellipse(414, 575, 125, 28);
      ellipse(1002, 575, 125, 28);
      ellipse(1000, 572, 102, 23);
      ellipse(410, 572, 102, 23);
      fill(#545454);
      rect(258, 639, 837, 25);
      popMatrix();

      ///////////////////////////////////////////////////////// end background ///////////////////////////////////////////////////////
      if ( sel1 == 1)
      {
        T1 = C1;
        A1 = "SWORD STRIKE";
        A2 = "LORD OF FLAME";
        A3 = "OMNI SLASH";
        SKL1 = 50;
        SKL2 = 150;
        SKL3 = 300;
        MPSKL2 = 100;
        MPSKL3 = 200;
        MPGAIN1 = 50;
        pushMatrix();
        imageMode(CENTER);
        translate (280, 400);
        scale (-0.5, 0.5);
        image (P1, 0, 0);
        popMatrix();
      }
      if ( sel2 == 6)
      {
        T2 = C1;
        A4 = "SWORD STRIKE";
        A5 = "LORD OF FLAME";
        A6 = "OMNI SLASH";
        SKL4 = 50;
        SKL5 = 150;
        SKL6 = 300;
        MPSKL5 = 100;
        MPSKL6 = 200;
        MPGAIN2 = 50;
        pushMatrix();
        imageMode(CENTER);
        translate (1150, 400);
        scale (0.5, 0.5);
        image (P1, 0, 0);
        popMatrix();
      }

      if ( sel1 == 2)
      {
        T1 = C2;
        A1 = "BONE THROW";
        A2 = "DEATH BREATH";
        A3 = "DOMINIUS";
        SKL1 = 80;
        SKL2 = 75;
        SKL3 = 300;
        MPSKL2 = 75;
        MPSKL3 = 150;
        MPGAIN1 = 30;
        pushMatrix();
        imageMode(CENTER);
        translate (280, 400);
        scale (-0.6, 0.6);
        image (P2, 0, 0);
        popMatrix();
      }

      if ( sel2 == 7)
      {
        T2 = C2;
        A4 = "BONE THROW";
        A5 = "DEATH BREATH";
        A6 = "DOMINIUS";
        SKL4 = 80;
        SKL5 = 75;
        SKL6 = 300;
        MPSKL5 = 75;
        MPSKL6 = 150;
        MPGAIN2 = 30;
        pushMatrix();
        imageMode(CENTER);
        translate (1150, 400);
        scale (0.6, 0.6);
        image (P2, 0, 0);
        popMatrix();
      }

      if ( sel1 == 3)
      {
        T1 = C3;
        A1 = "RAPIER THRUST";
        A2 = "HOLY SPARK";
        A3 = "GRAND FINALE";
        SKL1 = 60;
        SKL2 = 100;
        SKL3 = 200;
        MPSKL2 = 100;
        MPSKL3 = 150;
        MPGAIN1 = 50;
        pushMatrix();
        imageMode(CENTER);
        translate (380, 370);
        scale (-0.6, 0.6);
        image (P3, 0, 0);
        popMatrix();
      }

      if ( sel2 == 8)
      {
        T2 = C3;
        A4 = "RAPIER THRUST";
        A5 = "HOLY SPARK";
        A6 = "GRAND FINALE";
        SKL4 = 60;
        SKL5 = 100;
        SKL6 = 200;
        MPSKL5 = 100;
        MPSKL6 = 150;
        MPGAIN2 = 50;
        pushMatrix();
        imageMode(CENTER);
        translate (1000, 370);
        scale (0.6, 0.6);
        image (P3, 0, 0);
        popMatrix();
      }

      if ( sel1 == 4)
      {
        T1 = C4;
        A1 = "WAND SMASH";
        A2 = "WIND BLADE";
        A3 = "ARCANE BURST";
        SKL1 = 20;
        SKL2 = 150;
        SKL3 = 400;
        MPSKL2 = 100;
        MPSKL3 = 300;
        MPGAIN1 = 100;
        pushMatrix();
        imageMode(CENTER);
        translate (420, 400);
        scale (-0.6, 0.6);
        image (P4, 0, 0);
        popMatrix();
      }

      if ( sel2 == 9)
      {
        T2 = C4;
        A4 = "WAND SMASH";
        A5 = "WIND BLADE";
        A6 = "ARCANE BURST";
        SKL4 = 20;
        SKL5 = 150;
        SKL6 = 400;
        MPSKL5 = 100;
        MPSKL6 = 300;
        MPGAIN2 = 100;
        pushMatrix();
        imageMode(CENTER);
        translate (1000, 400);
        scale (0.6, 0.6);
        image (P4, 0, 0);
        popMatrix();
      }
      if ( sel1 == 5)
      {
        T1 = C5;
        A1 = "PIERCING CLAW";
        A2 = "HELLFIRE";
        A3 = "REGNUM DEI";
        SKL1 = 100;
        SKL2 = 150;
        SKL3 = 500;
        MPSKL2 = 100;
        MPSKL3 = 300;
        MPGAIN1 = 30;
        pushMatrix();
        imageMode(CENTER);
        translate (300, 220);
        scale (-1, 1);
        image (P5, 0, 0);
        popMatrix();
      }

      if ( sel2 == 10)
      {
        T2 = C5;
        A4 = "PIERCING CLAW";
        A5 = "HELLFIRE";
        A6 = "REGNUM DEI";
        SKL4 = 100;
        SKL5 = 150;
        SKL6 = 500;
        MPSKL5 = 100;
        MPSKL6 = 300;
        MPGAIN2 = 30;
        pushMatrix();
        imageMode(CENTER);
        translate (1000, 220);
        scale (1, 1);
        image (P5, 0, 0);
        popMatrix();
      }
      pushMatrix(); //////// PLAYER BOXES
      rect(12, 126, 94, 53);
      fill(#3e66ae);
      stroke(#c1bcb8);
      rect(59, 29, 294, 67);
      fill(#be2c37);
      stroke(#c1bcb8);
      rect(1009, 29, 294, 67);
      fill(#3e66ae);
      stroke(#c1bcb8);
      rect(12, 126, 94, 53);
      fill(#be2c37);
      stroke(#c1bcb8);
      rect(1255, 126, 94, 53);
      popMatrix();

      if ( turn == 0)
      {
        for (int i= 128; i< 278; i+=50)
        {
          pushMatrix();
          textSize (25);
          fill (180, 0, 0);
          stroke(180);
          rect (110, i, 120, 50);
          fill (255);
          textSize(14);

          text ( A1, 170, 160);
          text ( A2, 170, 210);
          text ( A3, 170, 260);
          fill(255);
          text ("PLAYER 1 TURN", width/2, 50);
          popMatrix();
        }
      }
      if ( turn == 1)
      {
        for (int i= 126; i< 276; i+=50)
        {
          pushMatrix();
          textSize (25);
          fill (180, 0, 0);
          stroke(180);
          rect (1132, i, 120, 50);
          fill (255);
          textSize(15);
          text ( A4, 1190, 160);
          text ( A5, 1190, 210);
          text ( A6, 1190, 260);
          popMatrix();
          fill (255);
          text ("PLAYER 2 TURN", width/2, 50);
        }
      }
      pushMatrix();
      textSize(14);
      text (" P 1", 50, 150);
      text (" P 2", 1300, 150);
      popMatrix();
      pushMatrix();
      textSize (20);
      text ( T1, 200, 60);
      text ( T2, 1150, 60);
      popMatrix();

      pushMatrix ();
      textAlign(LEFT);
      fill( 170);
      textSize(15);
      rect ( 20, 350, 250, 250);
      fill(255);
      text ( "SKILLS", 100, 370);
      text ( " (1) SKILL 1:", 20, 400);
      text ( "   DEALS         DAMAGE", 90, 400);
      text ( "GENERATES:         MANA", 60, 420);
      text ( SKL1, 155, 400);
      text ( MPGAIN1, 160, 420); 
      //////
      text ( " (2) SKILL 2:", 20, 460);
      text ( "     DEALS           DAMAGE", 90, 460);
      text ( "MP COST", 100, 480);
      text ( SKL2, 160, 460);
      text ( MPSKL2, 180, 480);
      ////
      text ( " (3) SKILL 3:", 20, 520);
      text ( "     DEALS           DAMAGE", 90, 520);
      text ( "MP COST", 100, 540);
      text ( SKL3, 160, 520);
      text ( MPSKL3, 180, 540);
      textAlign(CENTER);
      popMatrix();


      pushMatrix ();
      textAlign(LEFT);
      fill( 170);
      textSize(15);
      rect ( 1100, 350, 250, 250);
      fill(255);
      text ( "SKILLS", 1200, 370);
      text ( " (8) SKILL 1:", 1100, 400);
      text ( "   DEALS         DAMAGE", 1180, 400);
      text ( "GENERATES:         MANA", 1160, 420);
      text ( SKL4, 1250, 400);
      text ( MPGAIN2, 1250, 420); 
      //////
      text ( " (9) SKILL 2:", 1100, 460);
      text ( "     DEALS           DAMAGE", 1180, 460);
      text ( "MP COST", 1160, 480);
      text ( SKL5, 1250, 460);
      text ( MPSKL5, 1250, 480);
      ////
      text ( " (0) SKILL 3:", 1100, 520);
      text ( "     DEALS           DAMAGE", 1180, 520);
      text ( "MP COST", 1160, 540);
      text ( SKL6, 1250, 520);
      text ( MPSKL6, 1250, 540);
      textAlign(CENTER);
      popMatrix();



      //P1 BAR
      pushMatrix();
      textSize(12);
      stroke(200);
      fill(#F05341); //////// red fill
      rect( 60, 630, 50, 30); /// HP BOX
      rect (110, 630, 300, 30); ///// HP  RED BAR;
      fill(#5CC2F0); ////////// blue fill
      rect (60, 660, 50, 30); /// MP BOX
      fill (#71E36C); /////// green fill
      rect (110, 630, HP1/5, 30); //health bar
      fill (#325FBF); // manabar fill
      rect (110, 660, MP1, 30); // mana bar
      fill(255); //// white filll
      text (HP1, 80, 640);
      text (MP1, 80, 670);
      popMatrix();

      //P2 BAR
      pushMatrix();
      textSize(12);
      stroke(200);
      fill(#F05341); //////// red fill
      rect( 1280, 630, 50, 30); /// HP BOX
      rect (980, 630, 300, 30); ///// HP  RED BAR;
      fill(#5CC2F0); ////////// blue fill
      rect (1280, 660, 50, 30); /// MP BOX
      fill (#71E36C); /////// green fill
      rect (980, 630, HP2/5, 30); //health bar
      fill (#325FBF); // manabar fill
      rect (1280, 660, -MP2, 30); // mana bar
      fill(255); //// white filll
      text (HP2, 1310, 640);
      text (MP2, 1310, 670);
      popMatrix();
    }
    if ( HP1 <= 0)
    {
      textSize(25);
      text ("PLAYER 1 LOSES", width/2, height/2-200);
      if ( key == ENTER)
      {
        rectMode(CENTER);
        screen = 0;
        HP1= 1500;
        HP2 = 1500;
        sel1= 0;
        sel2= 0;
        turn = 0;
        MP1 = 0;
        MP2 = 0;
      }
    }
    if (HP2 <= 0)
    {
      textSize(25);
      text ("PLAYER 2 LOSES", width/2, height/2-200);
      if ( key == ENTER)
      {
        rectMode(CENTER);
        screen = 0;
        HP1= 1500;
        HP2 = 1500;
        sel1= 0;
        sel2= 0;
        turn = 0;
        MP1 = 0;
        MP2 = 0;
      }
    }
  }
}