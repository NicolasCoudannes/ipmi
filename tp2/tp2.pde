PImage img1, img2, img3, img4;
PFont f;
int x, x2, x4, emp, time;
float x3;
boolean ok;

void setup() {
  size(640, 480);
  img1 = loadImage("obra1 (1).jpg");
  img2 = loadImage("REFLEJODEDOSNIÑOS (1).jpg");
  img3 = loadImage("RETRATO (1).jpg");
  img4 = loadImage("GRANINTERIOR(1).jpg");
  f = createFont("Ticketing", 16, true);
  x = width;
  x2 = 0;
  x3 = 1;
  x4 = 1;  
  ok = false;
}

void reset() {
  x = width;
  x2 = 0;
  x3 = 1;
  x4 = 1;
}

void draw() {
  fill(255);
  square(10,20,30);
  if (mousePressed) {
    if (mouseX > 10 && mouseX < 40 && mouseY > 20 && mouseY < 50){
       ok = true;
       emp = millis();
       reset();
    }
  }
  if (ok == true) {
    presentar();
    if (time > 30000) {
      ok = false;
    }
  }
}

void presentar() { 
  background(0);
  if (time > 0 && time < 8000) {
    image(img1, 0, 0);
    textFont(f, 36);
    textAlign(LEFT);
    fill(0);
    text("Refik anadol", x, 80);
    text("Machine Hallucinations – Coral Dreams", x, 400);
    x = x-2;
  }
  if (time > 8000 && time < 16000) {
    image(img2, 0, 0);
    textFont(f, 36);
    fill(255);
    text("Lucian Freud", x2, 30);
    text("Reflejo con dos niños(Autorretrato)", 30, x2);
    x2 = x2+1;
     
  }
  if (time > 16000 && time < 24000) {
    image(img3, 0, 0);
    textFont(f, x3);
    fill(255);
    text("Lucian Freud", 30, 150);
    text("Retraro de hombre", 30, 100);
    if (x3 < 50) {
      x3 = x3 + 0.09;
       
    }
  }
  if (time > 24000 && time < 30000) {
    image(img4, 0, 0);
    textFont(f, 36);
    fill(0, 0, 0, x4);
    text("Lucian Freud", 10, 35);
    text("Gran interior paddington", 10, 460);
    x4 = x4+2; 
  }
  time = millis() - emp;
}
