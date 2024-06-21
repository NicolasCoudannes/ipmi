PImage img;
int x1, x2, x3, x4, y1, y2, y3, y4, c, c2, c3, l, n, n2, n3, xr, yr;
boolean cam;

//Link al video: https://www.youtube.com/watch?v=AxZJxgBz_00

void setup() {
  size(800,400);
  img = loadImage("opar.jpeg");
  x1 = 470;
  y1 = 70;
  cam = false;
}

void draw() {
  image(img,0,0);
  xr = 400;
  yr = 0;
  if (n == 0 || n == 255 && !cam) {
      cambiarn();
      cam = true;
  }
  for (int i = 0; i<4; i++) {
    for (int k = 0;k<4;k++) {
      if (n == 0 ||n == 255) {
        fill(n,n,n);
      }
      else {
        fill(n,n2,n3);
      }
      square(xr, yr,100);
      if (n == 0 || n == 255) {
        cambiarn();
      }
      xr+= 100;
    }
    if (n == 0 || n == 255) {
      cambiarn();
    }
    xr = 400;
    yr+= 100;
  }
  
  x1 = 400;
  x2 = 450;
  x3 = 500;
  x4 = 450;
  y1 = 50;
  y2 = 0;
  y3 = 50;
  y4 = 100;
  for (int i = 0;i<4;i++) {
    for (int j = 0; j<4;j++) {
      if (c == 0 ||c == 255) {
        fill(c,c,c);
      }
      else {
        fill(c,c2,c3);
      }
      quad(retornarX(x1),retornarY(y1),retornarX(x2),retornarY(y2),retornarX(x3),retornarY(y3),retornarX(x4),retornarY(y4));
      if (c == 0 || c == 255) {
        cambiar();
      }
      x1 += 100;
      x2 += 100;
      x3 += 100;
      x4 += 100;
    }
    if (c == 0 || c == 255) {
        cambiar();
     }
    x1 = 400;
    x2 = 450;
    x3 = 500;
    x4 = 450;
    y1 += 100;
    y2 += 100;
    y3 += 100;
    y4 += 100;
  }
  
  x1 = 400;
  x2 = 450;
  x3 = 500;
  x4 = 450;
  y1 = 50;
  y2 = 0;
  y3 = 50;
  y4 = 100;
  for (int i = 0;i<4;i++) {
    for (int j = 0; j<4;j++) {
      if (c == 0 ||c == 255) {
        fill(c,c,c);
      }
      else {
        fill(c,c2,c3);
      }
      quad(x1,y1,x2,y2,x3,y3,x4,y4);
      if (c == 0 || c == 255) {
        cambiar();
      }
      x1 += 100;
      x2 += 100;
      x3 += 100;
      x4 += 100;
    }
    if (c == 0 || c == 255) {
        cambiar();
     }
    x1 = 400;
    x2 = 450;
    x3 = 500;
    x4 = 450;
    y1 += 100;
    y2 += 100;
    y3 += 100;
    y4 += 100;
  }



  if (mousePressed) {
    randcolor(c, n);
  }
  fill(0);
  square(10,10,40);
  fill(255);
  textSize(15);
  text("reset", 15, 30);
  if (mousePressed && mouseX > 10 && mouseX < 50 && mouseY > 10 && mouseY < 50) {
    reset();
  }
}

float retornarX(int x) {
  return x + mouseX * 0.1 - 50;
}
float retornarY(int y) {
  return y + mouseY * 0.1 - 15;
}

void cambiar() {
  if (c == 0) {
    c = 255;
  }
  else {
    c = 0;
  }
}

void cambiarn() {
  if (n == 0) {
    n = 255;
  }
  else {
    n = 0;
  }
}

void reset() {
  c = 0;
  n = 0;
}

void randcolor(int c_ant, int n_ant) {
  c = int(random(255));
  while (c_ant == c) {
    c = int(random(255));
  }
  c2 = int(random(255));
  while (c_ant == c2) {
    c2 = int(random(255));
  }
  c3 = int(random(255));
  while (c_ant == c3) {
    c3 = int(random(255));
  }
  n = int(random(255));
  while (n_ant == n) {
    n = int(random(255));
  }
  n2 = int(random(255));
  while (n_ant == n2) {
    n2 = int(random(255));
  }
  n3 = int(random(255));
  while (n_ant == n3) {
    n3 = int(random(255));
  }
  
}
