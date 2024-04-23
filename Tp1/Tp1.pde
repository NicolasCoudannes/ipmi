PImage liminal;

void setup(){
  
size (800, 400);
liminal = loadImage("jeff.jpg");


}

void draw(){

println(mouseX +","+ mouseY);
pushStyle();
fill(#F5DFAF);
smooth();
strokeWeight(2);
strokeJoin(BEVEL);  //quiero poner strokeJoin(ROUND); pero no me lo redondea asi que lo dejo ahi 
rect(462,39,300,300);
popStyle();

ellipse(564,154,60,60);
ellipse(668,154,60,60);
pushStyle();
fill(0);
ellipse(566,146,30,30);
ellipse(665,146,30,30);
popStyle();

pushStyle();
fill(#F5DFAF);
bezier(611,185,601,183,604,197,612,195);
popStyle();


smooth();
strokeWeight(2);
strokeCap(ROUND);  //quiero poner strokeJoin(ROUND); pero no me lo redondea asi que lo dejo ahi 
line(589,233,636,233);



pushStyle();
fill(#795823);
bezier(761,189,713,140,730,71,761,39);  //no se como poner las curvas y poder rellenarla de donde quiero hasta donde termina
bezier(761,39,710,95,613,93,462,90);
popStyle();


pushStyle();
stroke(#795823);
fill(#795823);
triangle(462,90,462,39,748,41);  //como dije antes no se como hacer q las curvas ocupen mas relleno para poder pintarlas
popStyle();
image(liminal, 0, 0, 400,400);
}
