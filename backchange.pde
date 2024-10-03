float x,y,d; int frames = 0, c;

void setup(){
  size(600,600);
  x = y = 300;  d = 5; c = 160;
}
void draw(){
  background(255, c, 0);
  if(c == 240) c=0;
  frames++;
  if((frames / 60) == 2){
    c += 80;
    frames = 0;}
  crying(x,y,d);
}
void mouseClicked(){
  x = mouseX;    y = mouseY;
}
void keyPressed(){
  if(key == 'a') x -= 5;
  else if(key == 'd') x += 5;
  else if(key == 'w') y -= 5;
  else if(key == 's') y += 5;
}
void crying(float x, float y, float d){
  fill(#FBCEB1);
circle(x, y, 22*d); // face
fill(0);
circle(x-6*d, y, 6*d); // left eye
circle(x+6*d, y, 6*d); // right eye
fill(255,0,0);
arc(x, y+4*d, 6*d, 2*d, PI, 2*PI); // mouth
fill(255);
circle(x-7*d, y-d, 2*d); // left tear
circle(x+5*d, y-d, 2*d); // right tear
rect(x-3*d, y+4*d, 6*d, d); // teeth
}
