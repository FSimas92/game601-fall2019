class Player 
{
  
  float posX, posY, speed, bodyW, bodyH, sideW, sideH;
  
  Player(float tempPosX, float tempPosY, float tempBodyW, float tempBodyH, float tempSideW, float tempSideH, float tempSpeed) 
  {
    posX = tempPosX;
    posY = tempPosY;
    bodyW = tempBodyW;
    bodyH = tempBodyH;
    sideW = tempSideW;
    sideH = tempSideH;
    speed = tempSpeed;
  }
  
  void playerMovement() 
  {
    if(mouseY > posY){
      posY = posY + speed;
    } else if (mouseY < posY){
      posY = posY - speed;
    }
    
  }

  void display()
  {
    rectMode(CENTER);
    
    //main body of ship
    stroke(100);
    fill(255);
    rect(posX, posY, bodyW, bodyH);
    
    //left deck of ship
    rect(posX, posY - (bodyH/2 + sideH/2), sideW, sideH);
    
    //right deck of ship
    rect(posX, posY + (bodyH/2 + sideH/2), sideW, sideH);
  }
}
