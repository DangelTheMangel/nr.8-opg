//vaiabler
float Glasset = 0;
boolean fyldGop = false;
int maand = 0;
boolean maandb = false;

int fuld = 0;
//billeder
PImage haand, Glas;
void setup() {
  frameRate(9);
  size(800, 800);

  //loader billederne

  haand = loadImage("h.png");
  Glas = loadImage("g1.png");
}

void draw() {

  if (Glasset < 0) {
    Glasset = 0;
  }
  if (Glasset < 140 && fyldGop == true) {
    for (int i = 0; i < 30; i++) {
      fyldop();
    }
  }

  if (Glasset >140) {
    Glasset = 140;
    fyldGop = false;
  }


  clear();
  background(255);
  fill(255);
  rect(20, 20, 40, 40);
  rect(80, 20, 40, 40);
  //ansigt
  fill(255-fuld, 255, 255);
  ellipse(width/2+50, height/2-200, 200, 200);
  fill(255);
  ellipse(width/2+10, height/2-200, 50, 50);
  ellipse(width/2+100, height/2-200, 50, 50);
  ellipse(width/2+50, height/2-140, 100, 10+maand);
  //glasset
  fill(242, 187, 38, 50);
  rect(width/2, height/2-Glasset, 100, Glasset+1);
  rect(width/2-2, height/2-150, 104, 150);
  fill(255-fuld, 255, 255);
  ellipse(width/2, height/2-50, 90, 130);
}



void mousePressed() {
  boolean knaptrykket = mouseX < 60 && mouseX > 20 && mouseY > 20 && mouseY < 60; 
  if (knaptrykket) {
    println(1);
    fyldGop = true;
  }

  // the ball can get a boost to yspped
  boolean andenknaptrykket = mouseX < 120 && mouseX > 80 && mouseY > 20 && mouseY < 60; 
  if (andenknaptrykket) {
    println(2);

    Glasset -= 10;
    drikke();
  }

  // the ball can get a boost to xspeed
  boolean tk = mouseX < 160 && mouseX > 140 && mouseY > 20 && mouseY < 60; 
  if (tk) {
    println(3);
  }
  // the ball can get a random boost
  boolean fk = mouseX < 220 && mouseX > 200 && mouseY > 20 && mouseY < 60; 
  if (fk) {
    println(4);
  }
}

void fyldop() {
  Glasset += 5;
}

void drikke() {
  maand = 50;

  maand = 40;
}
