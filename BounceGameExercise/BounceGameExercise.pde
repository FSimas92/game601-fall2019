float x = 0;
float y = 0;
int xspeed = 2;
int yspeed = 2;
int score = 0;

float colorR = 50;
float colorG = 30;
float colorB = 120;
float colorChange = 2;

int timesFlashed = 0;

void setup(){
  size(800,600);
  smooth();
}

void draw(){
  background(colorR, colorG, colorB);
  
  colorR = colorR + colorChange;
  colorG = colorG + colorChange;
  colorB = colorB + colorChange;
  
  if(colorR > 255 || colorR < 0){
    colorChange = colorChange * -1;
  }
  
  if(colorG > 255 || colorG < 0){
    colorChange = colorChange * -1;
  }
  
  if(colorB > 255 || colorB < 0){
    colorChange = colorChange * -1;
  }
  
  x = x + xspeed;
  y = y + yspeed;
  
  if ((x > width) || (x < 0)){
    xspeed = xspeed * -1;
  }
  
  if ((y > height) || (y < 0)){
    yspeed = yspeed * -1;
  }
  
  stroke (0);
  fill (175);
  ellipse (x,y,40,40);
  
  textSize(40);
  fill(0);
  text(score, width - 40, 40);
}
  
void mousePressed(){
  if ((mouseX > x - 20) && (mouseX < x + 20) && (mouseY > y - 20) && (mouseY < y + 20)){
    x = random(0, width);
    y = random(0, height);
    score = score + 1;
    flashingScreen();
    colorR = random(0,255);
    colorG = random(0,255);
    colorB = random(0,255);
    while (timesFlashed <=1000){
      flashingScreen();
    }
    timesFlashed = 0;
  }
}

void flashingScreen(){
  background(0);
  background(255);
  timesFlashed = timesFlashed + 1;
}
