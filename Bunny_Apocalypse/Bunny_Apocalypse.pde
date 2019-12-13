int carrotsOut = 0;

void setup(){
  
  size(1000,700);
  smooth();
  frameRate(30);
  background(153, 255, 204);
}

void draw(){
  
  if (carrotsOut >= 15){
    bunnyMaker();
  }
  
  textSize(32);
  fill(0, 0, 0);
  text("Plant enough carrots to bring on the bunny apocalypse.", (width - 900), (height - 10));
}

void mousePressed(){
  
  //draw the carrot
  stroke(0);
  fill(255, 153, 51);
  triangle(mouseX, mouseY, mouseX-25, mouseY-100, mouseX+25, mouseY-100);
  
  //draw the stem
  stroke(0);
  fill(0, 210, 0);
  rect(mouseX-4, mouseY-130, 8, 30);
  
  carrotsOut = carrotsOut + 1;
}

void bunnyMaker(){
  
  //draw rabbit ears
  fill(255);
  arc(mouseX, mouseY-30, 430, 90, PI, 3 * PI);
  fill(255, 153, 204);
  arc(mouseX, mouseY-30, 370, 40, PI, 3 * PI);
  
  //draw rabbit head
    stroke(0);
    fill(255);
    ellipse(mouseX, mouseY, 200, 200);
    
    //draw rabbit eyes
    stroke(0);
    fill(255);
    ellipse(mouseX-40, mouseY-25, 45, 55);
    ellipse(mouseX+40, mouseY-25, 45, 55);
    //pupils
    fill(random(0, 255), random(0, 255), random (0, 255));
    ellipse(mouseX-40, mouseY-25, 23, 27);
    ellipse(mouseX+40, mouseY-25, 23, 27);
    
    //draw mouth
    fill(255, random(0, 204), random(127, 229));
    ellipse(mouseX, mouseY+50, 80, 40);
}

void keyPressed(){
  background(153, 255, 204);
  carrotsOut = 0;
}
